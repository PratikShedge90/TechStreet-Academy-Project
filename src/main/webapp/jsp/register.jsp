<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="../css/indexStyle.css">
</head>
<body>

    <div class="container">
        <h1>Register</h1>
        
        <form action="../ServletController" method="post">
        
            <label for="fullname">FullName:</label>
            <input type="text" id="fullname" name="fullname" required><br>
            
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" required><br>
            
            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone" required><br>
            
            <label for="username">UserName:</label>
            <input type="text" id="username" name="username" required><br>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            
            <button type="submit">Register</button>
			<input type="hidden" name="action" value="registration">
       
       
        </form>
    
        <p><a href="../jsp/index.jsp">Back to Home</a></p>
        </div>
</body>
</html>