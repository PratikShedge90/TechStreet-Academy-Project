<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Videos</title>
    
<%@ include file= "../component/css.jsp" %>

  </head>
  <body>
    
    <%@ include file= "../component/navbar.jsp" %>
    
    
                <h3 style="text-align: center; margin-top: 10px;">Welcome to TechStreet Academy</h3>
                <div class="container-fluid mt-2 mb-5 p-5 common-div-bg div-svgimg-bg">
                    <div class="container text-center">
                        <h2> <img src="../img/laptopimg.webp" width="60" /> Free Courses </h2>
                        <p style="color: rgb(57, 57, 57);">Unlock <strong>Free Learning</strong> : Learn Web technologies and More at No Cost on Youtube</p>
            
                        <div class="row g-4">
                            <!-- Course Card 1 -->
                            <div class="col-lg-3 col-md-6 col-12">
                                <div class="card course-card">
                                    <img src="../img/htmlcss.jpg"
                                        class="card-img-top" alt="Course Image">
                                    <div class="course-card-body">
                                        <h5 class="free-course-card-title">HTML & CSS</h5>
                                        
                                    </div>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item course-card-text">
                                            <span class="course-card-text"><i class="bi bi-book-fill"></i> &nbsp; <span class="text-secondary">Lectures :</span>
                                                180</span> <br />
                                            <span class="course-card-text"><i class="bi bi-wallet-fill"></i> &nbsp; <span class="text-secondary">Price :</span>
                                                Free</span> <br />
                                        </li>
                                    </ul>
                                    <div class="d-flex justify-content-center my-3">
                                        <a href="" class="btn btn-primary course-card-body card-link">
                                            Start Course
                                        </a>
                                        </div>
                                </div>
                            </div>
                                   <!-- Course Card 2 -->
                <div class="col-lg-3 col-md-6 col-12">
                    <div class="card course-card">
                        <img src="../img/jss.jpeg"
                            class="card-img-top" alt="Course Image">
                        <div class="course-card-body">
                            <h5 class="free-course-card-title">Javascript</h5>
                
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item course-card-text">
                                <span class="course-card-text"><i class="bi bi-book-fill"></i> &nbsp; <span class="text-secondary">Lectures :</span>
                                    24</span> <br />
                                <span class="course-card-text"><i class="bi bi-wallet-fill"></i> &nbsp; <span class="text-secondary">Price :</span>
                                    Free</span> <br />
                            </li>
                        </ul>
                        <div class="d-flex justify-content-center my-3">
                            <a href="" class="btn btn-primary course-card-body card-link">
                                Start Course
                            </a>
                            </div>
                    </div>
                </div>
                       <!-- Course Card 2 -->
                       <div class="col-lg-3 col-md-6 col-12">
                        <div class="card course-card">
                            <img src="../img/Bootstrap.jpg"
                                class="card-img-top" alt="Course Image">
                            <div class="course-card-body">
                                <h5 class="free-course-card-title">Bootstrap</h5>
                                
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item course-card-text">
                                    <span class="course-card-text"><i class="bi bi-book-fill"></i> &nbsp; <span class="text-secondary">Lectures :</span>
                                        24</span> <br />
                                    <span class="course-card-text"><i class="bi bi-wallet-fill"></i> &nbsp; <span class="text-secondary">Price :</span>
                                        Free</span> <br />
                                </li>
                            </ul>
                            <div class="d-flex justify-content-center my-3">
                                <a href="" class="btn btn-primary course-card-body card-link">
                                    Start Course
                                </a>
                                </div>
                        </div>
                    </div>
                           <!-- Course Card 2 -->
                <div class="col-lg-3 col-md-6 col-12">
                    <div class="card course-card">
                        <img src="../img/reactjs.png"
                            class="card-img-top" alt="Course Image">
                        <div class="course-card-body">
                            <h5 class="free-course-card-title">React js</h5>
                            
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item course-card-text">
                                <span class="course-card-text"><i class="bi bi-book-fill"></i> &nbsp; <span class="text-secondary">Lectures :</span>
                                    24</span> <br />
                                <span class="course-card-text"><i class="bi bi-wallet-fill"></i> &nbsp; <span class="text-secondary">Price :</span>
                                    Free</span> <br />
                            </li>
                        </ul>
                        <div class="d-flex justify-content-center my-3">
                        <a href="" class="btn btn-primary course-card-body card-link">
                            Start Course
                        </a>
                        </div>
                    </div>
                </div>
                      
     <%@ include file= "../component/footer.jsp" %>
 
  </body>
</html>