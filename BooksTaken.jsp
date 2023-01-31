<%-- 
    Document   : BooksTaken
    Created on : Dec 3, 2022, 5:48:04 PM
    Author     : ANUSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add BooksTaken</title>
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
        <form method="post" action="AddBooksTakenBE.jsp">
            <h2><center>Add BooksTaken</center></h2>
            <table>
                <tr>
                    <td><label>Enter Student Id:</label></td>
                    <td><input type="text" name="StudentId"></td>
                </tr>
                <tr>
                <td><label class="a">Enter Book Id:</label></td>
           <td><input type="text" name="BookId" class="a"></td>
            </tr>
            <tr>
                <td><label class="a">Enter Admin Id:</label></td>
                <td><input type="text" name="AdminId" class="a"></td>
                </tr>
               <tr>
                <td><label class="a">Enter Taken Date:</label></td>
                <td><input type="date" name="TakenDate" class="a"></td>
                </tr>
                <tr>
                <td><label class="a">Enter Due Date:</label></td>
                <td><input type="date" name="DueDate" class="a"></td>
                </tr>
        </form>
</table>
            <center><input type="Submit" value="Add" class="b"></center>
            
            </div>
    </body>
</html>
