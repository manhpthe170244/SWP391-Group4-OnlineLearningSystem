/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CourseDAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 *
 * @author FPT
 */
public class DashBoard extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String sortTypePop = request.getParameter("sortTypePop");
        String sortTypePar = request.getParameter("sortTypePar");
        if (sortTypePop == null) {
            sortTypePop = "most";
        }
        if (sortTypePar == null) {
            sortTypePar = "most";
        }
        HttpSession session = request.getSession();
        session.setAttribute("sort_type", sortTypePop);
        UserDAO ud = new UserDAO();
        CourseDAO cd = new CourseDAO();
        Map<String, Integer> UserOnProvinceMap = ud.getDashBoardDataPop(sortTypePop);
        Map<String, Integer> CourseParticipantMap = cd.getDashBoardDataPar(sortTypePar);
        int i = 0;
        int j = 0;
        String key[] = new String[5];
        Integer values[] = new Integer[5];
        String key1[] = new String[5];
        Integer values1[] = new Integer[5];
        for (Map.Entry<String, Integer> entry : UserOnProvinceMap.entrySet()) {
            key[i] = entry.getKey();
            values[i] = entry.getValue();
            i++;
        }
        for (Map.Entry<String, Integer> entry : CourseParticipantMap.entrySet()) {
            key1[j] = entry.getKey();
            values1[j] = entry.getValue();
            out.print(entry.getKey() +" "+ entry.getValue());
            j++;
        }
        request.setAttribute("key1", key1);
        request.setAttribute("values1", values1);
        request.setAttribute("key", key);
        request.setAttribute("values", values);
//        request.getRequestDispatcher("DashBoard.jsp").forward(request, response);

    }

}
