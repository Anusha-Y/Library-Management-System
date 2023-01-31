<%-- 
    Document   : AddStudentBE
    Created on : Dec 3, 2022, 4:03:24 PM
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
        <title>Add Student</title>
    </head>
    <body>
        <%! int StudentId=0;
               String StudentName=null;
               String Email=null;
               String pwd=null;
               Connection con=null;
               PreparedStatement ps=null;
               %>
               
               <% StudentId = Integer.parseInt(request.getParameter("StudentId"));
               StudentName=request.getParameter("StudentName");
               Email=request.getParameter("Email");
               pwd=request.getParameter("pwd");
               
               Class.forName("com.mysql.jdbc.Driver");

               con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13");
               String sql="INSERT INTO STUDENT VALUES(?,?,?,?)";
               
               ps=con.prepareStatement(sql);
               
               ps.setInt(1,StudentId);
               ps.setString(2,StudentName);
               ps.setString(3,Email);
               ps.setString(4,pwd);
               
               int i=ps.executeUpdate();
               if(i>0)
            {
                out.println("<script> alert('Record Added Succesfully!');</script>");
                request.getRequestDispatcher("AddStudent.jsp").include(request, response);
            }else {
                out.println("<script> alert('Record Not Added!');</script>");
                request.getRequestDispatcher("AddStudent.jsp").include(request, response);
            }
            con.close(); %>
    </body>
</html>
