/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.CourseContent;


import dao.QuizDAO;
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
public class UpdateQuizStatus extends HttpServlet {
   
   
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int QuizId = Integer.parseInt(request.getParameter("Quizid"));
        int updateStatus = Integer.parseInt(request.getParameter("updateStatus"));
        QuizDAO qd = new QuizDAO();
        qd.SetQuizStatus(updateStatus, QuizId);
    }

    
}
