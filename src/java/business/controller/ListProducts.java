/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business.controller;

import business.data.ProductIO;
import business.model.Product;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Burhanuddin
 */
public class ListProducts extends HttpServlet {
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //File file = new File("../../../Web Pages/WEB-INF/product.txt");
        ProductIO po=new ProductIO();
        
        String path=getServletContext().getRealPath(getServletContext().getInitParameter("path"));
        po.init(path);
        
        List<Product> plist=new ArrayList<Product>();
        plist=po.selectProducts();
        request.setAttribute("plist", plist);
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher view = 
        request.getRequestDispatcher("products.jsp"); 
        view.forward(request, response);
        
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
