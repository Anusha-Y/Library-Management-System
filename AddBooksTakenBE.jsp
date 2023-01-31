<%-- 
    Document   : AddBooksTakenBE
    Created on : Dec 3, 2022, 6:20:20 PM
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
        <title>Add BooksTaken</title>
    </head>
    <body>
        <%! int StudentId=0;
               int BookId=0;
               int AdminId=0;
               String TakenDate=null;
               String DueDate=null;
               Connection con=null;
               PreparedStatement ps=null;
               %>
               
               <% StudentId = Integer.parseInt(request.getParameter("StudentId"));
               BookId=Integer.parseInt(request.getParameter("BookId"));
               AdminId=Integer.parseInt(request.getParameter("AdminId"));
               TakenDate=request.getParameter("TakenDate");
               DueDate=request.getParameter("DueDate");
              
               Class.forName("com.mysql.jdbc.Driver");

               con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13");
               String sql="INSERT INTO BOOKSTAKEN VALUES(?,?,?,?,?)";
               
               ps=con.prepareStatement(sql);
               
               ps.setInt(1,StudentId);
               ps.setInt(2,BookId);
               ps.setInt(3,AdminId);
               ps.setString(4,TakenDate);
               ps.setString(5,DueDate);
               int i=ps.executeUpdate();
               if(i>0)
            {
                out.println("<script> alert('Record Added Succesfully!');</script>");
                request.getRequestDispatcher("BooksTaken.jsp").include(request, response);
            }else {
                out.println("<script> alert('Record Not Added!');</script>");
                request.getRequestDispatcher("BooksTaken.jsp").include(request, response);
            }
            con.close(); %>
    </body>
</html>
