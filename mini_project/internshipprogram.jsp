<%-- 
    Document   : internshipprogram
    Created on : 3 Feb, 2024, 11:38:06 AM
    Author     : gauri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <%@page import="java.util.*,java.sql.*"%>
        <%
            try
        {
        String n=request.getParameter("id");
        String m=request.getParameter("name");
        String sdate=request.getParameter("startdate");
        String edate=request.getParameter("enddate");
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram","root","");
            Statement st=con.createStatement();
            String sql="insert into internshipprogram1(id,name,startdate,enddate)values('"+n+"' , '"+m+"' , '"+sdate+"' , '"+edate+"')";
            st.executeUpdate(sql);
            out.print("data inserted successfully");
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }

   %>
    </center>
    </body>
</html>
 