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
     <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/cs.css" type="text/css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
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
            <li class="navbar-list-items"><a href="/redirect" class="navbar-link">Home</a></li>
            <li class="navbar-list-items" ><a target="_blank" href="/mainPage.jsp" class="navbar-link">Des UK</a></li>
            <li class="navbar-list-items" ><a class="navbar-link" href="/openlogin">User Login</a></li>
            <li class="navbar-list-items1" ><a target="_blank" href="/secondpage.html" class="navbar-link"><button id="google_translate_element" class="select-language-button"></a></li>
        </ul>
    </div>
    
    <!-- MIDSECTION -->
    <div class="midsection">
        <h1 class="midsection-main-heading">Uttarakhand Integrated Statistical System</h1>
        <input type="search" placeholder="Search.." class="search-bar">
        <div class="side-navigation-section">
            <div class="district">
                <div class="cm-name">					
                    <div>
                            <a href="http://www.governoruk.gov.in/" target="_blank">
                            <img class="longimg" src="${pageContext.request.contextPath }/template/images/Gov.jpg" width="100px" height="104px" alt="Uttarakhand Governer"></a>
                            <p class="txtname">Baby Rani Maurya</p>
                            <p class="txtname"><a href="http://www.governoruk.gov.in/" target="_blank" title="Smt. Baby Rani Maurya">Governor</a></p>
                    </div>
                    <div>
                            <a href="https://cm.uk.gov.in/" target="_blank">
                            <img class="longimg" src="${pageContext.request.contextPath }/template/images/CM.jpg" alt="Uttarakhand CM" width="100px" height="104px"></a>
                            <p class="txtname">Trivendra Singh Rawat</p>
                            <p class="txtname"><a href="http://cm.uk.gov.in/" target="_blank" title="Shri Trivendra Singh Rawat">Chief Minister</a></p>		
                    </div>
                </div>
            </div>
            
            <ul class="side-navigation-list">
                <li class="side-navigation-list-items"><a href="#population">Population</a></li>
                <li class="side-navigation-list-items"><a href="#education">Education</a></li>
                <li class="side-navigation-list-items"><a href="#industry">Industry & mining</a></li>
                <li class="side-navigation-list-items"><a href="#health">Health</a></li>
                <li class="side-navigation-list-items"><a href="#women">Women & Child Development</a></li>
                <li class="side-navigation-list-items"><a href="#others">Others</a></li>
            </ul>

            <div>
                <h3 class="dst">Districts </h3>
                    <div>
                        <img src="${pageContext.request.contextPath }/template/images/map.jpg" class="dst-map" alt="Map" title="Map" usemap="#Map" />
                    </div>
    
                    <map name="Map" id="Map">
                        <area  title="Uttarkashi (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                                return false;" shape="poly" coords="116,28,108,37,106,46,108,49,89,42,83,49,70,54,63,61,57,65,49,60,43,56,35,57,37,50,31,44,33,39,30,34,23,34,21,30,31,23,34,22,52,15,79,18,94,25,90,16,97,4" href="http://uttarkashi.nic.in/" alt="Uttarkashi" />
                        <area title="Dehradun (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="10,70,27,84,42,102,50,94,48,89,48,83,43,80,40,76,45,73,29,70,30,59,36,52,29,47,30,38,19,37,19,57,21,64"  href="http://dehradun.nic.in/" alt="Dehradun" />
                        <area title="Haridwar (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="28,87,16,105,20,119,31,118,34,125,35,128,52,115,47,104,40,102" href="http://haridwar.nic.in/" alt="Haridwar" />
                        <area title="Tehri (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="97,49,92,44,84,53,75,53,67,64,62,64,59,67,36,59,32,65,46,70,45,79,52,79,51,89,56,91,67,97,73,82,89,82,87,74,87,61,87,59" href="http://tehri.nic.in/" alt="Tehri" />
                        <area title="Rudraprayag (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="95,86,88,83,89,59,96,50,107,51,111,57,101,79"  href="http://rudraprayag.nic.in/" alt="rudraprayag" />
                        <area title="Chamoli (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="136,33,157,47,152,52,153,60,149,80,137,86,139,95,123,99,116,104,108,105,99,85,107,67,114,57,108,47,114,31,127,36" href="http://chamoli.nic.in/" alt="chamoli" />
                        <area title="Pauri (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="86,140,65,128,61,119,53,114,46,104,53,93,62,96,65,100,72,85,86,84,94,86,99,87,105,102,95,107,98,116,96,127" href="http://pauri.nic.in/" alt="pauri" />
                        <area title="Bageshwar (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="153,81,157,91,156,97,158,104,151,109,151,114,145,113,142,118,138,121,137,113,127,111,122,103,134,101,141,100,139,89,144,84" href="http://bageshwar.nic.in/" alt="bageshwar" />
                        <area title="Pithoragarh (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;"shape="poly" coords="211,87,204,87,183,109,173,116,176,123,165,138,146,118,153,113,161,107,159,99,156,86,150,81,155,55,160,46,163,59,184,67" href="http://pithoragarh.nic.in/" alt="pithoragarh" />
                        <area title="Almora (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="146,121,154,134,142,138,133,132,122,134,114,127,104,133,97,131,101,122,99,108,106,105,119,106,129,112" href="http://almora.nic.in/" alt="almora" />
                        <area title="Nainital (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="94,133,84,143,99,149,104,149,111,156,129,164,142,167,149,163,144,158,145,155,141,149,144,147,138,140,133,137,123,135,115,131" href="http://nainital.nic.in/" alt="nainital" />
                        <area title="Champawat (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="165,140,172,149,168,157,159,169,159,163,150,161,147,157,144,150,145,145,144,140,158,135" href="http://champawat.nic.in/" alt=" champawat " />
                        <area title="Udham S. Nagar (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="83,144,80,147,84,158,88,161,101,167,116,175,130,180,142,176,142,180,151,185,157,181,158,167,157,163,143,166,122,164,108,154,102,150" href="http://usnagar.nic.in/" alt="usnagar" />
                    </map>
            </div>

        </div>
        <div class="card" id="population">
            <h3 class="card-title" >Population</h3>
            <p class="card-description">Population simply means number of people, living at a particular area (country/region) at a particular. . .</p>
            <a class="card-readmore-link" href="#popMore" id="myBtn1">Read More</a>
            <div id="myModal1" class="modal">
            <!-- Modal content -->
            <div class="modal-content">
                <span class="close">&times;</span>
                <p>Uttarakhand formerly known as Uttaranchal is a state in the northern part of India. It is often referred to as the "Devabhumi" (literally "Land of the Gods")[27] due to numerous Hindu temples and pilgrimage centres found throughout the state. Uttarakhand is known for the natural environment of the Himalayas, the Bhabar and the Terai regions. It borders the Tibet Autonomous Region of China to the north; the Sudurpashchim Pradesh of Nepal to the east; the Indian states of Uttar Pradesh to the south and Himachal Pradesh to the west and north-west. The state is divided into two divisions, Garhwal and Kumaon, with a total of 13 districts. The winter capital of Uttarakhand is Dehradun, the largest city of the state, which is a rail head. Gairsain, a town in Chamoli district is the summer capital of Uttarakhand.</p>
            </div>
            </div>
            <div class="container3">
            <canvas id="pie-chart"></canvas>
            </div>
            <a href="/department.html" class="view-reports-button">VIEW REPORTS</a>
        </div>
        <div class="card" id="education">
            <h3 class="card-title" >Education</h3>
            <p class="card-description">Education facilitated by learning enables acquisition of knowledge, skills, values, beliefs, and habits. . .</p>
            <a class="card-readmore-link" href="#popMore" id="myBtn2">Read More</a>
			<!-- The Modal -->
            <div id="myModal2" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <span class="close">&times;</span>
                <p>The state of Uttarakhand is carved out of Uttar Pradesh on Nov. 09, 2000. It is surrounded by U.P. on the south, Himachal Pradesh on the west, and international boundaries of Nepal on the east, China on the northeast. The total geographical area of the state is 53,483 sq.km which is 1.69% of total area of the country.Uttarakhand was centre of education from the ancient time. It was believed that kauravas and Pandavas were trained by Guru Dronacharya in the foot hills of Himalaya thats why Dehradun is also known as Drona Nagari. India's best schools and training institutes are located in Uttarakhand. Education in the state of Uttarakhand has a sound background, right from the inception of the state. Department of education is running ahead and getting shape gradually.In Uttarakhand Department of education has a unified structure covering basic education, secondary education,State council of education researchand training, Uttarakhand board of school education and exams are working under the umbrella of Directorate of School Education .</p>
            </div>
            </div>
            <div class="container3">
            <canvas id="pie-chart1"></canvas>
            </div>
            <a href="/departmentEducation" class="view-reports-button">VIEW REPORTS</a> 
        </div>
        <div class="card" id="industry">
            <h3 class="card-title">Industry & Mining</h3>
            <p class="card-description">State is considered as industrially developed state of India. State economy has witnessed high growth trajectory. . .</p>
            <a class="card-readmore-link" href="#popMore" id="myBtn3">Read More</a>
			<!-- The Modal -->
            <div id="myModal3" class="modal">
            <!-- Modal content -->
            <div class="modal-content">
                <span class="close">&times;</span>
                <p>Geology and mining Unit, Directorate of Industries, Uttarakhand is an individual unit under the administrative control of the Department of the Industrial Development, Government of Uttarakhand. Its headquarter is situated in the State Capital Dehradun.</p>
            </div>
            </div>
            <div class="container3">
            <canvas id="pie-chart2"></canvas>
            </div>
            <a href="/department.html" class="view-reports-button">VIEW REPORTS</a> 
        </div>
        <div class="card" id="health">
            <h3 class="card-title">Health</h3>
            <p class="card-description">Health care infrastructure is a vital ingredient to achieve a significant improvement in the health status. . .</p>
            <a class="card-readmore-link" href="#popMore" id="myBtn4">Read More</a>
			<!-- The Modal -->
            <div id="myModal4" class="modal">
            <!-- Modal content -->
            <div class="modal-content">
                <span class="close">&times;</span>
                <p>The Government of Uttarakhand is committed to improve the health status and quality of life of its people, by focusing on health issues with the objective of reducing disease burden, creating an enabling environment, influencing direct and indirect health determinants such as nutrition, water, sanitation and other factors like education and employment in the state. The Government intends to reach the replacement level of fertility, population stability with due attention to disadvantaged sections, inaccessible and remote areas.</p>
            </div>
            </div>
            <div class="container3">
            <canvas id="pie-chart3"></canvas>
            </div>
            <a href="/department.html" class="view-reports-button">VIEW REPORTS</a> 
        </div>
        <div class="card" id="women">
            <h3 class="card-title">Women & Child Development</h3>
            <p class="card-description">Uttrakhand is continuously striving towards institutionalization of a strategy to. . .</p>
            <a class="card-readmore-link"  href="#popMore" id="myBtn5">Read More</a>
			<!-- The Modal -->
            <div id="myModal5" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <span class="close">&times;</span>
                <p> ICDS scheme was launched on October 2,1975  for the all round development of children up to the age of 0-6 years. In the year 1978-79, child development projects were started in three development blocks of Uttarakhand Chakrata ,Kirtinagar and Dharchula. At present, 97 rural projects, 8 urban projects, total 105 child development projects are being operated in 95 development blocks under all the 13 districts of the state, out of which 14947 Anganwadi centers and 5120 mini Anganwadi centers are approved. The aim of the department is to improve nutrition and health, to reduce their malnutrition, mortality and dropout rate, and to improve the health level of mothers.</p>
            </div>

            </div>
            <div class="container3">
            <canvas id="pie-chart4"></canvas>
            </div>
            <a href="/department.html" class="view-reports-button">VIEW REPORTS</a>
        </div>
        <div class="card" id="others">
            <h3 class="card-title">Others</h3>
            <p class="card-description">In this sector, data related to Tourism, Water Supply, legal, Election etc. is made available.</p>
            <a class="card-readmore-link" href="#popMore" id="myBtn6">Read More</a>
			<!-- The Modal -->
            <div id="myModal6" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <span class="close">&times;</span>
                <p>Uttarakhand was formed on 9th November 2000 as the 27th State of India, when it was carved out of northern Uttar Pradesh. Located at the foothills of the Himalayan mountain ranges, it is largely a hilly State, having international boundaries with China (Tibet) in the north and Nepal in the east. On its north-west lies Himachal Pradesh, while on the south is Uttar Pradesh. It is rich in natural resources especially water and forests with many glaciers, rivers, dense forests and snow-clad mountain peaks. Char-dhams, the four most sacred and revered Hindu temples of Badrinath,Kedarnath, Gangotri and Yamunotri are nestled in the mighty mountains.</p>
            </div>
            </div>
            <div class="container3">
            <canvas id="pie-chart5"></canvas>
            </div>
            <a href="/department.html" class="view-reports-button">VIEW REPORTS</a> 
        </div>
    </div>

    <div class="district-info">
        <p class="district-info-heading">Uttarakhand at a Glance.</p>
        <div class="district-info-individual-feild ">         <div class="district-icons area"><i class="far fa-map"></i></div></i><p>Area: 53,483 Sq.km</p></div>
        <div class="district-info-individual-feild ">   <div class="district-icons population"><i class="fas fa-user-friends"></i></div><p>Population: 100.86 Lakh</p></div>
        <div class="district-info-individual-feild ">      <div class="district-icons capital"><i class="fas fa-map-pin"></i></div><p>Capital: Dehradun</p></div>
        <div class="district-info-individual-feild ">             <div class="district-icons area"><i class="far fa-map"></i></div><p>District: 13</p></div>
        <div class="district-info-individual-feild latitude">     <div class="district-icons capital"><i class="fas fa-map-pin"></i></div></i><p>Latitude: 28°43' N to 31°27' N</p></div>
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
        
          // Global Options
    Chart.defaults.global.defaultFontFamily = 'Lato';
    //Chart.defaults.global.defaultFontSize = 10;
    Chart.defaults.global.defaultFontColor = '#777';

    new Chart(document.getElementById("pie-chart"), {
        type: 'bar',
        data: {
          //insert label here
          labels: ["2015", "2016", "2017", "2018"],
          datasets: [{
            label: "Population (millions)",
            backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850","#8B4513","#4B0082","#F0E68C"],
            //insert data here
            data: [408,547,675,734]
          }]
        },
        options: {
          legend:{
              display:false,
              labels:{
                fontColor:'#000'
              }
            },
            responsive: true,
            maintainAspectRatio: false,
      }
        
    });
    new Chart(document.getElementById("pie-chart1"), {
        type: 'pie',
        data: {
          //insert label here
          labels: ["2015", "2016", "2017", "2018"],
          datasets: [{
            label: "Population (millions)",
            backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850","#8B4513","#4B0082","#F0E68C"],
            //insert data here
            data: [408,547,675,734]
          }]
        },
        options: {
          legend:{
              display:true,
              labels:{
                fontColor:'#000'
              }
            },
            responsive: true,
            maintainAspectRatio: false,
      }
        
    });
    new Chart(document.getElementById("pie-chart2"), {
        type: 'line',
        data: {
          //insert label here
          labels: ["2015", "2016", "2017", "2018"],
          datasets: [{
            label: "Population (millions)",
            backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850","#8B4513","#4B0082","#F0E68C"],
            //insert data here
            data: [408,547,675,234]
          }]
        },
        options: {
          legend:{
              display:false,
              labels:{
                fontColor:'#000'
              }
            },
            responsive: true,
            maintainAspectRatio: false,
      }
        
    });
    new Chart(document.getElementById("pie-chart3"), {
        type: 'radar',
        data: {
          //insert label here
          labels: ["2015", "2016", "2017", "2018"],
          datasets: [{
            label: "Population (millions)",
            backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850","#8B4513","#4B0082","#F0E68C"],
            //insert data here
            data: [408,547,675,934]
          }]
        },
        options: {
          legend:{
              display:false,
              labels:{
                fontColor:'#000'
              }
            },
            responsive: true,
            maintainAspectRatio: false,
      }
        
    });
    new Chart(document.getElementById("pie-chart4"), {
        type: 'horizontalBar',
        data: {
          //insert label here
          labels: ["2015", "2016", "2017", "2018"],
          datasets: [{
            label: "Population (millions)",
            backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850","#8B4513","#4B0082","#F0E68C"],
            //insert data here
            data: [408,547,675,734]
          }]
        },
        options: {
          legend:{
              display:false,
              labels:{
                fontColor:'#000'
              }
            },
            responsive: true,
            maintainAspectRatio: false,
      }
        
    });
    new Chart(document.getElementById("pie-chart5"), {
        type: 'doughnut',
        data: {
          //insert label here
          labels: ["2015", "2016", "2017", "2018"],
          datasets: [{
            label: "Population (millions)",
            backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850","#8B4513","#4B0082","#F0E68C"],
            //insert data here
            data: [408,547,675,734]
          }]
        },
        options: {
          legend:{
              display:true,
              labels:{
                fontColor:'#000'
              }
            },
            responsive: true,
            maintainAspectRatio: false,
      }
        
    });    

    </script>

