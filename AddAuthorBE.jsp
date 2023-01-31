<%-- 
    Document   : AddAuthorBE
    Created on : Dec 3, 2022, 5:41:18 PM
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
        <title>Add Author</title>
    </head>
    <body>
        <%! int AId=0;
               String AName=null;
               int BookId=0;
               Connection con=null;
               PreparedStatement ps=null;
               %>
               
               <% AId = Integer.parseInt(request.getParameter("AId"));
               AName=request.getParameter("AName");
               BookId=Integer.parseInt(request.getParameter("BookId"));
              
               Class.forName("com.mysql.jdbc.Driver");

               con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13");
               String sql="INSERT INTO AUTHOR VALUES(?,?,?)";
               
               ps=con.prepareStatement(sql);
               
               ps.setInt(1,AId);
               ps.setString(2,AName);
               ps.setInt(3,BookId);
              
               int i=ps.executeUpdate();
                if(i>0)
            {
                out.println("<script> alert('Record Added Succesfully!');</script>");
                request.getRequestDispatcher("AddAuthor.jsp").include(request, response);
            }else {
                out.println("<script> alert('Record Not Added!');</script>");
                request.getRequestDispatcher("AddAuthor.jsp").include(request, response);
            }
            con.close(); %>
    </body>
    </body>
</html>
