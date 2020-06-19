<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Uttarakhand Integrated Statistical System</title>
    <link rel = "icon" href = "${pageContext.request.contextPath }/template/images/india.png" type = "image/x-icon"> 
    <link href="${pageContext.request.contextPath }/template/css/frontPage.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/template/css/login.css" rel="stylesheet">
</head>
<body>
    
    <div class="front-page-navbar">
    <img src="${pageContext.request.contextPath }/template/images/uk.png" alt="uk-logo" class="main-logo" id="mainLogo">
       <!-- <a onclick="document.getElementById('loginWindow').style.display='block'" class="button button-1">User Login</a> -->
       <a href="/openlogin" class="button button-1">User Login</a>
        <!--<a href="/second page.html"  class="button button-2">Guest Login</a>
        <a href=""  class="button button-3">SAS Login </a> -->
    </div>
    <div id="loginWindow" class="login-window">
        <span onclick="document.getElementById('loginWindow').style.display='none'" class="close-login-window" title="Close Modal">
            &times;
        </span>
      
        <!-- LOGIN FORM -->
        <form class="login-window-content login-window-animate" action="/login" method="POST">
          
          <div class="container">
            <br><br>
            <label for="uname"><b>Username: </b></label>
            <input type="text" placeholder="Enter Username" name="uname" class="login-input-field" required>
            <br><br>
            <label for="psw"><b>Password: </b></label>
            <input type="password" placeholder="Enter Password" name="psw" class="login-input-field" required>
            <br><br>
            <button type="submit" class="login-button"> Login </button>
            <button type="button" class="login-cancel-button" onclick="document.getElementById('loginWindow').style.display='none'" >Cancel</button>
            <br><br>
            <label>
              <input type="checkbox" checked="checked" name="remember"> Remember me
            </label>
          </div>
      
          <div class="container" style="background-color:#f1f1f1">
              <a href="#" class="forgot-password-link">Forget Password</a>
          </div>
        </form>
    </div>
    <div class="front-page-midsection">
    <br><br><br><br><br><br>
        <h1 class="heading-1">UTTARAKHAND INTEGRATED STATISTICAL SYSTEM</h1>
        <h1 >UISS</h1>
        <hr>
        <h2>Central Data Repository</h2>
        <div class="flip-box">
        <div class="flip-box-inner">
            <div class="flip-box-front">
            <h2>Know More</h2>
            </div>
            <div class="flip-box-back">
            <h2 ><a href="/secondPage">Guest Login</a></h2>
            </div>
        </div>
        </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br>
    </div>
    <div class="front-page-footer">
        <h3>Directorate of Economics & Statastics</h3>
        <h3>General Administration Department (Planning)</h3>
        <h3>Government Of Uttarakhand</h3>
        <p> Designed and Developed by UPES(Dehradun).</p>
    </div>
    <script>
    window.onscroll = function() {myFunction()};

        function myFunction() {
          if (document.body.scrollTop > 0 || document.documentElement.scrollTop > 0) {
              console.log(document.body.scrollTop)
            document.getElementById("mainLogo").classList.add("main-logo-2");
            document.getElementById("navbarList").classList.add("navbar-list-2");
          } else {
            document.getElementById("mainLogo").classList.remove("main-logo-2");
            document.getElementById("navbarList").classList.remove("navbar-list-2");
          }
        }
        function hamburgerMenuShowFunction() {
            console.log("called")
            var x =document.getElementById("navbarList");
            if (x.style.display === "block") {
              x.style.display = "none";
            } else {
              x.style.display = "block";
            }
          }
    </script>
</body>
</html>