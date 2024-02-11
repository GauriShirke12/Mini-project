<%-- 
    Document   : Allnew
    Created on : 3 Feb, 2024, 2:00:45 PM
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
                    url(https://img.lovepik.com/background/20211021/large/lovepik-simple-technology-background-image_401691138.jpg);
                background-repeat: no-repeat;
                
                background-size: cover;
            }
        </style>
    </head>
    <body>
    <center>
        <h1>View Details</h1>
         <%@page import="java.util.*,java.sql.*"%>
       <%
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram","root","");
               Statement st=con.createStatement();
               ResultSet rs=null;
               %>
              
               <table border="2">
                   <tbody>
                       <tr>
                           <td>title</td>
                           <td>Start date</td>
                            <td>End date</td>
                           <td>technology</td>
                           <td> manager details</td>
                       </tr>
                  
               
               <%
                   String sql="select * from internshipprogram1";
                   rs=st.executeQuery(sql);
                   while(rs.next())
                   {
                       
                   %>
    <tr>
        <td><%=rs.getString("title")%></td>
        <td><%=rs.getString("sdate")%></td>
        <td><%=rs.getString("edate")%></td>
        <td><%=rs.getString("technology")%></td>
        <td><%=rs.getString("managerdetails")%></td>
        
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

    
