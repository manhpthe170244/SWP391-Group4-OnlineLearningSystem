/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.CommonFeature;

import dao.PricePackageDAO;
import entity.Price_Package;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Vector;

/**
 *
 * @author FPT
 */
public class PricePackageSubcription extends HttpServlet {
   


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        PricePackageDAO ppd = new PricePackageDAO();
        Vector<Price_Package> packageList = ppd.getAll();
        request.setAttribute("packageList", packageList);
        request.getRequestDispatcher("PackageSubcribe.jsp").forward(request, response);
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       
    }


}
