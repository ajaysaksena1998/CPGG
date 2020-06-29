<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Directorate of Economics & Statistics-DEPARTMENTS</title>
    <link rel = "icon" href = "${pageContext.request.contextPath }/template/images/india.png" type = "image/x-icon"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/agriculture.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/footer.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/style.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    
    <script src="https://kit.fontawesome.com/7fc0c7085f.js" crossorigin="anonymous"></script>
    <link rel="icon" href="favicon.ico">
    <script>
     function func(){
    	 alert("All the values have been approved for the below tabel.")
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
            <li class="navbar-list-items"><a href="/login" class="navbar-link">Home</a></li>
                                    <li class="navbar-list-items"><a href="/secondPage" class="navbar-link">Dashboard</a></li>
            
                        <li class="navbar-list-items"><a href="/userapp" class="navbar-link">User Approval</a></li>
            <!-- <li class="navbar-list-items" ><a target="_blank" href="/secondpage.html" class="navbar-link">Dasboard</a></li>
            <li class="navbar-list-items" ><a target="_blank" href="/mainPage.html" class="navbar-link">Des Uttarakhand</a></li>-->
            <li class="navbar-list-items" ><a class="select-language-button" style="text-decoration: none;" href="/">Log Out</a></li>
        </ul>
    </div>

    <div class="midsection">
        <h1 class="department-midsection-text">Department: National Small Savings</h1>
        
        <div class="container">
            <h2>Choose from Table:</h2>

            <div class="select-box">
                <div class="options-container">
                    <div class="option">
                        <input type="radio" class="radio" id="id01" name="category" />
                        <label class="lbl" for="id01">Districtwise Net Deposits in National Small Savings</label>
                    </div>
                </div>

                <div class="selected">
                    Select Table
                </div>
            </div>
        </div>
<!--Table Form-->
        <form id="institution_district" method="POST" class="input-form">
            <h1 class="heading">Districtwise Net Deposits in National Small Savings</h1>
    
            <div class="container">
<table class="table">
<thead>
		<tr>
		    
<!-- 			<th width="10%" scope="col">Location Category</th>
			<th width="10%" scope="col">Location ID</th> -->
			<th width="10%" scope="col">Year</th>
			<th width="10%" scope="col">District</th>
			<th width="10%" scope="col">Net Deposit</th>
			<th width="10%" scope="col">Preview</th>
			
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="list">
			<tr>
			    <th scope="row">${list.year }</th>
			    <th scope="row">${list.district }</th>
				<td>${list.net_deposit }</td>
				 <td><button class="btn btn-primary"><a href="/previewnss/${list.id }" style="color: white;">Preview</a></button></td>
				<!-- <td><button class="btn btn-danger">Decline</button></td> -->
				
			</tr>
		</c:forEach>
		</tbody>
		</table>
				<button class="btn btn-success"><a href="/nssapproved" style="color: white;" onclick="func();">Approve</a></button>
		</div>
        </form>

       

        <!-- FOOTER SECTION -->
    <footer class="footer-distributed">
 
        <div class="footer-left">   
        
            <h3>About</h3>
            <h3><span style="color:#506AE4">Uttarakhand</span></h3>
            <p class="footer-links">
                <a href="#">Home</a> | <a href="#">Department</a> | <a href="#">Contact</a>
            </p>

            <p class="footer-company-name">© Government of Uttarakhand, All rights reserved</p>
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
        const selected = document.querySelector(".selected");
        const optionsContainer = document.querySelector(".options-container");

        const optionsList = document.querySelectorAll(".option");

        selected.addEventListener("click", () => {
            optionsContainer.classList.toggle("active");
        });

        optionsList.forEach(o => {
            o.addEventListener("click", () => {
                selected.innerHTML = o.querySelector("label").innerHTML;
                optionsContainer.classList.remove("active");
            });
        });

        function hamburgerMenuShowFunction() {
            console.log("called")
            var x = document.getElementById("navbarList");
            if (x.style.display === "block") {
                x.style.display = "none";
            } else {
                x.style.display = "block";
            }
        }

        function myFunction() {
            var x = document.querySelectorAll(".input-form");
            x.forEach(val => {
                val.style.display = "none";
            })
        }

        document.getElementById("id01").addEventListener("click", () => {
            myFunction();
            document.getElementById("institution_district").style.display = "block"
        });

        document.getElementById("id02").addEventListener("click", () => {
            myFunction();
            document.getElementById("institution_year").style.display = "block"
        });

        document.getElementById("id03").addEventListener("click", () => {
            myFunction();
            document.getElementById("polytechnic_district").style.display = "block"
        });

        document.getElementById("id04").addEventListener("click", () => {
            myFunction();
            document.getElementById("polytechnic_year").style.display = "block"
        });

        document.getElementById("id05").addEventListener("click", () => {
            myFunction();
            document.getElementById("polytechniciti_admissions_district").style.display = "block"
        });

        document.getElementById("id06").addEventListener("click", () => {
            myFunction();
            document.getElementById("polytechniciti_admissions_year").style.display = "block"
        });

        document.getElementById("id07").addEventListener("click", () => {
            myFunction();
            document.getElementById("pupil_teacher_ratio_district").style.display = "block"
        });

        document.getElementById("id08").addEventListener("click", () => {
            myFunction();
            document.getElementById("pupil_teacher_ratio_year").style.display = "block"
        });

        document.getElementById("id09").addEventListener("click", () => {
            myFunction();
            document.getElementById("students_district").style.display = "block"
        });

        document.getElementById("id10").addEventListener("click", () => {
            myFunction();
            document.getElementById("students_year").style.display = "block"
        });

</script>

</body>

</html>