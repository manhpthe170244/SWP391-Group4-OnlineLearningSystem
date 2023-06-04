/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.UserDAO;
import entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
public class ResetPasswordController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final UserDAO userDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("resetPassword.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        final String secretKey = "a/f/gr'fw=q-=d-";
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO ud = new UserDAO();

        User checkEmail = ud.getUserByEmail(email);

        User checkEmailPassword = ud.login(email, AES.encrypt(password, secretKey));

        if (checkEmail == null) {
            request.setAttribute("err", "Email does not exist!");
            request.getRequestDispatcher("resetPassword.jsp").forward(request, response);
            return;
        }

        if (checkEmailPassword == null) {
            request.setAttribute("err", "Wrong old password!");
            request.getRequestDispatcher("resetPassword.jsp").forward(request, response);
            return;
        }

        boolean f = ud.changePass(checkEmail.getUserEmail(),AES.encrypt("defaultpassword123@", secretKey));

        if (!f) {
            request.setAttribute("err", "Wrong when Reset password!");
            request.getRequestDispatcher("resetPassword.jsp").forward(request, response);
            return;
        }

        request.setAttribute("success", "Sucess");
        request.getRequestDispatcher("resetPassword.jsp").forward(request, response);

    }
}
