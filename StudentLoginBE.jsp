<%-- 
    Document   : StudentLoginBE
    Created on : Dec 5, 2022, 11:47:10 AM
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
        <title>Student LoginBE</title>
        <style>
            nav{
                background-color: darkblue;
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
            .m{
                background-color: darkblue;
                padding: 8px 8px 8px 8px;
                color: white;
                float:right;
                font-size: 18px;
                text-decoration: none;
                margin-right: 20px;
            }
            .q{
                background-image:url("book.jpg");
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
        <%! String StudentName=null;
            String Email=null;
            String pwd=null;
            Connection con=null;
            PreparedStatement ps=null;
            %>
            
            <% StudentName=request.getParameter("StudentName");
            Email=request.getParameter("Email");
            pwd=request.getParameter("pwd");
            
            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root13");
            String sql = "SELECT STUDENTNAME FROM STUDENT WHERE EMAIL=? AND pwd=?";

            ps = con.prepareStatement(sql);

            ps.setString(1, Email);
            ps.setString(2, pwd);

            ResultSet rs=ps.executeQuery();
           if(rs.next())
           {
        %>
        <h2 align='center' style="color:whitesmoke; background-color: blue;"><%=rs.getString("StudentName")%></h2>
        <nav>
            <a href="DashBoard.jsp" class="o">Logout</a>
             <a href="ViewAllBook.jsp" class="m">View All Books</a>
             <select onchange="a(this.value)">
                <option disabled selected>Student</option>
                <option value="ViewBooksTaken.jsp">View BooksTaken Details</option>
                </select>
        </nav>
        <% } else { 
                out.println("<script> alert('Invalid Email or Password!');</script>");
                request.getRequestDispatcher("StudentLogin.jsp").include(request, response);
            }
        con.close();%>
        
    </body>
</html>
