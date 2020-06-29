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
    Chart.defaults.global.defaultFontSize = 10;
    Chart.defaults.global.defaultFontColor = '#777';

    new Chart(document.getElementById("pie-chart"), {
        type: 'horizontalBar',
        data: {
          labels: ${data.keySet()},
          datasets: [{
            label: "Districtwise Consumer Price Index",
            backgroundColor: ["#3cba9f","#3cba9f","#3cba9f","#3cba9f","#3cba9f","#3cba9f","#3cba9f","#3cba9f","#3cba9f","#3cba9f","#3cba9f","#3cba9f","#3cba9f","#3cba9f","#3cba9f","#3cba9f","#3cba9f",],
            data: ${data.values()}
          }]
        },
        options: {
          title: {
            display: true,
            text: 'Districtwise Consumer Price Index in Uttarakhand',
            	fontSize:25
          },
          legend:{
              display:false,
              position:'right',
              labels:{
                fontColor:'#000'
              }
            },
            responsive: true,
            maintainAspectRatio: true,



      }
        
    });
  </script>
</body>
</html>