<script>
// Get the modal
var modal1 = document.getElementById("myModal1");

// Get the button that opens the modal
var btn1 = document.getElementById("myBtn1");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn1.onclick = function() {
  modal1.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal1.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal1) {
    modal1.style.display = "none";
  }
}
</script>
<script>
// Get the modal
var modal2 = document.getElementById("myModal2");

// Get the button that opens the modal
var btn2 = document.getElementById("myBtn2");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[1];

// When the user clicks the button, open the modal 
btn2.onclick = function() {
  modal2.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal2.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal2) {
    modal2.style.display = "none";
  }
}
</script>
<script>
// Get the modal
var modal3 = document.getElementById("myModal3");

// Get the button that opens the modal
var btn3 = document.getElementById("myBtn3");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[2];

// When the user clicks the button, open the modal 
btn3.onclick = function() {
  modal3.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal3.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal3) {
    modal3.style.display = "none";
  }
}
</script>

<script>
// Get the modal
var modal4 = document.getElementById("myModal4");

// Get the button that opens the modal
var btn4 = document.getElementById("myBtn4");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[3];

// When the user clicks the button, open the modal 
btn4.onclick = function() {
  modal2.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal4.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal4) {
    modal4.style.display = "none";
  }
}
</script>

<script>
// Get the modal
var modal5 = document.getElementById("myModal5");

