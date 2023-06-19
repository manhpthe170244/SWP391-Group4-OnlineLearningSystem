/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.CourseContent;

import dao.LessonDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author FPT
 */
public class UpdateLessonStatus extends HttpServlet {
   
    

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int lessonId = Integer.parseInt(request.getParameter("lessonId"));
        int updateStatus = Integer.parseInt(request.getParameter("updateStatus"));
        LessonDAO ld = new LessonDAO();
        ld.SetLessonStatus(updateStatus, lessonId);
    } 

    

}
