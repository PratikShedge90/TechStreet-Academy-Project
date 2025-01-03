<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@ include file= "../component/css.jsp" %>

</head>
<body>
<%@ include file="../component/navbar.jsp" %>

    <div class= "container ">
    <div class=" mx-auto" style="background-color: rgba(3, 32, 700, 0.13);">
        <div class=" pt-1 pb-5 container jumbotron">
          <div class="card">
            <div class="card-header font-weight-bold" style="font-size: 18px;">
              Contact Us
            </div>
            
          <div class="container">
          <div class="row">
            <div class="col-md-6 col-sm-12 ">
      
              <div class="card-body">
                <h5 class="card-title">Office</h5>
                <p class="card-text pl-3"> Nirman Plaza, 1st Floor,Office No.6 To No.9,  <br>Gujarmala,Shirur - 412210.</p>
              </div>
              
              <div class="card-body">
                <h5 class="card-title">Contact</h5>
             <a  href="tel:919607603959" style="text-decoration: none; color: rgb(7, 33, 71);"><p class="card-text pl-3 ">+91-9607603959 / +91-8421699620</p></a>
              </div>
      
              <div class="card-body">
                <h5 class="card-title">Mail </h5>
                <p class="card-text pl-3">info@techstreet.com<br>hr@techstreet.com</p>
              </div>
            </div>
      
            <!-- Contact form -->
      
            <div class="col-md-6 col-sm-12">
              <h5 class="card-title pt-3"  style="color: #050942;">Enquiry </h5>
              
              <form method="post" action="../ServletController">
              
                <div class="form-group">
                  <input type="text" name="fname" class="form-control mb-4" placeholder="Your Full Name" required>
                  
                  <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email ID" required>
                  <small id="emailHelp" class="form-text text-muted pl-2" > We'll never share your email with anyone else.</small>
                  
                  <input type="number" name="phone" class="form-control mt-4" placeholder="Mobile Number" required>
                  <small id="emailHelp" class="form-text text-muted pl-2" > We'll never share your Contact with anyone else.</small>
                  
                  <textarea name ="msg" class="form-control mt-4" id="exampleFormControlTextarea1" rows="3" placeholder="Your Message" required></textarea>
                 
                  
                  <div class="text-center"><button type="submit" class="btn btn-dark btn-sm btn-block mt-4 mb-5" >Submit</button>
                  <input type="hidden" name="action" value="contactus">
                  
       <%
      String feedback = request.getParameter("feedback");
      if(feedback != null && feedback.equals("success"))
      {
      %>
          <p style="color: green;"> Response has been Saved Successfully, We will Contact with you Soon!!</p>
   <% }%>
      
      <% 
          String error = request.getParameter("error");
    	  if(error!=null && error.equals("2"))
    	  { %>
              <p style="color: red;"> Problem : Unable to Save Information,  Please kindly Fill the Form Again..! </p>
     
    	<% } %>  
     
                  
                  </div>
                 </div>
              </form>
            </div>
              
        </div>  <!--End of row of grid-->  
        </div>
      
        </div>
        </div> 
</div>
</div>

    
     
      
<%@ include file="../component/footer.jsp" %>
</body>
</html>