<%-- 
    Document   : UpdateBookBE
    Created on : Dec 4, 2022, 11:29:35 PM
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
            int BookId=Integer.parseInt(request.getParameter("BookId"));
            String Title=request.getParameter("Title");
            float Price=Float.parseFloat(request.getParameter("Price"));
            int NumberOfCopies=Integer.parseInt(request.getParameter("NumberOfCopies"));
          
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13"); 
            String sql="UPDATE BOOK SET Title=?,Price=?,NumberOfCopies=? where BookId=?";
            
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setInt(4,BookId);
            ps.setString(1,Title);
            ps.setFloat(2,Price);
            ps.setInt(3,NumberOfCopies);
           
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                out.println("<script> alert('Record Updated!');</script>");
                request.getRequestDispatcher("UpdateBook.jsp").include(request, response);
            }else {
                out.println("<script> alert('Record Not Updated!');</script>");
                request.getRequestDispatcher("UpdateBook.jsp").include(request, response);
            }
            con.close();
        %>
    </body>
</html>

