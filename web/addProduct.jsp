<%-- 
    Document   : addProduct
    Created on : 17-Jul-2019, 9:09:39 PM
    Author     : Burhanuddin
--%>
<%@include file="Header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="main2.css">
        <title>Adding Product</title>
    </head>
    <h3><a href="index.jsp" style="text-align: Right; color: White; padding-left: 85%">Logout</a></h3>
    <body style="text-align: center;">
        <form action="ProductAdd" method="get">
            <table align="center" class="table2">
                <tr>
                    <td><label>Code</label></td>
                    <td><input type="text" name="code"></td>                                
                </tr>
                <tr>
                    <td><label>Description</label></td>
                    <td><input type="text" name="desc"></td>
                </tr>
                <tr>
                    <td><label>Price</label></td>
                    <td><input type="text" name="price"></td>
                </tr>           
                <tr>
                    <td colspan="3"><input type="submit" value="Add">
                        <input type="reset" value="Reset"></td> 
                    <td><a href="ProductsList">List Products</a></td>
                </tr>
            </table>
        </form>
        
        <marquee scrollamount="10" direction="left" behavior="scroll">
        <h4>Welcome to Vora Products! We are Happy to help you.</h4>
        </marquee>
    </body>
    <%@include file="Footer.jsp" %>
</html>
