<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
     <link rel = "icon" href = "${pageContext.request.contextPath }/template/images/india.png" type = "image/x-icon"> 
       <link rel="icon" href="favicon.ico">
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
  <title>Yearwise No. of Police Stations in Uttarakhand</title>
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
    <canvas id="myChart"></canvas>
       <form action="/displaypoliceGraph1.1">
      <button id="zone">Number of Crimes Registered</button>
      </form>
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
    let myChart = document.getElementById('myChart').getContext('2d');

    // Global Options
    Chart.defaults.global.defaultFontFamily = 'Franklin Gothic Medium';
    Chart.defaults.global.defaultFontSize = 10;
    Chart.defaults.global.defaultFontColor = '#000';

    let massPopChart = new Chart(myChart, {
      type:'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
      data:{
        labels:${ruralMap.keySet()},
        datasets:[{
          label:'Rural',
          data:${ruralMap.values()},
          backgroundColor:'#00CED1',
          borderWidth:1,
          borderColor:'#777',
          hoverBorderWidth:3,
          //hoverBorderColor:'#000'
        },
        {
       	   label:'Urban',
           data:${urbanMap.values()},
           backgroundColor:'#32CD32',
           borderWidth:1,
           borderColor:'#777',
           hoverBorderWidth:3,
           //hoverBorderColor:'#000'
         },
         {
        	 label:'Total',
             data:${totalMap.values()},
             backgroundColor:'#C71585',
             borderWidth:1,
             borderColor:'#777',
             hoverBorderWidth:3,
            // hoverBorderColor:'#000'
         }
         ]
      },
      options:{
        title:{
          display:true,
          text:'Yearwise No. of Police Stations in Uttarakhand',
          fontSize:25
        },
        legend:{
          display:true,
          position:'right',
          labels:{
            fontColor:'#000'
          }
        },
        layout:{
          padding:{
            left:50,
            right:0,
            bottom:0,
            top:0
          }
        },
        scales:{
        yAxes: [{
                display: true,
                scaleLabel: {
               	 display: true,
               	 labelString: 'Number of Police Stations',
               	  fontSize: 20
                } 
            }],
            xAxes: [{
            	 scaleLabel: {
           		  display: true,
           	  labelString: 'Year',
           	  fontSize: 20
           	  }
            }]
    },
        tooltips:{
          enabled:true
        }
      }
    });
  </script>
</body>
</html>