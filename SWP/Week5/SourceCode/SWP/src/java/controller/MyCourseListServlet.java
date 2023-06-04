/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CourseDAO;
import dao.SubjectDAO;
import entity.Course;
import entity.ManageCourse;
import entity.Subject;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Vector;
import java.util.stream.Collectors;

/**
 *
 * @author FPT
 */
public class MyCourseListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User currUser = (User) request.getSession().getAttribute("currUser");
        if (currUser == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        CourseDAO cd = new CourseDAO();
        SubjectDAO sd = new SubjectDAO();


        String subIdRaw = request.getParameter("sub_id");
        // Search name
        String search = request.getParameter("search");

        // Sort type
        HttpSession session = request.getSession();
        String sort_type = request.getParameter("sort_type");
        System.out.println(sort_type);
        if (sort_type == null) {
            if (session.getAttribute("sort_type") != null) {
                sort_type = (String) session.getAttribute("sort_type");
            } else {
                sort_type = "recent";
            }
        }
        session.setAttribute("sort_type", sort_type);
        

        List<Subject> subjectList = sd.getAll();
        request.setAttribute("subjectList", subjectList);

        Vector<ManageCourse> myCourses = cd.getmyCourseList(currUser.getUserId(), subIdRaw, search, sort_type);
        request.setAttribute("myCourses", myCourses);

        

        request.getRequestDispatcher("MyCourseList.jsp").forward(request, response);

    }

}
