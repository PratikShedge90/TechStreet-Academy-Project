<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
   <%@ include file= "../component/css.jsp" %>
</head>
<body>
<%@ include file="../component/navbar.jsp" %>

<%
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    HttpSession session2 = null; // Declare session variable here
    try {
        // Load the JDBC driver
        Class.forName("org.postgresql.Driver");

        // Establish connection to database
        con = DriverManager.getConnection("jdbc:postgresql://localhost/techstreet", "root", "root@123");

        // Prepare SQL query
        ps = con.prepareStatement("SELECT * FROM student_info WHERE username=?");

        // Get session and check if it exists
        session2 = request.getSession(false);
        if (session2 != null && session2.getAttribute("username") != null) 
        {
            String username = (String) session2.getAttribute("username");

            // Set username in prepared statement
            ps.setString(1, username);
            rs = ps.executeQuery();

        
            if (rs.next()) 
            {
    %>
             <h2 style="text-align:center;"> <b>Student Profile</b> </h2>
            <table class="table table-bordered" style="margin-top:35px; padding-left: 20px;">
                <tr>
                    <th width="30%">Name</th>
                    <td width="2%">:</td>
                    <td><%= rs.getString(1) %></td>
                </tr>
                <tr>
                    <th width="30%">Email</th>
                    <td width="2%">:</td>
                    <td><%= rs.getString(2) %></td>
                </tr>
                <tr>
                    <th width="30%">Phone Number</th>
                    <td width="2%">:</td>
                    <td><%= rs.getLong(3) %></td>
                </tr>
                <tr>
                    <th width="30%">UserName</th>
                    <td width="2%">:</td>
                    <td><%= rs.getString(4) %></td>
                </tr>
                <tr>
                    <th width="30%">Password</th>
                    <td width="2%">:</td>
                    <td><%= rs.getString(5) %></td>
                </tr>
            </table>

            <%
            } else 
            {
                out.println("No user found with the provided username.");
            }
        } else {
            out.println("UserName not found. Please log in.");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("An error occurred. Please try again later.");
    } finally {
        // Close the ResultSet, PreparedStatement, and Connection
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (Exception e) {
            e.printStackTrace();  // This could be further improved with a logging mechanism
        }
    }
%>

</body>
<br>
<%@ include file="../component/footer.jsp" %>
</html>
