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
        String sortType = request.getParameter("sortType");
        if(sortType==null){
            sortType = "most";
        }
        HttpSession session = request.getSession();
        session.setAttribute("sort_type", sortType);
        UserDAO ud = new UserDAO();
        CourseDAO cs = new co
        Map<String, Integer> UserOnProvinceMap = ud.getDashBoardDataPop(sortType);
        Map<String, Integer> CourseParticipantMap = ud.getDashBoardDataPop(sortType);
        int i = 0 ;
        String key[] = new String[5];
        Integer values[] = new Integer[5];
        for (Map.Entry<String, Integer> entry : UserOnProvinceMap.entrySet()) {
            key[i] = entry.getKey();
            values[i] = entry.getValue();    
            i++;
        }
//        for(int j = 0; j < 5; j++){
//            out.println(key[j] + " " + values[j]);
//        }
        request.setAttribute("key", key);
        request.setAttribute("values", values);
        request.getRequestDispatcher("DashBoard.jsp").forward(request, response);

    } 

    
}
