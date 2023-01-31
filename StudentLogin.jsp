<%-- 
    Document   : StudentLogin
    Created on : Dec 5, 2022, 11:14:09 AM
    Author     : ANUSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Login</title>
        <style>
            .b
            {
                background-color: blue;
                color:white;
                border-radius: 10px;
                border-color: white;
                padding: 6px 20px 6px 20px;
                margin-top: 30px;
            }
            .b:hover
            {
                background-color:lightseagreen;
            }
            div
            {
                margin-left:480px; 
                    margin-right: 480px;
                    margin-top: 130px;
                   padding: 20px 20px 20px 20px;
                background-color: white;
                border-radius: 20px;
            }
            .a
            {
                margin-top: 10px;
            }
            .s{
                text-decoration: none;
            }
            h2
            {
                color: blue;
            }
            body
            {
                background-image: url("Library5.jpg");
                background-repeat: no-repeat;
                height: 100hv;
                background-size: cover;
            }
        </style>
    </head>
    <body>
    <center><div>
        <form method="post" action="StudentLoginBE.jsp">
            <h2><center>Student Login</center></h2>
            <table>
            <tr>
                <td><label>Enter Your Email Id:</label></td>
                <td><input type="email" name="Email"></td>
                </tr>
                <tr>
                <td><label class="a">Enter Password:</label></td>
                <td><input type="password" name="pwd" class="a"></td>
                </tr>
        </form>
</table>
            <center><input type="Submit" value="Login" class="b"></center><br>
            <h3>Don't have an account?<a href='StudentSignUpFe.jsp' class='s'>Sign Up</a></h3>
        </div></center>
    </body>
</html>
