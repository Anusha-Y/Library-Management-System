<%-- 
    Document   : UpdateAuthorBE
    Created on : Dec 4, 2022, 1:02:55 PM
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
        <title>Update Author</title>
    </head>
    <body>
         <%!
        Connection con = null;
        PreparedStatement ps = null;
        %>
         <%
            int AId=Integer.parseInt(request.getParameter("AId"));
            String AName=request.getParameter("AName");
            int BookId=Integer.parseInt(request.getParameter("BookId"));
          
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13"); 
            String sql="UPDATE AUTHOR SET ANAME=?,BOOKID=? where AId=?";
            
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setInt(3,AId);
            ps.setString(1,AName);
            ps.setInt(2,BookId);
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                out.println("<script> alert('Record Updated!');</script>");
                request.getRequestDispatcher("UpdateAuthor.jsp").include(request, response);
            }else {
                out.println("<script> alert('Record Not Updated!');</script>");
                request.getRequestDispatcher("UpdateAuthor.jsp").include(request, response);
            }
            con.close();
        %>
    </body>
</html>
