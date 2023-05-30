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
import java.util.regex.Pattern;
import javax.crypto.*;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

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
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        final String secretKey = "a/f/gr'fw=q-=d-";
        String email = request.getParameter("email");
        Pattern emailRegex = Pattern.compile("^(?=.{1,64}@)[A-Za-z0-9_-]+(\\.[A-Za-z0-9_-]+)*@"
                + "[^-][A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$");
        String emailerr = "";
        if (!emailRegex.matcher(email).find()) {
            emailerr = "Invalid Email !";
            request.setAttribute("emailerr", emailerr);
        }
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        String passworderr = "";
        if (!password1.equals(password2)) {
            passworderr = "The re-entered password does not match the first one !";
            request.setAttribute("passworderr", passworderr);
        }
        String encryptedPassword = AES.encrypt(password2, secretKey);
        String fullname = request.getParameter("fullname");
        Part filePart = request.getPart("userImg");
        String saveDirectory = "E:/swp391/SWP391_Project/SWP/Week3/SourceCode/SWP/web/img/";
        String fileName;
        if (filePart == null) {
            fileName = "tempAvatar.jpg";
        } else {
            fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        }
        String filePath = saveDirectory + fileName;
        InputStream fileContent = filePart.getInputStream();
        String sqlFilePath = "img/" + fileName;
        String gender = request.getParameter("gender");
        String dobRaw = request.getParameter("dob");
        Date dob = Date.valueOf(dobRaw);
        Pattern phoneRegex = Pattern.compile("(84|0[3|5|7|8|9])+([0-9]{8})\\b");
        String phone = request.getParameter("phone");
        String phoneErr = "";
        if (!phoneRegex.matcher(phone).find()) {
            phoneErr = "Invalid phone number!";
            request.setAttribute("phoneErr", phoneErr);
        }
        String address = request.getParameter("address");
        String role = request.getParameter("role");
        LocalDate ld = java.time.LocalDate.now();
        UserDAO ud = new UserDAO();
        Date userTime = Date.valueOf(ld);
        if (!phoneErr.isEmpty() || !emailerr.isEmpty() || !passworderr.isEmpty()) {
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        } else if (ud.getUserByEmail(email) != null) {
            request.setAttribute("duplicateEmailErr", "Register failed, Duplicated email!");
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        } else {
            Files.copy(fileContent, Paths.get(filePath));
            User newUser = new User(0, email, encryptedPassword, fullname, sqlFilePath, Integer.parseInt(gender), dob, phone, address, "0", Integer.parseInt(role), userTime, true, 0);
            ud.addNewUser(newUser);
            response.sendRedirect("homepage");
        }
    }

}
