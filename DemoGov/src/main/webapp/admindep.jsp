 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
      <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/cs.css" type="text/css">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
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
                                    <li class="navbar-list-items"><a href="/secondPage" class="navbar-link">Dashboard</a></li>
            
            <li class="navbar-list-items" ><button class="select-language-button"><a href="/" style="color: white;">Logout</a></button></li>
        </ul>
    </div>

    <!-- MIDSECTION -->
    <div class="midsection">
        <h1 class="department-midsection-text">Welcome!!</h1>
        <div class="container5">
            <h2>Chosse from Departments:</h2>
            <div class="select-box">
                <div class="options-container">
                    <div class="option">
                        <input type="radio" class="radio" id="Dep01" name="category" />
                        <label class="lbl" for="Dep01">Consumer Price Index</label>
                    </div>
                    <div class="option">
                        <input type="radio" class="radio" id="Dep02" name="category" />
                        <label class="lbl" for="Dep02">Education</label>
                    </div>
                    <div class="option">
                        <input type="radio" class="radio" id="Dep03" name="category" />
                        <label class="lbl" for="Dep03">Police & Crimes</label>
                    </div>
                    <div class="option">
                        <input type="radio" class="radio" id="Dep04" name="category" />
                        <label class="lbl" for="Dep04">Transportation & Communication</label>
                    </div>
                    <div class="option">
                        <input type="radio" class="radio" id="Dep05" name="category" />
                        <label class="lbl" for="Dep05">Banking</label>
                    </div>
                    <div class="option">
                        <input type="radio" class="radio" id="Dep06" name="category" />
                        <label class="lbl" for="Dep06">Industries</label>
                    </div>
                    <div class="option">
                        <input type="radio" class="radio" id="Dep07" name="category" />
                        <label class="lbl" for="Dep07">Electricity</label>
                    </div>
                    <div class="option">
                        <input type="radio" class="radio" id="Dep08" name="category" />
                        <label class="lbl" for="Dep08">State Income</label>
                    </div>
                </div>

                <div class="selected">
                    Select Department
                </div>
            </div>
        </div>
        <div class="container2">
           
        </div>
        <div class="container2">
            
        </div>
        <div class="container1">
            <canvas id="pie-chart"></canvas>
        </div>
        <div class="container1">
            <canvas id="pie-chart1"></canvas>
        </div>
        <div class="container1">
            <canvas id="pie-chart2"></canvas>
        </div>
        <div class="container1">
            <canvas id="pie-chart3"></canvas>
        </div>
        <div class="container1">
            <canvas id="pie-chart4"></canvas>
        </div>
        <div class="container1">
            <canvas id="pie-chart5"></canvas>
        </div>
        <div class="container1">
            <canvas id="pie-chart6"></canvas>
        </div>
        <div class="container1">
            <canvas id="pie-chart7"></canvas>
        </div>
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

        document.getElementById("Dep01").addEventListener("click", () => {
            window.location = "./cpiact";
        });
        document.getElementById("Dep02").addEventListener("click", () => {
            window.location = "./education";
        });
        document.getElementById("Dep03").addEventListener("click", () => {
            window.location = "/police";
        });
        document.getElementById("Dep04").addEventListener("click", () => {
            window.location = "/tac";
        });
        

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
              display:true,
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
    new Chart(document.getElementById("pie-chart3"), {
        type: 'radar',
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
    new Chart(document.getElementById("pie-chart4"), {
        type: 'polarArea',
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
    new Chart(document.getElementById("pie-chart6"), {
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
              display:true,
              labels:{
                fontColor:'#000'
              }
            },
            responsive: true,
            maintainAspectRatio: false,
      }
        
    });
    new Chart(document.getElementById("pie-chart7"), {
        type: 'bar',
        data: {
          labels: ["2015", "2016", "2017", "2018"],
      datasets: [{
          label: "Europe",
          type: "line",
          borderColor: "#8e5ea2",
          data: [18,547,675,34],
          fill: false
        }, {
          label: "Africa",
          type: "line",
          borderColor: "#3e95cd",
          data: [133,221,783,2478],
          fill: false
        }, {
          label: "Europe",
          type: "bar",
          backgroundColor: "rgba(0,0,0,0.2)",
          data: [408,547,675,734],
        }, {
          label: "Africa",
          type: "bar",
          backgroundColor: "rgba(0,0,0,0.2)",
          backgroundColorHover: "#3e95cd",
          data: [133,221,783,2478]
        }
      ]
    },
    options: {
      title: {
        display: false,
        text: 'Population growth (millions): Europe & Africa'
      },
      legend: { display: true }
    }
        
    });
   
    </script>

</body>

</html> 







