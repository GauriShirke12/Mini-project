<%-- 
    Document   : Allinternshipprogram
    Created on : 3 Feb, 2024, 2:22:40 PM
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
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram","root","");
               Statement st=con.createStatement();
               ResultSet rs=null;
               %>
              
               <table broder="1">
                   <tbody>
                       <tr>
                           <td>id</td>
                           <td>name</td>
                           <td>start date</td>
                           <td>end date</td>
                       </tr>
                  
               
               <%
                   String sql="select * from internshipprogram1";
                   rs=st.executeQuery(sql);
                   while(rs.next())
                   {
                       
                   %>
    <tr>
        <td><%=rs.getString("id")%></td>
        <td><%=rs.getString("name")%></td>
        <td><%=rs.getString("startdate")%></td>
        <td><%=rs.getString("enddate")%></td>
        
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
    </center>
    </body>
</html>
