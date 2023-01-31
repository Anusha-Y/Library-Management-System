<%-- 
    Document   : ViewBooksTakenBE
    Created on : Dec 5, 2022, 3:09:06 PM
    Author     : ANUSHA
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Books Taken Details</title>
        <style>
            h1{
                color: whitesmoke;
                font-family:serif;
                margin-top: 170px;
            }
            body
            {
                background-image: url("Library2.jpg");
                background-repeat: no-repeat;
                height: 100hv;
                background-size: cover;
            }
            .b
            {
                background-color: blue;
                color:white;
                border-radius: 10px;
                border-color: white;
                padding: 6px 20px 6px 20px;
                margin-top: 30px;
            }
            .b:hover
            {
                background-color:lightseagreen;
            }
            table{
                background-color:whitesmoke;
            }
            .t
            {
                background-color:lightblue;
            }
            </style>
    </head>
    <body>
        <%! 
         Connection con=null;
         ResultSet rs=null;
         PreparedStatement ps=null;
        %>
        <%
            int StudentId=Integer.parseInt(request.getParameter("StudentId"));
            
            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13");
            String sql="select * from bookstaken where StudentId=?";
            ps=con.prepareStatement(sql);
            ps.setInt(1,StudentId);
            ResultSet rs=ps.executeQuery();
            
        %>
    <center><h1>Books Taken Details</h1></center>
    <center><table border="1">
            <tr class="t">
                <th>Student Id</th>
                <th>Book Id</th>
                <th>Admin Id</th>
                <th>Taken Date</th>
                <th>Due Date</th>
            </tr>
        
        <% if(rs.next()){ %>
        <tr> 
            <td><%=rs.getInt(1)%></td>
            <td><%=rs.getInt(2)%></td>
            <td><%=rs.getInt(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
        </tr>
        <% } else { 
                out.println("<script> alert('No record Found!');</script>");
            }
        con.close();%>
         </table></center>
        <center><button onclick="history.back()" class="b">Back</center>
    </body>
</html>


