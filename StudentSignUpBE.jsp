<%-- 
    Document   : StudentSignUpBE
    Created on : Dec 5, 2022, 11:59:20 AM
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
        <title>Student Sign Up</title>
    </head>
    <body>
       <%! int StudentId=0;
           String StudentName=null;
            String Email=null;
            String pwd=null;
            Connection con=null;
            PreparedStatement ps=null;
            %>
            
            <% StudentId=Integer.parseInt(request.getParameter("StudentId"));
                StudentName=request.getParameter("StudentName");
            Email=request.getParameter("Email");
            pwd=request.getParameter("pwd");
            
            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13");
            String sql = "INSERT INTO STUDENT VALUES(?,?,?,?)";

            ps = con.prepareStatement(sql);
            
            ps.setInt(1, StudentId);
            ps.setString(2, StudentName);
            ps.setString(3, Email);
            ps.setString(4,pwd);
           

            int i=ps.executeUpdate();
           if(i>0)
           {
        request.getRequestDispatcher("StudentLogin.jsp").forward(request, response);
       } con.close();%>
    
    </body>
</html>

