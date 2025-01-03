
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keyword" content="bcs|bca|bba|BE|mcs|mca" />
    <meta name = "description" content = "TechStreet is an IT Training Institute" >
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    
    <link rel="icon" href="../images/TechStreet2.png" type="image/x-icon">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

    <style>
        #menu_bg:hover{
            background-color: rgb(27, 7, 126);
        }

    </style>
    <script>
          function show()
          {
             alert("We will Back Soon !!")
          }
    </script>

    <title>TechStreet, Pune</title>

   
</head>
<body>
  
  <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top " >

    <div class="row justify-content-md-center ">

      <div class="col-md-3">
    
          <a class="navbar-brand" href="./home.jsp">
            <img class ="pl-2" src="../images/TechStreet2.png" width="90" height="90" alt="" style="border-radius: 30%; "/>
            <div class="navbar-brand pl-2" >
                <div class="font-weight-normal text-left"
                            style="color: #050942; font-weight: 900; font-size:65%;"></div>
              <div class="h1 pt-0" style="color: #050942; font-weight: 900; font-size:100%;"><b>TechStreet Academy</b></div>
              <div class="font-weight-normal text-right" style="color: #050942; font-weight: 900; font-size:65%;">An IT Training Institute</div>
             </div>
          </a>
      </div>
      <div class="col-md-1"></div>
      <div class="col-md-3 pt-2">

          <div class="navbar navbar-nav mx-auto " style="padding-left: 15%;">
           <table class="navbar-nav">
              <tr >
              <td class="nav-item ">
                <a href="https://www.facebook.com/profile.php?id=61560051466703" target="_blank"><i class="fa fa-facebook-f" style="font-size:30px;color:#050942; padding-left: 25px; "></i></a>
              </td>
             
              <td class="nav-item ">
                <a href="https://www.youtube.com/@TechStreet-wr8ob" target="_blank">
                    <i class="fa fa-youtube-play " style="font-size:30px;color:red; padding-left: 25px; "></i>
                </a>
              </td>
                <td class="nav-item ">
                  <a href="https://www.instagram.com/techstreet51/" >
                  <i class="fa fa-instagram" style="font-size:30px;color:#cd486b; padding-left: 25px;"></i>
                   </a> 
                </td>
            
                <td class="nav-item ">
                  <a href=" https://wa.me/919607603959" target="_blank">
                    <i class="fa fa-whatsapp" style="font-size:30px;color:#25D366; padding-left: 25px;"></i>
                  </a>
                </td>
                </tr>
              </table>
              
            </div>
        </div>
        
        <div class="col-md-5 pt-3">
            <div class="collapse navbar-collapse ml-auto" id="navbarNav">
            <div class="navbar-nav  ml-auto" >
              <a href="https://web.whatsapp.com/">
                <i class="fa fa-phone" style="font-size:18px;color:#050942; padding-left: 18px;"> &nbsp;<b>+91-9607603959</b></i>
              </a>
              <a href="mailto:techstreet2024@gmail.com">
               <i class="fa fa-envelope" style="font-size:18px;color:rgb(5, 9, 66); padding-left: 18px;">&nbsp;<b> techstreet2024@gmail.com</b></i>
              </a>
             </div>
             </div>
        </div>     <!-- End of row logo social phno email-->
      
      <div class="w-100"></div>
      
      <div class="col-12">
  
        <!-- Menubar -->
  
      
            <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="background-color: #050942;">
          <div class="navbar-nav" >
              <a id="menu_bg" class="nav-link" href="./studentInformation.jsp" style="color: white; padding-left: 20px; font-size: 15px;">Student Information </a>

              <a id="menu_bg" class="nav-link" href="./studentdelete.jsp" style="color: white; padding-left: 20px;" >Student Delete</a>
              <a id="menu_bg" class="nav-link" href="./studentenquiry.jsp" style="color: white; padding-left: 20px;">Student Enquiry</a>      
              
             
              <a id="menu_bg" class="nav-link" href="./addnotification.jsp" style="color: white; padding-left: 20px;">Add Notification</a>
              <a id="menu_bg" class="nav-link" href="/TechStreet-Application/jsp/index.jsp" style="color: white; padding-left: 20px;">Logout</a>

              
       
          </div>
          </div>
    </div>
    </div>
    </nav> <!-- End of Navbar which is stick top -->
</body>
</html>