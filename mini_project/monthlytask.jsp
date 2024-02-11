<%-- 
    Document   : monthlytask
    Created on : 3 Feb, 2024, 12:02:52 PM
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
                    url(https://www.cbj.ca/wp-content/uploads/2018/09/technology-image.jpg);
                
                background-repeat: no-repeat;
                
                background-size: cover;
            }
        </style>
    </head>
    <body>
        
    <center>
       <%@page import="java.util.*,java.sql.*"%>
        <%
            try
        {
        String n=request.getParameter("taskid");
        String m=request.getParameter("task");
        String p=request.getParameter("description");
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram","root","");
            Statement st=con.createStatement();
            String sql="insert into monthlytask(taskid,task,description)values('"+n+"' , '"+m+"' , '"+p+"')";
            st.executeUpdate(sql);
            out.print("data inserted successfully");
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }

   %>
   <br><br>   <a href="Allmonthlytask.jsp" style="color: white"><b><font size="5">view data</font></b></a>
    </center>
    </body>
</html>
