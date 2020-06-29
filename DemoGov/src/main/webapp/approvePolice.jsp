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
        <h1 class="department-midsection-text">Departments: Police & Crimes</h1>
        
        <div class="container">
            <h2>Choose from Table:</h2>

            <div class="select-box">
                <div class="options-container">
                    <div class="option">
                        <input type="radio" class="radio" id="id01" name="category" />
                        <label class="lbl" for="id01">Yearwise No. of Police Stations & Registered Crimes in Uttarakhand</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id02" name="category" />
                        <label class="lbl" for="id02">Institution Year</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id03" name="category" />
                        <label class="lbl" for="id03">Polytechnic District</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id04" name="category" />
                        <label class="lbl" for="id04">Polytechnic Year</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id05" name="category" />
                        <label class="lbl" for="id05">Polytechnic Admissions District</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id06" name="category" />
                        <label class="lbl" for="id06">Polytechnic Admissions Year</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id07" name="category" />
                        <label class="lbl" for="id07">Pupil Teacher Ratio District</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id08" name="category" />
                        <label class="lbl" for="id08">Pupil Teacher Ratio Year</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id09" name="category" />
                        <label class="lbl" for="id09">Students District</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id10" name="category" />
                        <label class="lbl" for="id10">Students Year</label>
                    </div>
                </div>

                <div class="selected">
                    Select Table
                </div>
            </div>
        </div>
<!--Table Form-->
        <form id="institution_district" method="POST" class="input-form">
            <h1 class="heading">Yearwise No. of Police Stations & Registered Crimes in Uttarakhand:</h1>
    
            <div class="container">
<table class="table">
<thead>
		<tr>
		    
