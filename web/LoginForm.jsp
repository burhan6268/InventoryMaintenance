<%-- 
    Document   : LoginForm
    Created on : 26-Jul-2019, 9:55:28 AM
    Author     : Burhanuddin
--%>
<%@include file="Header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="main2.css">
        <title>Login</title>
    </head>
    <body>
        <form method="POST" action="j_security_check">
            <center>
            <table class="table1">
            <tr>
                <td colspan="2" style="font-size: 1.5em; text-align: center">Login</td>
            </tr>
            <tr>
                <td><b>User Name : </b></td>
                <td><input type="text" name="j_username"/></td>
            </tr>
            <tr>
                <td><b>Password : </b></td>
                <td><input type="password" name="j_password"/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="Submit" Value="Login"/> &nbsp; <input type="Reset" Value="Reset"></td>
            </tr>
            </table>
                <%@include file="Footer.jsp" %>
            </center>
        </form>
        
    </body>
</html>
