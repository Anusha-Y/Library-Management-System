<%-- 
    Document   : DeleteAuthorBE
    Created on : Dec 4, 2022, 5:04:19 PM
    Author     : ANUSHA
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Author</title>
    </head>
    <body>
         <%!int AId=0;
        Connection con = null;
        PreparedStatement ps = null;
        %>
         <%
            AId=Integer.parseInt(request.getParameter("AId"));
          
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13"); 
            String sql="delete from AUTHOR where AId=?";
            
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setInt(1,AId);
            int i=ps.executeUpdate();
            if(i>0)
            {
                out.println("<script> alert('Record Deleted!');</script>");
                request.getRequestDispatcher("DeleteAuthor.jsp").include(request, response);
            }else {
                out.println("<script> alert('Record Not Found!');</script>");
                request.getRequestDispatcher("DeleteAuthor.jsp").include(request, response);
            }
            con.close();
        %>
    </body>
</html>