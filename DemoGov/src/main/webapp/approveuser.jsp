<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Directorate of Economics & Statistics-DEPARTMENTS</title>
    <link rel = "icon" href = "${pageContext.request.contextPath }/template/images/india.png" type = "image/x-icon"> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/login.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/department.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/footer.css" type="text/css">
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/7fc0c7085f.js" crossorigin="anonymous"></script>
    <link rel="icon" href="favicon.ico">
    <script>
    function func(){
    	alert("User Request Approved")
    }
    function func2(){
    	alert("User Request Declined")
    }
    </script>
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
            <li class="navbar-list-items"><a href="/adcover" class="navbar-link">Home</a></li>
                                    <li class="navbar-list-items"><a href="/secondPage" class="navbar-link">Dashboard</a></li>
            
            <li class="navbar-list-items" ><a target="_blank" href="/initials" class="navbar-link">Entry Approval</a></li>
            <li class="navbar-list-items" ><button class="select-language-button"><a href="/" style="color: white;">Log Out</a></button></li>
        </ul>
    </div>
     <div class="midsection">
    <div class="container">
<table class="table">
<thead>
		<tr>
		    <th width="10%" scope="col">Id</th>
			<th width="10%" scope="col">L. Category</th>
			<th width="10%" scope="col">L. Name</th>
			<th width="10%" scope="col">User Name</th>
			<th width="10%" scope="col">User Email</th>
			<th width="10%" scope="col">Approve User</th>
			<th width="10%" scope="col">Decline User</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="list">
			<tr>
			    <th scope="row">${list.id }</th>
				<td>${list.loc_category }</td>
				<td>${list.loc_id }</td>
				<td>${list.name}</td>
				<td>${list.email }</td>
				<td><button class="btn btn-success"><a href="/app/${list.id }" onclick="func();" style="color: white;">Approve</a></button></td>
				<td><button class="btn btn-danger"><a href="/dec/${list.id }" onclick="func2();" style="color: white;">Decline</a></button></td>
				
			</tr>
		</c:forEach>
		</tbody>
		</table>		
		</div></div>
		<footer class="footer-distributed">
 
        <div class="footer-left">   
        
            <h3>About</h3>
            <h3><span style="color:#506AE4">Uttarakhand</span></h3>
            <p class="footer-links">
                <a href="#">Home</a> | <a href="#">Department</a> | <a href="#">Contact</a>
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