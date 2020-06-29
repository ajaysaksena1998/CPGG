<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet"
	href="${pageContext.request.contextPath }/template/css/login.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/template/css/department.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/template/css/footer.css"
	type="text/css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
  <title>Districtwise Net Deposits in NSS</title>
</head>
<body>
  <div class="nav-bar">
		<img src="${pageContext.request.contextPath }/template/images/uk.png"
			alt="uk-logo" class="main-logo" id="mainLogo">
		<p class="navbar-text">DIRECTORATE OF ECONOMICS & STATISTICS |
			UTTARAKHAND</p>
		<!-- HAMURGER MENU ICON -->
		<div class="hamburger-menu" onclick="hamburgerMenuShowFunction()">
			<a class="icon"> <i class="fas fa-bars"></i>
			</a>
		</div>
		<ul class="navbar-list" id="navbarList">
			<li class="navbar-list-items"><a href="/redirect"
				class="navbar-link">Home</a></li>
			<li class="navbar-list-items"><a href="/secondPage"
				class="navbar-link">Dashboard</a></li>

			<li class="navbar-list-items"><a target="_blank"
				href="/mainPage.jsp" class="navbar-link">Des UK</a></li>
			<li class="navbar-list-items"><a class="navbar-link"
				href="/openlogin">User Login</a></li>
		</ul>
  </div>
  <div class="midsection" id="mid">
    <div class="container" id="graph">
    <canvas id="pie-chart"></canvas>
    </div>
  </div>
<footer class="footer-distributed">

  <div class="footer-left">

    <h3>About</h3>
    <h3>
      <span style="color: #506AE4">Uttarakhand</span>
    </h3>
    <p class="footer-links">
      <a href="#">Home</a> | <a href="#">Department</a> | <a href="#">Contact</a>
    </p>

    <p class="footer-company-name">� UPES, All
      rights reserved</p>
  </div>

  <div class="footer-center">
    <div>
      <i class="fa fa-map-marker"></i>
      <p>
        <span>Dehardun,Uttarakhand (248007) 
      </p>
    </div>

    <div>
      <i class="fa fa-phone"></i>
      <p>+91 123-4567-890</p>
    </div>
    <div>
      <i class="fa fa-envelope"></i>
      <p>
        <a style="color: #506AE4" href="mailto:support@uk.gov.in">support@uk.gov.in</a>
      </p>
    </div>
  </div>
  <div class="footer-right">
    <p class="footer-company-about">
      <span>About this Website</span> Contents published in this website
      are managed and maintained by the team of UPES. For any queries
      please refer to the developer in the contact us tab.
    </p>
    <div class="footer-icons">
      <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
        class="fa fa-twitter"></i></a> <a href="#"><i
        class="fa fa-instagram"></i></a> <a href="#"><i
        class="fa fa-linkedin"></i></a> <a href="#"><i
        class="fa fa-youtube"></i></a>
    </div>
  </div>
 </footer>
  <script >

    // Global Options
    Chart.defaults.global.defaultFontFamily = 'Lato';
    //Chart.defaults.global.defaultFontSize = 10;
    Chart.defaults.global.defaultFontColor = '#777';

    new Chart(document.getElementById("pie-chart"), {
        type: 'doughnut',
        data: {
          labels: ${data.keySet()},
          datasets: [{
            label: "Net Deposits",
            backgroundColor: ["#3e95cd", "#FF4500","#3cba9f","#DAA520","#c45850","#8B4513","#4B0082","#F0E68C","#800000","#808000","#FF0000","#808080","#00FFFF"],
            data: ${data.values()}
          }]
        },
        options: {
          title: {
            display: true,
            text: 'Districtwise Net Deposits in National Small Savings in Uttarakhand',
            	fontSize:25
          },
          legend:{
              display:true,
              position:'right',
              labels:{
                fontColor:'#000'
              }
            },
            responsive: true,
            maintainAspectRatio: false,



      }
        
    });
  </script>
</body>
</html>