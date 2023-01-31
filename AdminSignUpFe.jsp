<%-- 
    Document   : AdminSignUpFe
    Created on : Dec 2, 2022, 4:28:51 PM
    Author     : ANUSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
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
                    margin-top: 140px;
                   padding: 20px 20px 20px 20px;
                background-color: white;
                 border-radius: 20px;
            }
            .a
            {
                margin-top: 10px;
            }
            h2
            {
                color: blue;
            }
            body
            {
                background-image: url("Libray.jpg");
                background-repeat: no-repeat;
                height: 100hv;
                background-size: cover;
            }
        </style>
    </head>
     <center><div>
        <form method="post" action="AdminSignUpBE.jsp">
            <h2><center>Admin Sign Up</center></h2>
            <table>
                <tr>
                    <td><label>Enter Your Id:</label></td>
                    <td><input type="text" name="AdminId"></td>
                </tr>
                <tr>
                <td><label class="a">Enter Your Name:</label></td>
           <td><input type="text" name="AdminName" class="a"></td>
            </tr>
            <tr>
                <td><label class="a">Enter Your Email Id:</label></td>
                <td><input type="email" name="Email" class="a"></td>
                </tr>
                <tr>
                <td><label class="a">Enter Password:</label></td>
                <td><input type="password" name="Pwd" class="a"></td>
                </tr>
        </form>
</table>
            <center><input type="Submit" value="Sign Up" class="b"></center>
           
            </div>
            </body>
</html>
