<%-- 
    Document   : login
    Created on : 2 Feb, 2024, 10:06:29 AM
    Author     : gauri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-image: 
                    url(https://ecelectronics.com/wp-content/uploads/2020/10/EC-International-Business.jpg);
                background-repeat: no-repeat;
                
                background-size: cover;
            }
        </style>
    </head>
    <body>
    <center>
        <h1 style="clear: pink">Enter Details</h1>
        <%
        String n=(String)session.getAttribute("nm");
        String pass=(String)session.getAttribute("pw");
        session.setAttribute("name", n);
        session.setAttribute("pass", pass);
        %>
        <form action="session.jsp">
        
           
        Set username:<input type="text" name="Name" value="" /><br><br>
        Set Password:<input type="password" name="password" value="" /><br><br>
        <input type="submit" value="login" />
        </form>
    </center>
    </body>
</html>
