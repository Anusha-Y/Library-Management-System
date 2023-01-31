<%-- 
    Document   : ViewAllAuth
    Created on : Dec 4, 2022, 2:32:55 PM
    Author     : ANUSHA
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Author Details</title>
        <style>
            h1{
                color: whitesmoke;
                font-family:serif;
                margin-top: 130px;
            }
            body
            {
                background-image: url("Library4.jpg");
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
         Statement stmt=null;
        %>
        <%
            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13");
            String sql="select AId,AName,BookId from AUTHOR";
            stmt=con.createStatement();
            rs=stmt.executeQuery(sql);
            
        %>
    <center><h1>Author Details</h1></center>
    <center><table border="1">
            <tr class="t">
                <th>Author Id</th>
                <th>Author Name</th>
                <th>Book Id</th>
            </tr>
        
        <% while (rs.next()){ %>
        <tr> 
            <td><%=rs.getInt(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getInt(3)%></td>
        </tr>
        <%}
        con.close();
        %>
        </table></center>
    <center><button onclick="history.back()" class="b">Back</center>
    </body>
</html>
