<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <title>Districtwise Degree/P.G. Colleges in Uttarakhand</title>
</head>
<body>
  <div class="container">
    <canvas id="pie-chart"></canvas>
  </div>

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