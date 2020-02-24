<%-- 
    Document   : index
    Created on : 17-Jul-2019, 8:52:51 PM
    Author     : Burhanuddin
--%>
<%@include file="Header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="main2.css">
        <title>Product Maintenance</title>
    </head>
    
    <center>
    <% session.invalidate(); %>
    <body>
        <h2 style="color:Brown">Choose your service from below: </h2>
        <table class="table3">
            <tr>
                <td>
                    <a href="ProductsList">Admin Login Here</a> <!-- Able to Edit & Delete the product -->
                </td>
                <td>
                    <a href="ProductsList">Service Login Here</a> <!-- Able to Edit & Update the product -->
                </td>
                <td>
                    <a href="ProductsList">Customer Login Here</a> <!-- Able to View the products -->
                </td>
            </tr>
        </table>        
    </body>
    
    <marquee scrollamount="10" direction="left" behavior="scroll">
        <h4>Welcome to Vora Products! We are Happy to help you.</h4>
    </marquee>
    
    <%@include file="Footer.jsp" %>
    
    </center>  
</html>
