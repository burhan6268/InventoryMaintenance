<%-- 
    Document   : updProduct
    Created on : 19-Jul-2019, 2:32:31 PM
    Author     : Burhanuddin
--%>
<%@include file="Header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="main2.css">
        <title>Product Update</title>
    </head>
    <h3><a href="index.jsp" style="text-align: Right; color: White; padding-left: 85%">Logout</a></h3>
    <body style="text-align: center;">
        
        <form action="ProductUF" method="get">
            
            <table align="center" class="table2">
                
                <% String co=(String)session.getAttribute("code");
                    String code=co.trim();
                    String d=(String)session.getAttribute("desc");
                    String desc=d.trim();
                %>
                
                <tr>
                    <td><label>Code</label></td>
                    <td><input type="text" name="code" value="<% out.print(code); %>"></td>                                
                </tr>
                
                <tr>
                    <td><label>Description</label></td>
                    <td><input type="text" name="desc" value="<%out.print(desc); %>"></td>
                </tr>
                
                <tr>
                    <td><label>Price</label></td>
                    <td><input type="text" name="price" value="<%out.print(session.getAttribute("price")); %>"></td>
                </tr>   
                
                <tr>
                    <td colspan="4">
                    <input type="submit" value="Update"> 
                    </td> 
                    <td>
                        <a href="ProductsList"><button>Go Back</button></a>
                    </td>
                </tr>
                
            </table>
        </form>
        <marquee scrollamount="10" direction="left" behavior="scroll">
        <h4>Welcome to Vora Products! We are Happy to help you.</h4>
        </marquee>
    </body>
    <%@include file="Footer.jsp" %>
</html>
