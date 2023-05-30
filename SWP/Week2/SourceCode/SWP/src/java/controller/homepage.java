package controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import dao.CourseDAO;
import dao.PostDAO;
import dao.SliderDAO;
import dao.SubjectDAO;
import entity.Course;
import entity.Post;
import entity.Slider;
import entity.Subject;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

/**
 *
 * @author ACER
 */
public class homepage extends HttpServlet {

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
        
        // Get sub_id parameter from jsp
        String subIdString = request.getParameter("sub_id");
        int sub_id;
        if (subIdString == null) {
            sub_id = 2;
        } else {
            sub_id = Integer.parseInt(subIdString);
        }

        // Get course list from database
        CourseDAO courseDAO = new CourseDAO();
        // Select from course list with sub_id
        List<Course> courseList = courseDAO.getAll().stream().filter(s -> s.getSub_id() == sub_id).collect(Collectors.toList());
        request.setAttribute("courseList", courseList);

        // Get subject list from database
        SubjectDAO subjectDAO = new SubjectDAO();
        List<Subject> subjectList = subjectDAO.getAll();
        request.setAttribute("subjectList", subjectList);

        // Get post list from database
        PostDAO postDAO = new PostDAO();
        List<Post> postList = postDAO.getAll();
        // Sort post list by date
        postList.sort(Comparator.comparing(Post::getPost_date).reversed());
        request.setAttribute("postList", postList);
        
        SliderDAO sliderDAO = new SliderDAO();
        List<Slider> sliderList = sliderDAO.getAll();
        request.setAttribute("sliderList", sliderList);

        request.getRequestDispatcher("HomePage.jsp").forward(request, response);
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
        processRequest(request, response);
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
