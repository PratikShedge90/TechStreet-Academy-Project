<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="../css/indexStyle.css">
</head>
<body>
    <div class="container">
        <h1>Admin Login</h1>
        <form action="../ServletController" method="post"> 
        
          <label for="username">Admin Username:</label>
            <input type="text" id="username" name="username" required><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            
            <button type="submit">Login</button>
            <input type="hidden" name="action" value="adminlogin">
            
        </form>

        <p><a href="../jsp/index.jsp">Back to Home</a></p>         <%--- index.html --%>
        
     <!--     <p><a href="../jsp/forgotPassword.jsp"> Forget Password </a></p>  -->            <%--- forgotPassword.jsp --%>
        
          <% String error = request.getParameter("error");
            if (error != null && error.equals("2")) 
            { %>
                <p style="color: red;">Invalid UserName or password. Please try again.</p>
        <% } %>           		
                	 
     </div>
</body>
</html>