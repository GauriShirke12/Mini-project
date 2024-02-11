<%-- 
    Document   : weeklytask
    Created on : 3 Feb, 2024, 12:11:30 PM
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
                    url(https://images.tmcnet.com/tmc/misc/articles/image/2019-jan/2604908589-bigstock-Robot-With-Artificial-Intellig-SUPERSIZE.jpg);
                
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
        String mb=request.getParameter("description");
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram","root","");
            Statement st=con.createStatement();
            String sql="insert into weeklytask(taskid,task,description)values('"+n+"' , '"+m+"' , '"+mb+"')";
            st.executeUpdate(sql);
            out.print("data inserted successfully");
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }

   %>
   
   <br><br>   <a href="Allweeklytask.jsp" style="color: white"><b><font size="5">view </font></b></a>
   
    </center>
    </body>
</html>
