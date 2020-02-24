<%-- 
    Document   : products
    Created on : 17-Jul-2019, 8:57:01 PM
    Author     : Burhanuddin
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="business.model.Product"%>
<%@include file="Header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="main2.css">
        <title>Product List</title>
    </head>
    <h3><a href="index.jsp" style="text-align: Right; color: White; padding-left: 85%">Logout</a></h3>
    <center>
        
    <body>
        
        <table class="table1">
            
            <tr>
                <th>Code</th>
                <th>Description</th>
                <th>Price</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            
            <%         
              ArrayList plist=(ArrayList)request.getAttribute("plist");
              Product p[]=new Product[plist.size()];
              for(int i=0;i<plist.size();i++)
              {
              p[i]=(Product)plist.get(i);
            %>
            
            <tr>
                <td><% out.print(p[i].getCode()); %></td>
                <td><% out.print(p[i].getDescription()); %></td>
                <td><% out.print(p[i].getPrice()); %></td>
                <td><a href="ProductUpdate?code=<% out.print(p[i].getCode());%>
                       &desc=<% out.print(p[i].getDescription()); %>
                       &price=<% out.print(p[i].getPrice()); %>">Edit</a></td>  
                <td><a href="delProduct.jsp?code=<% out.print(p[i].getCode());%>
                       &desc=<% out.print(p[i].getDescription()); %>
                       &price=<% out.print(p[i].getPrice()); %>">Delete</a></td>
            </tr>
            
            <% }%>
        </table>
        
        <br>
        
        <a href="addProduct.jsp"><button>Add Product</button></a> 
        <a href="index.jsp"><button>Back</button></a>
        <marquee scrollamount="10" direction="left" behavior="scroll">
        <h4> Welcome to Vora Products! We are Happy to help you. </h4>
        </marquee>
    </body>
    <%@include file="Footer.jsp" %>
    </center>
</html>
