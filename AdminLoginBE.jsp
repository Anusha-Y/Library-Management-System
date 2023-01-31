<%-- 
    Document   : AdminLoginBE
    Created on : Dec 2, 2022, 4:33:42 PM
    Author     : ANUSHA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin LoginBE</title>
        <style>
            nav{
                background-color: darkblue;
                margin-top: 0px;
                height:40px;
                width:100%;
            }
            select{
                background-color: darkblue;
                padding: 8px 8px 8px 8px;
                color: white;
                float:right;
                font-size: 15px;
                text-decoration: none;
            }
            .o
            {
                background-color: white;
                border-radius: 20px;
                color:blue;
                text-decoration: none;
                float: right;
                font-weight: bold;
                padding: 3px 6px 3px 6px;
                margin-top: 8px;
                margin-right: 10px;
            }
            .q{
                background-image: url("book2.jpg");
                background-repeat: no-repeat;
                height: 100hv;
                background-size: cover;
            }
        </style>
        <script>
            function a(src)
            {
                window.location=src;
            }
        </script>
    </head>
    <body class="q">
        <%! String AdminName=null;
            String Email=null;
            String Pwd=null;
            Connection con=null;
            PreparedStatement ps=null;
            %>
            
            <% AdminName=request.getParameter("AdminName");
            Email=request.getParameter("Email");
            Pwd=request.getParameter("Pwd");
            
            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13");
            String sql = "SELECT ADMINNAME FROM ADMIN WHERE EMAIL=? AND PWD=?";

            ps = con.prepareStatement(sql);

            ps.setString(1, Email);
            ps.setString(2, Pwd);

            ResultSet rs=ps.executeQuery();
           if(rs.next())
           {
        %>
        <h2 align='center' style="color:whitesmoke; background-color: blue;"><%=rs.getString("AdminName")%></h2>
        <nav>
            <a href="DashBoard.jsp" class="o">Logout</a>
             <select onchange="a(this.value)">
                <option disabled selected>Author</option>
                <option value="ViewAllAuth.jsp">View All Author Details</option>
                <option value="AddAuthor.jsp">Add Author</option>
                <option value="UpdateAuthor.jsp">Update Author</option>
                <option value="DeleteAuthor.jsp">Delete Author</option>
            </select>
            <select onchange="a(this.value)">
                <option disabled selected>Student</option>
                <option value="ViewAllStu.jsp">View All Students</option>
                <option value="AddStudent.jsp">Add Student</option>
                <option value="UpdateStudent.jsp">Update Student</option>
                <option value="DeleteStudent.jsp">Delete Student</option>
            </select>
            <select onchange="a(this.value)">
                <option disabled selected>Books Taken</option>
                <option value="ViewAllBookTaken.jsp">View BooksTaken</option>
                <option value="BooksTaken.jsp">Issue Book</option>
                <option value="UpdateBooksTaken.jsp">Update</option>
                <option value="DeleteBooksTaken.jsp">Cancel Issued Book</option>
            </select>
            <select onchange="a(this.value)">
                <option disabled selected>Book</option>
                <option value="ViewAllBook.jsp">View All Books</option>
                <option value="AddBook.jsp">Add Book</option>
                <option value="UpdateBook.jsp">Update Book</option>
                <option value="DeleteBook.jsp">Delete Book</option>
            </select>
        </nav>
        <% } else { 
                out.println("<script> alert('Invalid Email or Password!');</script>");
                request.getRequestDispatcher("AdminLogin.jsp").include(request, response);
            }
        con.close();%>
        
    </body>
</html>
