/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CourseDAO;
import dao.SubjectDAO;
import entity.Course;
import entity.Subject;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Vector;
import java.util.stream.Collectors;

/**
 *
 * @author ACER
 */
public class courseList extends HttpServlet {

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
            out.println("<title>Servlet courseList</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet courseList at " + request.getContextPath() + "</h1>");
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

        HttpSession session = request.getSession();

        // Search name
        String search = request.getParameter("search");

        // Sort type
        String sort_type = request.getParameter("sub_id");
        if (sort_type == null) {
            if (session.getAttribute("sort_type") != null) {
                sort_type = (String) session.getAttribute("sort_type");
            } else {
                sort_type = "recent";
            }
        }
        session.setAttribute("sort_type", sort_type);

        // Sub_id to display
        String subIdString = request.getParameter("sub_id");
        int sub_id;
        if (subIdString != null) {
            sub_id = Integer.parseInt(subIdString);
        } else {
            if (session.getAttribute("sub_id") != null) {
                sub_id = (int) session.getAttribute("sub_id");
            } else {
                sub_id = 1;
            }
        }

        session.setAttribute("sub_id", sub_id);

        // Current page display
        String currentPageString = request.getParameter("currentPage");
        int currentPage;
        if (currentPageString == null) {
            currentPage = 1;
        } else {
            currentPage = Integer.parseInt(currentPageString);
        }

        int recordsPerPage = 9;

        CourseDAO courseDAO = new CourseDAO();
        Vector<Course> courseToDisplay = new Vector<>();

        SubjectDAO subjectDAO = new SubjectDAO();
        List<Subject> subjectList = subjectDAO.getAll();
        PrintWriter out = response.getWriter();

        request.setAttribute("subjectList", subjectList);

        List<Course> courseList;

        // Get courseList by search and sub_id
        if (search == null) {
            courseList = courseDAO.getAll().stream().filter(s -> s.getSub_id() == sub_id).collect(Collectors.toList());
        } else {
            courseList = courseDAO.searchByName(search).stream().filter(s -> s.getSub_id() == sub_id).collect(Collectors.toList());
        }

        // Sort courseList by name
        if (sort_type.compareTo("name") == 0) {
            Collections.sort(courseList, new Comparator<Course>() {
                @Override
                public int compare(Course c1, Course c2) {
                    return c1.getCourse_name().compareTo(c2.getCourse_name());
                }
            });
        }
        // Sort courseList by recent
        else if(sort_type.compareTo("recent") == 0){
            Collections.sort(courseList, new Comparator<Course>() {
                @Override
                public int compare(Course c1, Course c2) {
                    return c1.getLast_update().compareTo(c2.getLast_update());
                }
            });
            Collections.reverse(courseList);
        }

        for (int i = recordsPerPage * (currentPage - 1); i < recordsPerPage * currentPage && i < courseList.size(); i++) {
            courseToDisplay.add(courseList.get(i));
        }

        int totalRecords = courseList.size();
        int totalPages = (int) Math.ceil((double) totalRecords / recordsPerPage);

        request.setAttribute("courseToDisplay", courseToDisplay);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("currentPage", currentPage);

        RequestDispatcher rd = request.getRequestDispatcher("CourseList.jsp");
        rd.forward(request, response);
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
