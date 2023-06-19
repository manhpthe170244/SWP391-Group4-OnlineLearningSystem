/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.LessonDAO;
import dao.QuizDAO;
import dao.SectionDAO;
import dao.UserDAO;
import entity.Lesson;
import entity.Section;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Vector;

/**
 *
 * @author admin
 */
public class LessonListController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private LessonDAO lessonDAO = new LessonDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        int user_id = 0;
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("currUserId")) {
                    user_id = Integer.parseInt(cookie.getValue());
                }
            }
        }
        
        if (user_id == 0) {
            response.sendRedirect("login.jsp");
            return;
        }
        UserDAO ud = new UserDAO();
        User currUser = ud.getUserById(user_id);
        int courseId = Integer.parseInt(request.getParameter("Course_id"));
        SectionDAO secDAO = new SectionDAO();
        LessonDAO lesDAO = new LessonDAO();
        QuizDAO quizDao = new QuizDAO();
        Vector<Section> vs = secDAO.getSectionListByCourseId(courseId);
       
        for (Section v : vs) {
           v.setLessonList(lesDAO.getLessonBySectionId(v.getSection_id()));
           v.setQuizList(quizDao.getQuizListBySectionId(v.getSection_id()));
        }
        request.setAttribute("Course_id", courseId);
        request.setAttribute("currUser", currUser);
        request.setAttribute("SectionList", vs);
        request.getRequestDispatcher("lessonList.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

    }

}
