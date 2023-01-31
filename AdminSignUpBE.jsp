<%-- 
    Document   : AdminSignUpBE
    Created on : Dec 2, 2022, 8:26:09 PM
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
        <title>Admin Sign Up</title>
    </head>
    <body>
       <%! int AdminId=0;
           String AdminName=null;
            String Email=null;
            String Pwd=null;
            Connection con=null;
            PreparedStatement ps=null;
            %>
            
            <% AdminId=Integer.parseInt(request.getParameter("AdminId"));
                AdminName=request.getParameter("AdminName");
            Email=request.getParameter("Email");
            Pwd=request.getParameter("Pwd");
            
            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13");
            String sql = "INSERT INTO ADMIN VALUES(?,?,?,?)";

            ps = con.prepareStatement(sql);
            
            ps.setInt(1, AdminId);
            ps.setString(2, AdminName);
            ps.setString(3, Email);
            ps.setString(4,Pwd);
           

            int i=ps.executeUpdate();
           if(i>0)
           {
        request.getRequestDispatcher("AdminLogin.jsp").forward(request, response);
       } con.close();%>
    
    </body>
</html>
