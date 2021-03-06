<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agriculture Entry Form</title>
    <link rel = "icon" href = "images/india.png" type = "image/x-icon"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/navbar.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/form.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/footer.css" type="text/css">
    <script src="https://kit.fontawesome.com/7fc0c7085f.js" crossorigin="anonymous"></script>
    <link rel="icon" href="favicon.ico">

</head>
<body>
    <!-- navbar -->
    <div class="nav-bar">
        <img src="${pageContext.request.contextPath }/template/images/uk.png" alt="uk-logo" class="main-logo" id="mainLogo">
        <p class="navbar-text">Directorate of Economics & Statistics | Uttarakhand</p>
        <!-- <p  class="navbar-text-part1">Directorate of Economics & Statistics</p>
        <hr class="navbar-hr">
        <p  class="navbar-text-part2">Government of Uttarakhand</p> -->
        <!-- HAMURGER MENU ICON -->
        <div class="hamburger-menu" onclick="hamburgerMenuShowFunction()">
            <a  class="icon" >
                <i class="fas fa-bars"></i>
            </a>
        </div>
        <ul class="navbar-list" id="navbarList">
            <li class="navbar-list-items"><a href="/index.html" class="navbar-link">HOME</a></li>
                        <li class="navbar-list-items"><a href="/secondPage" class="navbar-link">Dashboard</a></li>
            <li class="navbar-list-items" ><a target="_blank" href="/mainPage.html" class="navbar-link">DES UTTRAKHAND</a></li>
            <!-- <li class="navbar-list-items"><a target="_blank" href="" class="navbar-link">CONTACT US</a></li> -->
            <!-- <li class="navbar-list-items"><a target="_blank" href="" class="navbar-link">FEEDBACK</a></li> -->
        </ul>
    </div>

    <!-- MIDSECTION -->
    <div class="midsection">
        <form action="/agritable1" method="POST" class="input-form">
            <h1 class="heading">Enter the values here</h1>
            
            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" value="2"  name="loc_category" class="input-fields" readonly>
            
            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" value="2"  name="loc_id" class="input-fields" readonly>
    
            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="text"  name="year" class="input-fields" required >
    
            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text"  name="district" class="input-fields" required>
    
            <label for="area" class="input-labels"><b>Area:</b></label>
            <input type="text"  name="area" class="input-fields" required>
    
            <label for="production" class="input-labels"><b>Production:</b></label>
            <input type="text"  name="production" class="input-fields" required>
    
            <button type="submit" class="submit-button">Submit</button>
        </form>
    </div>
    

    <!-- FOOTER SECTION -->
    <footer class="footer-distributed">
 
        <div class="footer-left">   
        
            <h3>About</h3>
            <h3><span style="color:#506AE4">Uttarakhand</span></h3>
            <p class="footer-links">
                <a href="#">HOME</a> | <a href="#">DEPARTMENT</a> | <a href="#">Contact</a>
            </p>

            <p class="footer-company-name">� Government of Uttarakhand, All rights reserved</p>
        </div>

        <div class="footer-center">
            <div>
                <i class="fa fa-map-marker"></i>
                  <p><span>Dehardun,Uttarakhand (248007)
                     </p>
            </div>

            <div>
                <i class="fa fa-phone"></i>
                <p>+91 123-4567-890</p>
            </div>
            <div>
                <i class="fa fa-envelope"></i>
                <p ><a style="color:#506AE4" href="mailto:support@uk.gov.in">support@uk.gov.in</a></p>
            </div>
        </div>
        <div class="footer-right">
            <p class="footer-company-about">
                <span>About this Website</span>
                Contents published in this website are managed and maintained by the team of UPES. For any queries please refer to the developer in the contact us tab.</p>
            <div class="footer-icons">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-instagram"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
                <a href="#"><i class="fa fa-youtube"></i></a>
            </div>
        </div>
    </footer>

    <script>
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