<%-- 
    Document   : AdminLogout
    Created on : Dec 5, 2022, 1:10:50 PM
    Author     : ANUSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
            request.getRequestDispatcher("AdminLogin.jsp").forward(request, response);
            %>
    </body>
</html>
