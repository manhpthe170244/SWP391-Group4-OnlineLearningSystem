/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.UserDAO;
import entity.User;
import java.io.*;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.Part;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Date;

import java.time.LocalDate;

/**
 *
 * @author FPT
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5,
        maxRequestSize = 1024 * 1024 * 5 * 5)
public class registerServlet extends HttpServlet {

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
            out.println("<title>Servlet registerServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet registerServlet at " + request.getContextPath() + "</h1>s");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        String fullname = request.getParameter("fullname");

        Part filePart = request.getPart("userImg");
        String saveDirectory = "E:/swp391/SWP391_Project/SWP/Week2/SourceCode/SWP/web/img/";
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        String filePath = saveDirectory + fileName;
        InputStream fileContent = filePart.getInputStream();
        String sqlFilePath = "img/" + fileName;


        String gender = request.getParameter("gender");
        String dobRaw = request.getParameter("dob");
        Date dob = Date.valueOf(dobRaw);
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String role = request.getParameter("role");
        LocalDate ld = java.time.LocalDate.now();
        UserDAO ud = new UserDAO();
        Date userTime = Date.valueOf(ld);
        if (ud.getUserByEmail(email) != null) {
            out.println("Sign Up Failed ! The email has been registered.");
            request.getRequestDispatcher("Register.jsp").include(request, response);
        } else {
            Files.copy(fileContent, Paths.get(filePath));
            User newUser = new User(0, email, password2, fullname, sqlFilePath, Integer.parseInt(gender), dob, phone, address, "0", Integer.parseInt(role), userTime, true, 0);
            ud.addNewUser(newUser);
            response.sendRedirect("homepage");
        }

    }

}
