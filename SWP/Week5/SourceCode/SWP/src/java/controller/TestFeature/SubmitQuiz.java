/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.TestFeature;

import dao.QuesResultDAO;
import dao.QuizDAO;
import dao.QuizResultDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Enumeration;
import java.util.Vector;
import java.sql.Timestamp;

/**
 *
 * @author ACER
 */
public class SubmitQuiz extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SubmitQuiz</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SubmitQuiz at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        QuesResultDAO quesResultDAO = new QuesResultDAO();
        QuizResultDAO quizResultDAO = new QuizResultDAO();
        QuizDAO quizDAO = new QuizDAO();
        
        Enumeration<String> paramNames = request.getParameterNames();
        // Get list of answers
        Vector<String> answers = new Vector<>();
        // Get list of flags
        Vector<Boolean> flags = new Vector<>();

        while (paramNames.hasMoreElements()) {
            String paramName = paramNames.nextElement();
            if (paramName.startsWith("answer")) {
                String answer = request.getParameter(paramName);
                answers.add(answer);
                // Do something with the answer
            }
            if (paramName.startsWith("flag")){
                Boolean flag = Boolean.parseBoolean(request.getParameter(paramName));
                flags.add(flag);
            }
        }
        
        // Get user_id
        int user_id = 0;
        Cookie[] cookies = request.getCookies();
        
        // Get quiz_id
        int quiz_id = Integer.parseInt(request.getParameter("quiz_id"));

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("currUserId")) {
                    user_id = Integer.parseInt(cookie.getValue());
                }
            }
        }
        
        // Get start and finish time
        String start_time_string = request.getParameter("start_time");
        Timestamp start_time = Timestamp.valueOf(start_time_string);
        Timestamp end_time = new Timestamp(System.currentTimeMillis());
        
        // Get attempt number
        int maxAttempt = quizResultDAO.getMaxAttempByUserIdAndQuizId(user_id, quiz_id);
        // Caculate mark
        
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SubmitQuiz</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> Start time:" + start_time + "</h1>");
            out.println("<h1> End time:" + end_time + "</h1>");
            out.println("<h1> Attempt:" + maxAttempt + "</h1>");
            for(int i = 0; i < answers.size(); i++){
                out.println("<h1>Answer: " + answers.get(i) + " " + flags.get(i) + "</h1>");
            }  
            out.println("</body>");
            out.println("</html>");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
