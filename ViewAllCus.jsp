<%-- 
    Document   : ViewAllCus
    Created on : Nov 28, 2022, 11:37:29 PM
    Author     : ANUSHA
--%>

<%@page import="java.sql.Statement"%>
<%@page import="P1.ConnectBankDB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Details</title>
    </head>
    <body>
        <%! 
         Connection con=null;
         ResultSet rs=null;
         Statement stmt=null;
        %>
        <%
            con=ConnectBankDB.connectDB();
            String sql="select aadharid,cname, email, dob,address, mno, pancard from customer";
            stmt=con.createStatement();
            rs=stmt.executeQuery(sql);
            
        %>
        <h1>Details of Customers</h1>
        <table border="1">
            <tr>
                <th>Aadhar id</th>
                <th>Customer Name</th>
                <th>E-Mail ID</th>
                <th>DOB</th>
                <th>Address</th>
                <th>MNO</th>
                <th>Pan Card</th>
            </tr>
        
        <% while (rs.next()){ %>
        <tr> 
            <td><%=rs.getLong(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><%=rs.getLong(6)%></td>
            <td><%=rs.getString(7)%></td>
        </tr>
        <%}
        con.close();
        %>
        </table>
        <button onclick="window.print()">Print</button>
    </body>
</html>
