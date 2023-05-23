package controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import dao.UserDAO;
import entity.User;
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
public class ChangePasswordController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final UserDAO userDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("changePassword.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");

        UserDAO ud = new UserDAO();

        User checkEmail = ud.getUserByEmail(email);

        User checkEmailPassword = ud.login(email, oldPassword);

        if (checkEmail == null) {
            request.setAttribute("err", "Email does not exist!");
            request.getRequestDispatcher("changePassword.jsp").forward(request, response);
            return;
        }

        if (checkEmailPassword == null) {
            request.setAttribute("err", "Wrong old password!");
            request.getRequestDispatcher("changePassword.jsp").forward(request, response);
            return;
        }

//        boolean f = ud.changePass(checkEmail.getUserId(), newPassword);
//
//        if (!f) {
//            request.setAttribute("err", "Wrong when Change password!");
//            request.getRequestDispatcher("changePassword.jsp").forward(request, response);
//            return;
//        }

        request.setAttribute("success", "Sucess");
        request.getRequestDispatcher("changePassword.jsp").forward(request, response);

    }

}
