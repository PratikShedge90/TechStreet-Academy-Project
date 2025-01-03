<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chatbot</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
   
     <!--Google Font Link for icon-->
     <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
     <script src="../Js/chatbot.js" defer></script>

     <link rel="stylesheet" href="../css/chatbot.css">
    
     <%@ include file= "../component/css.jsp" %>
</head>
<%@ include file="../component/navbar.jsp" %>
<body>

<button class="chatbot-toggler " style="margin-bottom:50px;">
        <span class="material-symbols-outlined">mode_comment</span>
        <span class="material-symbols-outlined">close</span>
    </button>
    <div class="chatbot" style="margin-bottom:50px;">
        <header>
            <h2>Chatbot</h2>
            <span class="material-symbols-outlined">close</span>
        </header>
        <ul class="chatbox ">
            <li class="chat incoming">
                <span class="material-symbols-outlined">smart_toy</span>
                <p>Hi there 👋🏻🌟 <br> How can I help you today?</p>
            </li>
          
        </ul>
        <div class="chat-input">
            <textarea placeholder="Enter a message..." required></textarea>
            <span class="material-symbols-outlined">send</span>
        </div>
    </div>
    
    <div class="container mt-5">
    <div class="row index-asp-div">
        
        <div class="col-md-7 text-container">
            <h3 class="text-dark" style="text-shadow:2px 2px 2px red;"> How to Use the Chatbot for Assistance </h3>
            <p class="mt-4" style="">
              <b>1. Access the Chatbot:</b> Click on the Help button to open the chatbot interface. <br> <br>

<b>2. Ask Your Question:</b> Type your question or describe your issue in clear, simple language. For example, "How do I submit an assignment?" or "Where can I find my enrolled courses?"  <br> <br>

<b>3. Follow the Prompts:</b> The chatbot will respond with solutions, instructions, or ask for additional details if needed. Follow any prompts or suggestions it provides.  <br> <br>

<b>4. Try Different Keywords:</b> If the chatbot doesn’t understand your question at first, try rephrasing it or using keywords related to your problem, like “grades,” “password reset,” or “profile update.”  <br> <br>

<b>5. Get Further Help if Needed:</b> If the chatbot can’t resolve your issue, it may direct you to contact support or provide an email/phone number for further assistance.  <br> <br>
            </p>
        </div>
    </div>
</div>

    
<%@ include file="../component/footer.jsp" %>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>







