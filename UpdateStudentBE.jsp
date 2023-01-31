<%-- 
    Document   : UpdateStudentBE
    Created on : Dec 4, 2022, 10:14:57 PM
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
        <title>Update Student</title>
    </head>
    <body>
         <%!
        Connection con = null;
        PreparedStatement ps = null;
        %>
         <%
            int StudentId=Integer.parseInt(request.getParameter("StudentId"));
            String StudentName=request.getParameter("StudentName");
            String Email=request.getParameter("Email");
            String pwd=request.getParameter("pwd");
          
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13"); 
            String sql="UPDATE STUDENT SET STUDENTNAME=?,EMAIL=?,PWD=? WHERE STUDENTID=?";
            
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setInt(4,StudentId);
            ps.setString(1,StudentName);
            ps.setString(2,Email);
            ps.setString(3,pwd);
            int i=ps.executeUpdate();
            if(i>0)
            {
                out.println("<script> alert('Record Updated!');</script>");
                request.getRequestDispatcher("UpdateStudent.jsp").include(request, response);
            }else {
                out.println("<script> alert('Record Not Found!');</script>");
                request.getRequestDispatcher("UpdateStudent.jsp").include(request, response);
            }
            con.close();
        %>
    </body>
</html>
