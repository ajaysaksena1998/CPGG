<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Uttarakhand Integrated Statistical System</title>
    <link rel = "icon" href = "${pageContext.request.contextPath }/template/images/india.png" type = "image/x-icon"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/secondPage.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/login.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/footer.css" type="text/css">
    <script src="https://kit.fontawesome.com/7fc0c7085f.js" crossorigin="anonymous"></script>
    <link rel="icon" href="favicon.ico">
</head>
<body>
    <div class="nav-bar">
        <img src="${pageContext.request.contextPath }/template/images/uk.png" alt="uk-logo" class="main-logo" id="mainLogo">
        <p class="navbar-text">DIRECTORATE OF ECONOMICS & STATISTICS | UTTARAKHAND</p>
        <!-- HAMURGER MENU ICON -->
        <div class="hamburger-menu" onclick="hamburgerMenuShowFunction()">
            <a  class="icon" >
                <i class="fas fa-bars"></i>
            </a>
        </div>
        <ul class="navbar-list" id="navbarList">
            <li class="navbar-list-items"><a href="/" class="navbar-link">Home</a></li>
            <li class="navbar-list-items" ><a target="_blank" href="/secondpage.html" class="navbar-link">Dasboard</a></li>
            <li class="navbar-list-items" ><a target="_blank" href="/mainPage.html" class="navbar-link">Des Uttarakhand</a></li>
            <li class="navbar-list-items" ><button class="select-language-button">Language</button></li>
        </ul>
    </div>
    
    <!-- MIDSECTION -->
    <div class="midsection">
        <h1 class="midsection-main-heading">Uttarakhand Integrated Statistical System</h1>
        <input type="search" placeholder="Search.." class="search-bar">
        <div class="side-navigation-section">
            <ul class="side-navigation-list">
                <li class="side-navigation-list-items"><a href="#population">Population</a></li>
                <li class="side-navigation-list-items"><a href="#education">Education</a></li>
                <li class="side-navigation-list-items"><a href="#industry">Industry & mining</a></li>
                <li class="side-navigation-list-items"><a href="#health">Health</a></li>
                <li class="side-navigation-list-items"><a href="#women">Women & Child Development</a></li>
                <li class="side-navigation-list-items"><a href="#others">Others</a></li>
            </ul>
        </div>
        <div class="card" id="education">
            <h3 class="card-title" >Education</h3>
            <p class="card-description">Education facilitated by learning enables acquisition of knowledge, skills, values, beliefs, and habits. . .</p>
            <a class="card-readmore-link">Read More</a>
            <img src="/template/images/Chart1.png" alt="" class="card-image">
            <a href="/departmentEducation" class="view-reports-button">VIEW REPORTS</a>
        </div>
        <div class="card" id="police">
            <h3 class="card-title" >Police & Crimes</h3>
            <p class="card-description">Police typically are responsible for maintaining public order and safety, enforcing the law, and preventing, detecting, and .. </p>
            <a class="card-readmore-link">Read More</a>
            <img src="/template/images/Chart4.png" alt="" class="card-image">
            <a href="/departmentPoliceCrime" class="view-reports-button">VIEW REPORTS</a> 
        </div>
        <div class="card" id="industry">
            <h3 class="card-title">Industry & Mining</h3>
            <p class="card-description">State is considered as industrially developed state of India. State economy has witnessed high growth trajectory. . .</p>
            <a class="card-readmore-link">Read More</a>
            <img src="/template/images/Chart2.png" alt="" class="card-image">
            <a href="/department.jsp" class="view-reports-button">VIEW REPORTS</a> 
        </div>
        <div class="card" id="health">
            <h3 class="card-title">Health</h3>
            <p class="card-description">Health care infrastructure is a vital ingredient to achieve a significant improvement in the health status. . .</p>
            <a class="card-readmore-link">Read More</a>
            <img src="/template/images/Chart3.png" alt="" class="card-image">
            <a href="/department.jsp" class="view-reports-button">VIEW REPORTS</a> 
        </div>
        <div class="card" id="women">
            <h3 class="card-title">Women & Child Development</h3>
            <p class="card-description">Uttrakhand is continuously striving towards institutionalization of a strategy to. . .</p>
            <a class="card-readmore-link">Read More</a>
            <img src="/template/images/Chart5.png" alt="" class="card-image"> 
            <a href="/department.jsp" class="view-reports-button">VIEW REPORTS</a>
        </div>
        <div class="card" id="others">
            <h3 class="card-title">Others</h3>
            <p class="card-description">In this sector, data related to Tourism, Water Supply, legal, Election etc. is made available.</p>
            <a class="card-readmore-link">Read More</a>
            <img src="/template/images/Chart6.png" alt="" class="card-image">
            <a href="/department.jsp" class="view-reports-button">VIEW REPORTS</a> 
        </div>
    </div>
    <!-- FOOTER SECTION -->
    <footer class="footer-distributed">
         <div class="footer-left">        
            <h3>About</h3>
            <h3><span style="color:#1E90FF">Uttarakhand</span></h3>
            <p class="footer-links">
                <a href="#">Home</a> | <a href="#">Department</a> | <a href="#">Contact</a>
            </p>

            <p class="footer-company-name">© Government of Uttarakhand, All rights reserved</p>
        </div>

        <div class="footer-center">
            <div>
                <i class="fa fa-map-marker"></i>
                  <p><span>Dehradun,Uttarakhand (248007)
                     </p>
            </div>

            <div>
                <i class="fa fa-phone"></i>
                <p>+91 1234567890</p>
            </div>
            <div>
                <i class="fa fa-envelope"></i>
                <p ><a style="color:#1E90FF" href="mailto:support@uk.gov.in">support@uk.gov.in</a></p>
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
    <!-- var CardTitle = ["Population","Eduction","Industry & Mining"]
        var CardDescription= ["Population simply means number of people, living at a particular area (country/region) at a particular. . .","Education facilitated by learning enables acquisition of knowledge, skills, values, beliefs, and habits. . .","State is considered as industrially developed state of India. State economy has witnessed high growth trajectory. . ."]
        var CardImage= ["Screenshot (59).png","Screenshot (60).png","Screenshot (61).png"]
        var Size = CardTitle.length;
        for(var i=0;i<Size;i++)
        {
            document.querySelector(".midsection").add
        } -->
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