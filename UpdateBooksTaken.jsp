<%-- 
    Document   : UpdateBooksTaken
    Created on : Dec 4, 2022, 10:56:17 PM
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
        <title>Update BooksTaken</title>
        <style>
            h1{
                color: whitesmoke;
                font-family:serif;
                margin-top: 130px;
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
            .l
            {
                text-decoration: none;
            }
        </style>
    </head>
    <body>
         <%! Connection con=null;
            ResultSet rs=null;
            Statement stmt=null;
            %>
            <% 
                Class.forName("com.mysql.jdbc.Driver");

                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13");
                String sql="select StudentId,BookId,AdminId,TakenDate,DueDate from bookstaken";
                stmt=con.createStatement();
                rs=stmt.executeQuery(sql);
            %>
    <center><h1>Books Taken Details</h1></center>
    <center><table border="1">
                <tr class="t">
                    <th>Student Id</th>
                    <th>Book Id</th>
                    <th>Admin Id</th>
                    <th>Taken Date</th>
                    <th>Due Date</th>
                    <th>Update</th>
                </tr>
                   <%while (rs.next()){%>
                   <tr>
                        <td><%=rs.getInt(1)%></td>
                        <td><%=rs.getInt(2)%></td>
                        <td><%=rs.getInt(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><a href="UpdateBooksTakenBEF.jsp?bookid=<%=rs.getInt(1)%>" class="l">Update</a></td>
                   </tr>
                   <%  }
                con.close();
                    %>
        </table></center>
     
    </body>
    
</html>