// Get the button that opens the modal
var btn5 = document.getElementById("myBtn5");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[4];

// When the user clicks the button, open the modal 
btn5.onclick = function() {
  modal5.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal5.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal5) {
    modal5.style.display = "none";
  }
}
</script>

<script>
// Get the modal
var modal6 = document.getElementById("myModal6");

// Get the button that opens the modal
var btn6 = document.getElementById("myBtn6");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[5];

// When the user clicks the button, open the modal 
btn6.onclick = function() {
  modal6.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal6.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal6) {
    modal6.style.display = "none";
  }
}
</script>
<script>
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"
</script>
<script type="text/javascript">
function googleTranslateElementInit() {
new google.translate.TranslateElement({
    pageLanguage: 'en', includedLanguages: 'en,hi', layout: google.translate.TranslateElement.InlineLayout.SIMPLE
}, 'google_translate_element');
}
</script>
<script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<script>
  $(document).ready(function(){
    $('#google_translate_element').bind('DOMNodeInserted', function(event) {
      $('.goog-te-menu-value span:first').html('Language');
      $('.goog-te-menu-frame.skiptranslate').load(function(){
        setTimeout(function(){
          $('.goog-te-menu-frame.skiptranslate').contents().find('.goog-te-menu2-item-selected .text').html('Translate');    
        }, 10);
      });
    });
  });
