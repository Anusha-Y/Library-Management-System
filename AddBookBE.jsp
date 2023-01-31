<%-- 
    Document   : AddBookBE
    Created on : Dec 3, 2022, 3:41:02 PM
    Author     : ANUSHA
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book</title>
    </head>
    <body>
        <%! int BookId=0;
               String Title=null;
               float Price=0;
               int NumberOfCopies=0;
               Connection con=null;
               PreparedStatement ps=null;
               %>
               
               <% BookId = Integer.parseInt(request.getParameter("BookId"));
               Title=request.getParameter("Title");
               Price=Float.parseFloat(request.getParameter("Price"));
               NumberOfCopies=Integer.parseInt(request.getParameter("NumberOfCopies"));
               
               Class.forName("com.mysql.jdbc.Driver");

               con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13");
               String sql="INSERT INTO BOOK VALUES(?,?,?,?)";
               
               ps=con.prepareStatement(sql);
               
               ps.setInt(1,BookId);
               ps.setString(2,Title);
               ps.setFloat(3,Price);
               ps.setInt(4,NumberOfCopies);
               
               int i=ps.executeUpdate();
               if(i>0)
            {
                out.println("<script> alert('Record Added Succesfully!');</script>");
                request.getRequestDispatcher("AddBook.jsp").include(request, response);
            }else {
                out.println("<script> alert('Record Not Added!');</script>");
                request.getRequestDispatcher("AddBook.jsp").include(request, response);
            }
            con.close(); %>
    </body>
</html>
