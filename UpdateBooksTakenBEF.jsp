<%-- 
    Document   : UpdateBooksTakenBEF
    Created on : Dec 4, 2022, 11:05:49 PM
    Author     : ANUSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update BooksTaken</title>
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
        <form method="post" action="UpdateBooksTakenBE.jsp">
            <h2><center>Update BooksTaken</center></h2>
            <table>
                <tr>
                    <td><label>Enter Student Id:</label></td>
                    <td><input type="text" name="StudentId" value="<%=request.getParameter("StudentId")%>"></td>
                </tr>
                <tr>
                <td><label class="a">Enter Book Id:</label></td>
           <td><input type="text" name="BookId" class="a" value="<%=request.getParameter("BookId")%>"></td>
            </tr>
            <tr>
                <td><label class="a">Enter Admin Id:</label></td>
                <td><input type="text" name="AdminId" class="a" value="<%=request.getParameter("AdminId")%>"></td>
                </tr>
               <tr>
                <td><label class="a">Enter Taken Date:</label></td>
                <td><input type="date" name="TakenDate" class="a" value="<%=request.getParameter("TakenDate")%>"></td>
                </tr>
                <tr>
                <td><label class="a">Enter Due Date:</label></td>
                <td><input type="date" name="DueDate" class="a" value="<%=request.getParameter("DueDate")%>"></td>
                </tr>
        </form>
</table>
            <center><input type="Submit" value="Update" class="b"></center>
           
            </div>
    </body>
</html>
