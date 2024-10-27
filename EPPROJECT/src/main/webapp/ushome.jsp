<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"     import="com.klef.ep.models.User" %>
    <%
    User us= (User)session.getAttribute("us");
    if(us == null)
    {
    	response.sendRedirect("sessionexpiry.html");
    }
    %>
<!DOCTYPE html>
<head><meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel Booking Services</title>

    <link rel="stylesheet" href="style1.css">

    <!-- Bootstrap Link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Bootstrap Link -->


    <!-- Font Awesome Cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <!-- Font Awesome Cdn -->


    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">
    <!-- Google Fonts --></head>
<body>
 <!-- Navbar Start -->
 <nav class="navbar navbar-expand-lg" id="navbar">
    <div class="container">
      <a class="navbar-brand" href="home.html" id="logo"><span>T</span>ravel</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
        <span><i class="fa-solid fa-bars"></i></span>
      </button>
      <div class="collapse navbar-collapse" id="mynavbar">
        <ul class="navbar-nav me-auto">
          <li class="nav-item">
            <a class="nav-link active" href="index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="package.html">Packages</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="gallery.html">Gallary</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.html">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="ushome.jsp">User Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="usprofile.jsp">User Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="uslogout.jsp">Logout</a>
 
         
        </ul>
      </div>
    </div>
  </nav>
<!-- Navbar End -->

<!-- About Start -->
<section class="about" id="about">
    <div class="container">
      <div class="main-txt">
        <h1>About <span>Us</span></h1>
      </div>

      <div class="row" style="margin-top: 40px;">

        <div class="col-md-6 py-3 py-md-0">
          <div class="card">
            <img src="./images/about-img.png" alt="">
          </div>
        </div>

        <div class="col-md-6 py-3 py-md-0">
          <h2>How Travel Agency Work</h2>
          <p>The company itself is a very successful company. They provide for the suffering of pain, but never for the sake of being born with blissful pleasure, they often forsake the practice, which is easier than you can see, but the least of these rights. Those who praise the openness of life, there are no other harsher things, nothing will happen to bear them, we charge him with some duties for</p>
          <button id="about-btn">Read More...</button>
        </div>

      </div>

    </div>
  </section>
  <!-- About End -->


<!-- Section Services Start -->
<section class="services" id="services">
    <div class="container">

      <div class="main-txt">
        <h1><span>S</span>ervices  We also provide</h1>
      </div>

      <div class="row" style="margin-top: 30px;">

        <div class="col-md-4 py-3 py-md-0">

          <div class="card">
            <i class="fas fa-hotel"></i>
            <div class="card-body">
              <h3>Affordable Hotel</h3>
              <p>Book the best hotels in the country</p>
            </div>
          </div>

        </div>
        <div class="col-md-4 py-3 py-md-0">

          <div class="card">
            <i class="fas fa-utensils"></i>
            <div class="card-body">
              <h3>Food & Drinks</h3>
              <p>Enoy the Food and Drinks from the best Restaurants</p>
            </div>
          </div>

        </div>
        <div class="col-md-4 py-3 py-md-0">

          <div class="card">
            <i class="fas fa-bullhorn"></i>
            <div class="card-body">
              <h3>Safty Guide</h3>
              <p>Follow these rules for your security during any situations</p>
            </div>
          </div>

        </div>



      </div>


      <div class="row" style="margin-top: 30px;">

        <div class="col-md-4 py-3 py-md-0">

          <div class="card">
            <i class="fas fa-globe-asia"></i>
            <div class="card-body">
              <h3>Around The World</h3>
              <p>The world is so beautiful and waiting for you to visit.</p>
            </div>
          </div>

        </div>
        <div class="col-md-4 py-3 py-md-0">

          <div class="card">
            <i class="fas fa-plane"></i>
            <div class="card-body">
              <h3>Fastest Travel</h3>
              <p>We provide the best and fastest travel servise to your favorite desitination.</p>
            </div>
          </div>

        </div>
        <div class="col-md-4 py-3 py-md-0">

          <div class="card">
            <i class="fas fa-hiking"></i>
            <div class="card-body">
              <h3>Adventures</h3>
              <p>The  world of adventure awaits for you and enjoy the adventure</p>
            </div>
          </div>

        </div>



      </div>

    </div>
  </section>
  <!-- Section Services End -->



    <!-- Footer Start -->
    <footer id="footer">
        <h1><span>T</span>ravel</h1>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus fugiat, ipsa quos nulla qui alias.</p>
        <div class="social-links">
          <i class="fa-brands fa-twitter"></i>
          <i class="fa-brands fa-facebook"></i>
          <i class="fa-brands fa-instagram"></i>
          <i class="fa-brands fa-youtube"></i>
          <i class="fa-brands fa-pinterest-p"></i>
        </div>
        <div class="credit">
          <p>Designed By <a href="#">SA Coding</a></p>
        </div>
        <div class="copyright">
          <p>&copy;Copyright SA Coding. All Rights Reserved</p>
        </div>
      </footer>
      <!-- Footer End -->
  
  
  
  
  
  
  
      
  
  
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  
</body>
</html>