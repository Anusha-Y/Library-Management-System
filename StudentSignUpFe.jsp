<%-- 
    Document   : StudentSignUpFe
    Created on : Dec 5, 2022, 11:56:43 AM
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
                    margin-top: 130px;
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
                background-image: url("Library5.jpg");
                background-repeat: no-repeat;
                height: 100hv;
                background-size: cover;
            }
        </style>
    </head>
     <center><div>
        <form method="post" action="StudentSignUpBE.jsp">
            <h2><center>Student Sign Up</center></h2>
            <table>
                <tr>
                    <td><label>Enter Your Id:</label></td>
                    <td><input type="text" name="StudentId"></td>
                </tr>
                <tr>
                <td><label class="a">Enter Your Name:</label></td>
           <td><input type="text" name="StudentName" class="a"></td>
            </tr>
            <tr>
                <td><label class="a">Enter Your Email Id:</label></td>
                <td><input type="email" name="Email" class="a"></td>
                </tr>
                <tr>
                <td><label class="a">Enter Password:</label></td>
                <td><input type="password" name="pwd" class="a"></td>
                </tr>
        </form>
</table>
            <center><input type="Submit" value="Sign Up" class="b"></center>
            
            </div>
            </body>
</html>
