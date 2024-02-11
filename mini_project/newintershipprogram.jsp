<%-- 
    Document   : newintershipprogram
    Created on : 2 Feb, 2024, 10:44:05 AM
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
                    url(https://lawpracticecle.com/wp-content/uploads/2022/11/Working-Remotely-Legal-Ethics-and-Technology-Scams.jpg);
                
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
        String n=request.getParameter("title");
        String m=request.getParameter("sdate");
        String p=request.getParameter("edate");
        String mb=request.getParameter("technology");
        String details=request.getParameter("managerdetails");
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram","root","");
            Statement st=con.createStatement();
            String sql="insert into internshipprogram1(title,sdate,edate,technology,managerdetails)values('"+n+"' , '"+m+"' , '"+p+"' , '"+mb+"' , '"+details+"')";
            st.executeUpdate(sql);
            out.print("data inserted successfully");
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }

   %>
   <br><br>
   <a href="Adminhome.jsp" style="color: white"><b><font size="5" color="white"> back to home page</font></b></a><br><br>
   
    </center>
 </body>
</html>