</script>
<script>    	
$('document').ready(function () {

		// RESTYLE THE DROPDOWN MENU
    $('#google_translate_element').on("click", function () {

        // Change font family and color
        $("iframe").contents().find(".goog-te-menu2-item div, .goog-te-menu2-item:link div, .goog-te-menu2-item:visited div, .goog-te-menu2-item:active div, .goog-te-menu2 *")
            .css({
           'color': '#fff',
			     'background-color': '#0069BD',
  				 'font-size': '15px',


            });
        // Change menu's padding
        $("iframe").contents().find('.goog-te-menu2-item-selected').css ('display', 'none');
			
				// Change menu's padding
        $("iframe").contents().find('.goog-te-menu2').css ('padding', '0px 0px 0px 0px');
      
        // Change the padding of the languages
        $("iframe").contents().find('.goog-te-menu2-item div').css('padding', '12px 16px ');
      
        // Change the width of the languages
        $("iframe").contents().find('.goog-te-menu2-item').css('width', '100%');
        $("iframe").contents().find('td').css('width', '100%');
      
        // Change hover effects
        $("iframe").contents().find(".goog-te-menu2-item div").hover(function () {
            $(this).css('border-bottom', '3px solid  #00A0EF').find('span.text').css('color', 'white');
        }, function () {
            $(this).css('border-bottom', 'red').find('span.text').css('color', 'white');
        });
        // Change Google's default blue border
        $("iframe").contents().find('.goog-te-menu2').css('border', 'none');

    
        // Change the iframe's size and position?
        $(".goog-te-menu-frame").css({
            'height': '91px',
            'width': '185px',
            'top': '86px',
			'-webkit-box-shadow' : 'none', 
			'-moz-box-shadow' : 'none', 
			'box-shadow' : 'none',
			'text-align' : 'left',
			'z-index': '1000',
			'background-color': '#0069BD'
			
        });
		
		  $(".goog-te-banner-frame").css({
       
			'z-index': '1000'
			
        });
		
        // Change iframes's size
        $("iframe").contents().find('.goog-te-menu2').css({
            'height': '100%',
            'width': '100%',
			'background-color': '#0069BD'
		
        });
    });
});
</script>
</body>
</html>