/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business.controller;

import business.data.ProductIO;
import business.model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Burhanuddin
 */
public class UpdateProductF extends HttpServlet {
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
        String code = request.getParameter("code");
        String desc = request.getParameter("desc");
        String price = request.getParameter("price");
        
        Product p1=new Product();
        p1.setCode(code);
        p1.setDescription(desc);
        p1.setPrice(Double.parseDouble(price));
        ProductIO add=new ProductIO();
        add.updateProduct(p1);
        
        List<Product> plist=new ArrayList<Product>();
        plist=add.selectProducts();
        
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
