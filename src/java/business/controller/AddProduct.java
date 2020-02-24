/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business.controller;

import business.data.ProductIO;
import business.model.Product;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author Burhanuddin
 */
public class AddProduct extends HttpServlet 
{
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
            throws ServletException, IOException 
    {
        String code = request.getParameter("code");
        String desc = request.getParameter("desc");
        String price = request.getParameter("price");
        
        Product p1=new Product();
        p1.setCode(code);
        p1.setDescription(desc);
        p1.setPrice(Double.parseDouble(price));
        ProductIO add=new ProductIO();
        add.insertProduct(p1);
        
        // Create a session object
        HttpSession session = request.getSession(false);
        if (session == null)session = request.getSession();

        // Adding the Attributes to session. 
        //session.setAttribute("c",code);
        //session.setAttribute("d", desc);
        //session.setAttribute("p", price);

        //request.setAttribute("p1", p1);
        List<Product> plist=new ArrayList<Product>();
        plist=add.selectProducts();
        request.setAttribute("plist", plist);
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher view = 
        request.getRequestDispatcher("products.jsp"); 
        view.forward(request, response);
        }
}
