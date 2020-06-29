<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Directorate of Economics & Statistics-DEPARTMENTS</title>
<link rel="icon"
	href="${pageContext.request.contextPath }/template/images/india.png"
	type="image/x-icon">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/template/css/login.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/template/css/department.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/template/css/footer.css"
	type="text/css">
<script src="https://kit.fontawesome.com/7fc0c7085f.js"
	crossorigin="anonymous"></script>
<link rel="icon" href="favicon.ico">
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

	<!-- MIDSECTION -->

	<div class="midsection">
        <h1 class="department-midsection-text">Department: Education</h1>
        <div class="department-card">
          <a href="/displayeducationGraph1">
            <p class="card-title">Districtwise Degree/P.G Colleges</p>
          </a>
        </div>
        <div class="department-card">
          <a href="/displayeducationGraph2">
            <p class="card-title">Yearwise Students in Educational Institutions</p>
          </a>
        </div>
	</div>
	
	<!-- FOOTER SECTION -->
	<!-- FOOTER SECTION -->
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
	<script>
		function hamburgerMenuShowFunction() {
			console.log("called")
			var x = document.getElementById("navbarList");
			if (x.style.display === "block") {
				x.style.display = "none";
			} else {
				x.style.display = "block";
			}
		}
	</script>

</body>

</html>