<%-- 
    Document   : AddStudent
    Created on : Dec 3, 2022, 3:56:08 PM
    Author     : ANUSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
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
                background-color: rgba(0,0,0,0.6);
                 border-radius: 20px;
                 color:white;
            }
            .a
            {
                margin-top: 10px;
            }
            h2
            {
                color: whitesmoke;
            }
            body
            {
                background-image: url("Library2.jpg");
                background-repeat: no-repeat;
                height: 100hv;
                background-size: cover;
            }
        </style>
    </head>
    <body>
        <center><div>
        <form method="post" action="AddStudentBE.jsp">
            <h2><center>Add Student</center></h2>
            <table>
                <tr>
                    <td><label>Enter Student Id:</label></td>
                    <td><input type="text" name="StudentId"></td>
                </tr>
                <tr>
                <td><label class="a">Enter Student Name:</label></td>
           <td><input type="text" name="StudentName" class="a"></td>
            </tr>
            <tr>
                <td><label class="a">Enter Student Email:</label></td>
                <td><input type="email" name="Email" class="a"></td>
                </tr>
                <tr>
                <td><label class="a">Enter Password:</label></td>
                <td><input type="password" name="pwd" class="a"></td>
                </tr>
        </form>
</table>
            <center><input type="Submit" value="Add" class="b"></center>
            
            </div>
            
            
    </body>
</html>
