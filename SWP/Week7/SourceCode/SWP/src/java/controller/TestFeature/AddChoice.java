/* 
* Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.TestFeature;

import com.google.gson.JsonObject;
import dao.QuizDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author FPT
 */
@WebServlet(name = "AddChoice", urlPatterns = {"/AddChoice"})
public class AddChoice extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Integer quesId = Integer.parseInt(request.getParameter("quesId"));
        QuizDAO qd = new QuizDAO();
        qd.insertDefaultChoice(quesId);
        int maxChoiceId = qd.retrieveMaxChoiceId();
        JsonObject responseJson = new JsonObject();
        responseJson.addProperty("maxChoiceId", maxChoiceId);
        responseJson.addProperty("defaultChoiceContent", "Nhập nội dung tại đêi");
        response.setContentType("application/json");

// Write the JSON object as the response
        response.getWriter().write(responseJson.toString());
    }
    
    

}