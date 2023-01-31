<%-- 
    Document   : UpdateBooksTakenBE
    Created on : Dec 4, 2022, 11:17:38 PM
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
            int StudentId=Integer.parseInt(request.getParameter("StudentId"));
            int BookId=Integer.parseInt(request.getParameter("BookId"));
            int AdminId=Integer.parseInt(request.getParameter("AdminId"));
            String TakenDate=request.getParameter("TakenDate");
            String DueDate=request.getParameter("DueDate");
          
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13"); 
            String sql="UPDATE BOOKSTAKEN SET BOOKID=?,ADMINID=?,TAKENDATE=?,DUEDATE=? where STUDENTID=?";
            
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setInt(5,StudentId);
            ps.setInt(1,BookId);
            ps.setInt(2,AdminId);
            ps.setString(3,TakenDate);
            ps.setString(4,DueDate);
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                out.println("<script> alert('Record Updated!');</script>");
                request.getRequestDispatcher("UpdateBooksTaken.jsp").include(request, response);
            }else {
                out.println("<script> alert('Record Not Updated!');</script>");
                request.getRequestDispatcher("UpdateBooksTaken.jsp").include(request, response);
            }
            con.close();
        %>
    </body>
</html>

