<%-- 
    Document   : delProduct
    Created on : 18-Jul-2019, 12:17:40 AM
    Author     : Burhanuddin
--%>

<%@include file="Header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="main2.css">
        <title>Deleting Product</title>
    </head>
    <h3><a href="index.jsp" style="text-align: Right; color: White; padding-left: 85%">Logout</a></h3>
    <body style="text-align: center;">
                <% String co=request.getParameter("code");
                    String code=co.trim();
                    String d=request.getParameter("desc");
                    String desc=d.trim();
                    String p=request.getParameter("price");
                    String pr=p.trim();
                %>
        
            <table align="center" class="table2">
                <tr>
                    <td><h3>Product Code</h3></td><td> <%out.print(code);%></td>
                </tr>
                <tr>
                    <td><h3>Product Description</h3></td><td> <%out.print(desc);%></td>
                </tr>
                <tr>
                    <td><h3>Product Price</h3></td><td> <%=request.getParameter("price")%></td>
                </tr>
            </table>
                
                <a href="ProductDF?code=<%=code%>&desc=<%=desc%>&price=<%=pr%>">
                    <button>Delete</button>
                </a>
                <a href="ProductsList">
                    <button>Go Back</button>
                </a>
                    
        <marquee scrollamount="10" direction="left" behavior="scroll">
        <h4>Welcome to Vora Products! We are Happy to help you.</h4>
        </marquee>
    </body>
    <%@include file="Footer.jsp" %>
</html>
