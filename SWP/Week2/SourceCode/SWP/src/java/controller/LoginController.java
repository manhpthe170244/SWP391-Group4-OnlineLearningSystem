/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.UserDAO;
import entity.Gender;
import entity.Role;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class LoginController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final UserDAO userDAO = new UserDAO();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

                request.getRequestDispatcher("login.jsp").forward(request, response);
                
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                UserDAO ud = new UserDAO();
                User userLogin = ud.login(email, password);   
                HttpSession session = request.getSession(true);
                request.getSession().setAttribute("currUser", userLogin); 
                if(userLogin != null) {
                    response.sendRedirect("homepage");
                } else {
                    request.setAttribute("err", "Wrong email or password!");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                    return;
                }
                
                
	}

}