<!-- 			<th width="10%" scope="col">Location Category</th>
			<th width="10%" scope="col">Location ID</th> -->
			<th width="10%" scope="col">Year</th>
			<th width="10%" scope="col">Police Stations Rural</th>
			<th width="10%" scope="col">Police Stations Urban</th>
			<th width="10%" scope="col">Police Stations Total</th>
			<th width="10%" scope="col">Robbery</th>
			<th width="10%" scope="col">Murder</th>
			<th width="10%" scope="col">Kidnapping</th>
			<th width="10%" scope="col">Theft</th>
			<th width="10%" scope="col">Riots</th>
			<th width="10%" scope="col">Harrassment of SC/ST</th>
			<th width="10%" scope="col">Other Crimes</th>
			<th width="10%" scope="col">Preview</th>
			
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="list">
			<tr>
			    <th scope="row">${list.year }</th>
				<td>${list.policestations_rural }</td>
				<td>${list.policestations_urban }</td>
				<td>${list.policestations_total}</td>
				<td>${list.robbery }</td>
				<td>${list.murder }</td>
				<td>${list.kidnapping }</td>
				<td>${list.theft }</td>
				<td>${list.riots }</td>
				<td>${list.harrassment_of_sc_st }</td>
				<td>${list.other_crimes }</td>
				 <td><button class="btn btn-primary"><a href="/previewPolice1/${list.id }" style="color: white;">Preview</a></button></td>
				<!-- <td><button class="btn btn-danger">Decline</button></td> -->
				
			</tr>
		</c:forEach>
		</tbody>
		</table>
				<button class="btn btn-success"><a href="/policeApproved" style="color: white;" onclick="func();">Approve</a></button>
		</div>
        </form>

        <!-- 
        <form action="/institution_year" method="post" id="institution_year" class="input-form">
            <h1 class="heading">Institution Year:</h1>

            <label for="Year" class="input-labels"><b>Year:</b></label>
            <input type="text" name="Year" class="input-fields">

            <label for="Junior_Basic_Schools" class="input-labels"><b>Junior Basic Schools:</b></label>
            <input type="text" name="Junior_Basic_Schools" class="input-fields">

            <label for="Senior_Secondary" class="input-labels"><b>Senior Secondary:</b></label>
            <input type="text" name="Senior_Secondary" class="input-fields">

            <label for="Degree" class="input-labels"><b>Degree:</b></label>
            <input type="text" name="Degree" class="input-fields">

            <label for="Universities" class="input-labels"><b>Universities:</b></label>
            <input type="text" name="Universities" class="input-fields">

            <label for="Deemed_Universities" class="input-labels"><b>Deemed Universities:</b></label>
            <input type="text" name="Deemed_Universities" class="input-fields">

            <label for="IIT" class="input-labels"><b>IIT:</b></label>
            <input type="text" name="IIT" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        Table 3 (Polytechnic District)
        <form action="/polytechnic_district" id="polytechnic_district" method="post" class="input-form">
            <h1 class="heading">Polytechnic District:</h1>

            <label for="Year" class="input-labels"><b>Year:</b></label>
            <input type="text" name="Year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <select name="district" id="Dis-select">
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

            <label for="Polytechnic" class="input-labels"><b>Polytechnic:</b></label>
            <input type="text" name="Polytechnic" class="input-fields">

            <label for="Industrial_Training_Institutes" class="input-labels"><b>Industrial Training Institutes:</b></label>
            <input type="text" name="Industrial_Training_Institutes" class="input-fields">

            <label for="Teachers_Training_Institutes" class="input-labels"><b>Teachers Training Institutes:</b></label>
            <input type="text" name="Teachers_Training_Institutes" class="input-fields">

            <label for="Engineering_colleges" class="input-labels"><b>Engineering Colleges:</b></label>
            <input type="text" name="Engineering_colleges" class="input-fields">

            <label for="IIT_Roorkee" class="input-labels"><b>IIT Roorkee:</b></label>
            <input type="text" name="IIT_Roorkee" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        table 4 (Polytechnic Year)
        <form action="/polytechnic_year" id="polytechnic_year" method="post" class="input-form">
            <h1 class="heading">Polytechnic Year:</h1>

            <label for="Year" class="input-labels"><b>Year:</b></label>
            <input type="text" name="Year" class="input-fields">

            <label for="Polytechnic" class="input-labels"><b>Polytechnic:</b></label>
            <input type="text" name="Polytechnic" class="input-fields">

            <label for="Industrial_Training_Institutes" class="input-labels"><b>Industrial Training Institutes:</b></label>
            <input type="text" name="Industrial_Training_Institutes" class="input-fields">

            <label for="Teachers_Training_Institutes" class="input-labels"><b>Teachers Training Institutes:</b></label>
            <input type="text" name="Teachers_Training_Institutes" class="input-fields">

            <label for="Engineering_colleges" class="input-labels"><b>Engineering Colleges:</b></label>
            <input type="text" name="Engineering_colleges" class="input-fields">

            <label for="IIT_Roorkee" class="input-labels"><b>IIT Roorkee:</b></label>
            <input type="text" name="IIT_Roorkee" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        Table 5 (Polytechniciti Admissions District)
        <form action="/polytechniciti_admissions_district" id="polytechniciti_admissions_district" method="post" class="input-form">
            <h1 class="heading">Polytechnic Admissions District:</h1>

            <label for="Year" class="input-labels"><b>Year:</b></label>
            <input type="text" name="Year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <select name="district" id="Dis-select">
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

            <label for="Polytechnic" class="input-labels"><b>Polytechnic:</b></label>
            <input type="text" name="Polytechnic" class="input-fields">

            <label for="Industrial_Training_Institutes" class="input-labels"><b>Industrial Training Institutes:</b></label>
            <input type="text" name="Industrial_Training_Institutes" class="input-fields">

            <label for="District_Institute_of_Educational_and_Training" class="input-labels"><b>District Institute of Educational and Training:</b></label>
            <input type="text" name="District_Institute_of_Educational_and_Training" class="input-fields">

            <label for="Engineering_colleges" class="input-labels"><b>Engineering Colleges:</b></label>
            <input type="text" name="Engineering_colleges" class="input-fields">

            <label for="IIT_Roorkee" class="input-labels"><b>IIT Roorkee:</b></label>
            <input type="text" name="IIT_Roorkee" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        Table 6 (Polytechniciti Admissions Year)
        <form action="/polytechniciti_admissions_year" id="polytechniciti_admissions_year" method="post" class="input-form">
            <h1 class="heading">Polytechnic Admissions Year:</h1>

            <label for="Year" class="input-labels"><b>Year:</b></label>
            <input type="text" name="Year" class="input-fields">

            <label for="Polytechnic" class="input-labels"><b>Polytechnic:</b></label>
            <input type="text" name="Polytechnic" class="input-fields">

            <label for="Industrial_Training_Institutes" class="input-labels"><b>Industrial Training Institutes:</b></label>
            <input type="text" name="Industrial_Training_Institutes" class="input-fields">

            <label for="District_Institute_of_Educational_and_Training" class="input-labels"><b>District Institute of Educational and Training:</b></label>
            <input type="text" name="District_Institute_of_Educational_and_Training" class="input-fields">

            <label for="Engineering_colleges" class="input-labels"><b>Engineering Colleges:</b></label>
            <input type="text" name="Engineering_colleges" class="input-fields">

            <label for="IIT_Roorkee" class="input-labels"><b>IIT Roorkee:</b></label>
            <input type="text" name="IIT_Roorkee" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        Table 7 (Pupil Teacher Ratio District)
        <form action="/pupil_teacher_ratio_district" id="pupil_teacher_ratio_district" method="post" class="input-form">
            <h1 class="heading">Pupil Teacher Ratio District:</h1>

            <label for="Year" class="input-labels"><b>Year:</b></label>
            <input type="text" name="Year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <select name="district" id="Dis-select">
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

            <label for="Junior_Basic_Schools" class="input-labels"><b>Junior Basic Schools:</b></label>
            <input type="text" name="Junior_Basic_Schools" class="input-fields">

            <label for="Senior_Basic_Schools" class="input-labels"><b>Senior Basic Schools:</b></label>
            <input type="text" name="Senior_Basic_Schools" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        table 8 (Pupil Teacher Ratio Year)
        <form action="/pupil_teacher_ratio_year" id="pupil_teacher_ratio_year" method="post" class="input-form">
            <h1 class="heading">Pupil Teacher Ratio Year:</h1>

            <label for="Year" class="input-labels"><b>Year:</b></label>
            <input type="text" name="Year" class="input-fields">

            <label for="Junior_Basic_Schools" class="input-labels"><b>Junior Basic Schools:</b></label>
            <input type="text" name="Junior_Basic_Schools" class="input-fields">

            <label for="Senior_Basic_Schools" class="input-labels"><b>Senior Basic Schools:</b></label>
            <input type="text" name="Senior_Basic_Schools" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        table 9(Students District)
        <form action="/students_district" id="students_district" method="post" class="input-form">
            <h1 class="heading">Students District:</h1>

            <label for="Year" class="input-labels"><b>Year:</b></label>
            <input type="text" name="Year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <select name="district" id="Dis-select">
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

            <label for="Junior_Basic_Schools" class="input-labels"><b>Junior Basic Schools:</b></label>
            <input type="text" name="Junior_Basic_Schools" class="input-fields">

            <label for="Senior_Basic_Schools" class="input-labels"><b>Senior Basic Schools:</b></label>
            <input type="text" name="Senior_Basic_Schools" class="input-fields">

            <label for="Senior_Secondary" class="input-labels"><b>Senior Secondary:</b></label>
            <input type="text" name="Senior_Secondary" class="input-fields">

            <label for="Degree_Universities" class="input-labels"><b>Degree Universities:</b></label>
            <input type="text" name="Degree_Universities" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        table 10(Students Year)
        <form action="/students_year" id="students_year" method="post" class="input-form">
            <h1 class="heading">Students Year:</h1>

            <label for="Year" class="input-labels"><b>Year:</b></label>
            <input type="text" name="Year" class="input-fields">

            <label for="Junior_Basic_Schools" class="input-labels"><b>Junior Basic Schools:</b></label>
            <input type="text" name="Junior_Basic_Schools" class="input-fields">

            <label for="Senior_Basic_Schools" class="input-labels"><b>Senior Basic Schools:</b></label>
            <input type="text" name="Senior_Basic_Schools" class="input-fields">

            <label for="Senior_Secondary" class="input-labels"><b>Senior Secondary:</b></label>
            <input type="text" name="Senior_Secondary" class="input-fields">

            <label for="Degree_Universities" class="input-labels"><b>Degree Universities:</b></label>
            <input type="text" name="Degree_Universities" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>-->
        </div> 

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