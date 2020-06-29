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
        <a class="button button-1" href="/openlogin">User Login</a>
        <a href="/adminlogin" class="button button-2">Admin Login</a>
    </div>
    
    <div  class="front-page-midsection"></div>
    <div>
    <br><br><br><br><br><br><br><br>
        <h1 class="heading-1">Uttarakhand Integrated Statistical System</h1>
        <h1 >UISS</h1>
        <hr>
        <h2>Central Data Repository</h2>
        <div class="flip-box">
        <div class="flip-box-inner">
            <div class="flip-box-front">
            <h2><a>Know More</a></h2>
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
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
      var images = ["1.jpg","2.jpg", "3.jpg","4.jpg","5.jpg","6.jpg","7.jpg", "8.jpg","9.jpg","10.jpg","11.jpg","12.jpg", "13.jpg","14.jpg","15.jpg","16.jpg","17.jpg", "18.jpg","19.jpg","20.jpg","21.jpg", "22.jpg"];
      $(function () 
        {
            var i = 0;
            $(".front-page-midsection").css("background-image", "url(../template/Cover/" + images[i] + ")");
            setInterval(function () 
            {
                i++;
                if (i == images.length) {
                    i = 0;
                }
                //Changes the background picture
                $(".front-page-midsection").fadeOut("fast", function () 
                {
                    $(this).css("background-image", "url(../template/Cover/" + images[i] + ")");
                    $(this).fadeIn("slow");
                });
            }, 4000);
        });
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