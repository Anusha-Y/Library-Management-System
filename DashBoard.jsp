<%-- 
    Document   : DashBoard
    Created on : Dec 5, 2022, 5:43:29 PM
    Author     : ANUSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dash Board</title>
        <style>
            body{
                background-image:url("Library3.jpg");
                background-repeat: no-repeat;
                height: 100vh;
                background-size: cover;
            }
            nav{
                width: 100%;
                height:60px;
                background-color: rgba(0,0,0,0.5);
            }
            h3{
                padding: 8px 8px 8px 8px;
                font-size: 30px;
                font-family: fantasy;
                color: whitesmoke;
            }
            h1{
                margin-top: 30px;
                font-size: 30px;
                color:whitesmoke;
                font-family:sans-serif;
                background-color:rgba(0,0,0,0.3);
                margin-right: 520px;
                margin-left: 520px;
                border-radius: 10px;
            }
            .w
            {
                margin-top: 160px;
                font-size: 30px;
                font-family:sans-serif;
                background-color:rgba(0,0,0,0.3);
                margin-right: 520px;
                margin-left: 520px;
                border-radius: 10px;
            }
            a{
                background-color: red;
                border-radius: 20px;
                text-decoration: none;
                padding: 10px 18px 10px 18px;
                color: white;
                font-weight: bold;
            }
            a:hover
            {
                background-color: lightpink;
            }
        </style>
    </head>
    <body>
        <nav>
            <center><h3><span style="color: lawngreen;">Library</span> Management System</h3></center>
        </nav>
    <center><h1 style="color: lawngreen;" class="w">Welcome To Library</h1></center>
    <center><h1><span style="color: lawngreen;">Study</span> well <span style="color: lawngreen;">earn</span> well</h1></center>
    <center><a href="AdminLogin.jsp">Admin</a>
        <a href="StudentLogin.jsp">Student</a></center>
    </body>
</html>
