/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CourseDAO;
import dao.GenderDAO;
import dao.RoleDAO;
import entity.Course;
import entity.Gender;
import entity.Role;
import entity.User;
import entity.ManageCourse;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Vector;

/**
 *
 * @author FPT
 */
public class PersonalAccountServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        User currUser = (User) request.getSession().getAttribute("currUser");
        GenderDAO gd = new GenderDAO();
        RoleDAO rd = new RoleDAO();
        CourseDAO cd = new CourseDAO();
        if (currUser == null) {
            response.sendRedirect("login.jsp");
        } else {
            Gender g = gd.getGenderById(currUser.getGenderId());
            Role r = rd.getRoleById(currUser.getRoleId());
            Vector<ManageCourse> currUserCourses = cd.getmyCourseList(currUser.getUserId());
            request.setAttribute("currUserCourses", currUserCourses);
            request.setAttribute("currUser", currUser);
            request.setAttribute("gender", g);
            request.setAttribute("role", r);
            request.getRequestDispatcher("PersonalAccount.jsp").forward(request, response);
            return;
        }

    }

}
