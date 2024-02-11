<%-- 
    Document   : Allweeklytask
    Created on : 3 Feb, 2024, 2:29:22 PM
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
                    url(https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-technology-network-background_bp3k3q70x_thumbnail-1080_01.png);
                background-repeat: no-repeat;
                
                background-size: cover;
            }
        </style>
    </head>
    <body>
    <center>
        <h1>Weekly Task</h1>
        <%@page import="java.util.*,java.sql.*"%>
       <%
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram","root","");
               Statement st=con.createStatement();
               ResultSet rs=null;
               %>
              
               <table border="1">
                   <tbody>
                       <tr>
                           <td>task id</td>
                           <td>Task</td>
                           <td>Description</td>
                          
                       </tr>
                  
               
               <%
                   String sql="select * from weeklytask";
                   rs=st.executeQuery(sql);
                   while(rs.next())
                   {
                       
                   %>
    <tr>
        <td><%=rs.getString("taskid")%></td>
        <td><%=rs.getString("task")%></td>
        <td><%=rs.getString("description")%></td>
        
        
    </tr>
    <%
        }
con.close();
}
catch(Exception e)
{
out.print(e);
           }
           %>
           </tbody>
           </table>
           <a href="Adminhome.jsp">back to home page</a>
    </center>
        
    </body>
</html>
