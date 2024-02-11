<%-- 
    Document   : adminlogin
    Created on : 2 Feb, 2024, 9:44:20 AM
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
                    url(https://insuranceblog.accenture.com/wp-content/uploads/2019/06/Tech_Trends.jpg);
                background-repeat: no-repeat;
                
                background-size: cover;
            }
        </style>
    </head>
    <body>
    <center>
        <% 
String name=request.getParameter("username");
String pass=request.getParameter("password");
out.println(name);
out.println(pass);
session.setAttribute("nm",name);
session.setAttribute("pw",pass);


        %>
        <a href="login.jsp" style="color: blue">Login Now</a>
    </center>
    </body>
</html>
