/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.MarketingFeature;

import dao.CourseDAO;
import dao.SubscriptionDAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Map;

/**
 *
 * @author admin
 */
public class Subscription extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String sortTypePop = request.getParameter("sortTypePop");
        if (sortTypePop == null) {
            sortTypePop = "most";
        }
        HttpSession session = request.getSession();
        session.setAttribute("sort_type", sortTypePop);
        SubscriptionDAO sub = new SubscriptionDAO();
        Map<String, Integer> SubscriptionAtPackage = sub.getSubscriptionDataPop(sortTypePop);
        int i = 0;
        String key[] = new String[SubscriptionAtPackage.size()];
        Integer values[] = new Integer[SubscriptionAtPackage.size()];
        for (Map.Entry<String, Integer> entry : SubscriptionAtPackage.entrySet()) {
            key[i] = entry.getKey();
            values[i] = entry.getValue();
            
            i++;
        }
        request.setAttribute("key", key);
        request.setAttribute("values", values);
        request.getRequestDispatcher("Subscription.jsp").forward(request, response);

    }

}
