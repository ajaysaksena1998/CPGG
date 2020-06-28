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
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/template/css/agriculture.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/template/css/footer.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/template/css/style.css">
<script src="https://kit.fontawesome.com/7fc0c7085f.js"
	crossorigin="anonymous"></script>
<link rel="icon" href="favicon.ico">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script>
    function func(){
        	alert("Your values have been sent for approval. They will be uploaded once they will get approved.");
        }
    function callFunc(){
    	alert("Your file has been uploaded successfully");
    }
    </script>
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
			<li class="navbar-list-items"><a href="/login"
				class="navbar-link">Home</a></li>
			<li class="navbar-list-items"><a href="/secondPage"
				class="navbar-link">Dashboard</a></li>

			<!-- <li class="navbar-list-items" ><a target="_blank" href="/secondpage.html" class="navbar-link">Dasboard</a></li>
            <li class="navbar-list-items" ><a target="_blank" href="/mainPage.html" class="navbar-link">Des Uttarakhand</a></li>-->
			<li class="navbar-list-items"><a class="select-language-button"
				style="text-decoration: none;" href="/">Log Out</a></li>
		</ul>
	</div>

	<div class="midsection">
		<h1 class="department-midsection-text">Department: Police & Crimes</h1>

		<div class="container">
			<h2>Choose from Table:</h2>

			<div class="select-box">
				<div class="options-container">
					<div class="option">
						<input type="radio" class="radio" id="id01" name="category" /> <label
							class="lbl" for="id01">Yearwise No. Of Police Stations & Registered Crimes</label>
					</div>

					<div class="option">
						<input type="radio" class="radio" id="id02" name="category" /> <label
							class="lbl" for="id02">Districtwise No. Of Police Stations & Registered Crimes</label>
					</div>
					
				</div>

				<div class="selected">Select Table</div>
			</div>
		</div>
		<hr class="style13" id="firstline">

		<!--Table Form-->
		<form action="/police_year" id="institution_district"
			method="POST" class="input-form">
			<h1 class="heading">Yearwise No. Of Police Stations & Registered Crimes</h1>

			<label for="Year" class="input-labels"><b>Year:</b></label> <input
				type="text" id="Year" name="Year" class="input-fields" required="required">
				
				<label for="RP" class="input-labels"><b>Rural Police Stations:</b></label> <input
				type="text" id="RP" name="policestations_rural" class="input-fields" required="required">
				
				<label for="UP" class="input-labels"><b>Urban Police Stations:</b></label> <input
				type="text" id="UP" name="policestations_urban" class="input-fields" required="required">
				
				<label for="robbery" class="input-labels"><b>Robbery:</b></label> <input
				type="text" id="robbery" name="robbery" class="input-fields" required="required">
				
				<label for="murder" class="input-labels"><b>Murder:</b></label> <input
				type="text" id="murder" name="murder" class="input-fields" required="required">
				
				<label for="kidnapping" class="input-labels"><b>Kidnapping:</b></label> <input
				type="text" id="kidnapping" name="kidnapping" class="input-fields" required="required">
				
				<label for="thefts" class="input-labels"><b>Thefts:</b></label> <input
				type="text" id="thefts" name="theft" class="input-fields" required="required">
				
				<label for="riots" class="input-labels"><b>Riots:</b></label> <input
				type="text" id="riots" name="riots" class="input-fields" required="required">
				
				<label for="harrassment" class="input-labels"><b>Harrassments:</b></label> <input
				type="text" id="harrassment" name="harrassment_of_sc_st" class="input-fields" required="required">
				
				<label for="other" class="input-labels"><b>Other:</b></label> <input
				type="text" id="other" name="other_crimes" class="input-fields" required="required">
				<div>
				<div class="container">
					<button type="submit" onclick="func();" class="btn btn-success">Submit</button>
				</div>
			</div>
		</form>

		<form class="input-form" action="/policefile" method="post" id="sample" enctype="multipart/form-data">
			<h4 class="heading">Want to Upload a file?</h4>
			<div class="form-group container">
				<label for="exampleFormControlFile1">Please select your file</label>
				<input type="file" class="form-control-file"
					id="exampleFormControlFile1" name="file"><br>
				<button type="submit" onclick="callFunc()" class="btn btn-primary">File Upload</button>
			</div>

		</form>

		<hr class="style13" id="secondline">

		<!-- Table 2 (Institution Year) -->
		<form action="/institution_year" method="post" id="institution_year"
			class="input-form">
			<h1 class="heading">Districtwise No. Of Police Stations & Registered Crimes</h1>

			<label for="Year" class="input-labels"><b>Year:</b></label> <input
				type="text" id="Year" name="Year" class="input-fields" required="required">
				
				<label for="district" class="input-labels"><b>District:</b></label> <select
				name="district" id="Dis-select" required="required">
				<option value="">Please choose an District</option>
				<option value="Uttarakhand">Uttarakhand</option>
				<option value="Chamoli">Chamoli</option>
				<option value="Tehri">Tehri</option>
				<option value="Dehradun">Dehradun</option>
				<option value="Pauri">Pauri</option>
				<option value="Rudraprayag">Rudraprayag</option>
				<option value="Haridwar">Haridwar</option>
				<option value="Pithoragarh">Pithoragarh</option>
				<option value="Almora">Almora</option>
				<option value="Nanital">Nanital</option>
				<option value="Bageshwar">Bageshwar</option>
				<option value="Champawat">Champawat</option>
				<option value="US Nagar">US Nagar</option>
				<option value="Garhwal Mandal">Garhwal Mandal</option>
				<option value="Kumoun Mandal">Kumoun Mandal</option>
			</select>
				
				<label for="RP" class="input-labels"><b>Rural Police Stations:</b></label> <input
				type="text" id="RP" name="policestations_rural" class="input-fields" required="required">
				
				<label for="UP" class="input-labels"><b>Urban Police Stations:</b></label> <input
				type="text" id="UP" name="policestations_urban" class="input-fields" required="required">
				
				<label for="robbery" class="input-labels"><b>Robbery:</b></label> <input
				type="text" id="robbery" name="robbery" class="input-fields" required="required">
				
				<label for="murder" class="input-labels"><b>Murder:</b></label> <input
				type="text" id="murder" name="murder" class="input-fields" required="required">
				
				<label for="kidnapping" class="input-labels"><b>Kidnapping:</b></label> <input
				type="text" id="kidnapping" name="kidnapping" class="input-fields" required="required">
				
				<label for="thefts" class="input-labels"><b>Thefts:</b></label> <input
				type="text" id="thefts" name="theft" class="input-fields" required="required">
				
				<label for="riots" class="input-labels"><b>Riots:</b></label> <input
				type="text" id="riots" name="riots" class="input-fields" required="required">
				
				<label for="harrassment" class="input-labels"><b>Harrassments:</b></label> <input
				type="text" id="harrassment" name="harrassment_of_sc_st" class="input-fields" required="required">
				
				<label for="other" class="input-labels"><b>Other:</b></label> <input
				type="text" id="other" name="other_crimes" class="input-fields" required="required">
				<div>
				<div class="container">
					<button type="submit" onclick="func();" class="btn btn-success">Submit</button>
				</div>
			</div>

		</form>
		
		<form class="input-form" action="/uploadFile" method="post" id="sample2" enctype="multipart/form-data">
			<h4 class="heading">Want to Upload a file?</h4>
			<div class="form-group container">
				<label for="exampleFormControlFile1">Please select your file</label>
				<input type="file" class="form-control-file"
					id="exampleFormControlFile1" name="file"><br>
				<button type="submit" onclick="callFunc()" class="btn btn-primary">File Upload</button>
			</div>

		</form>
		
		<hr class="style13" id="thirdline">
		

	</div>

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

			<p class="footer-company-name">© Government of Uttarakhand, All
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
        	$("#firstline").show();
        	$("#secondline").show();
        	$('#thirdline').hide();
            myFunction();
            document.getElementById("institution_district").style.display = "block";
            document.getElementById("sample").style.display = "block";
        });

        document.getElementById("id02").addEventListener("click", () => {
         	$("#firstline").hide();
        	$("#secondline").show();
        	$('#thirdline').show();
            myFunction();
            document.getElementById("institution_year").style.display = "block";
                document.getElementById("sample2").style.display = "block";

        });

</script>

</body>

</html>