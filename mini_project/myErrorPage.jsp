<%-- 
    Document   : myErrorPage
    Created on : 2 Feb, 2024, 10:10:50 AM
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
                    url(https://thumbs.dreamstime.com/b/error-page-not-found-page-not-found-text-oops-looks-like-something-went-wrong-d-web-vector-illustrations-error-page-not-found-page-244614784.jpg);
                
                background-repeat: no-repeat;
                
                background-size: cover;
            }
        </style>
    </head>
    <body>
    <center>
        <%@page isErrorPage="true" %>
        <h2>Sorry Something went wrong</h2>
        <a href="adminlogin.html">Re-enter details</a>
        </center>
    </body>
</html>
