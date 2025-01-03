<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="../css/indexStyle.css">
</head>
<body>
    <div class="container">
        <h1>Set New Password</h1>
        <form action="../ServletController" method="post"> 
           <label for="phonenumber">Enter Your Phone Number:</label>
           <input type="text" id="phonenumber" name="phonenumber" required><br>
            
           <label for="username">Enter Your UserName Number:</label>
           <input type="text" id="username" name="username" required><br>
           
           <label for="password">Set New Password:</label>
           <input type="password" id="password" name="password" required><br>
            
           <button type="submit">Set Password </button>
           <input type="hidden" name="action" value="forgetpassword">
        </form>

        <p><a href="../css/index.html">Back to Home</a></p>         <%--- Home.html --%>
                
          <% String error = request.getParameter("error");
            if (error != null && error.equals("101")) 
            { %>
                <p style="color: red;">Invalid UserName or password. Please try again.</p>
        <% } %>
        
        <% String rs = request.getParameter("registration");
            if(rs != null && rs.equals("success")) 
           { %>   		
                <p style="color:red;"> Your Registration is SuccessFull. Please Login.</p>
          <%} %>                		
                	 
        
     </div>
</body>
</html>