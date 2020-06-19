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
  <title>Yearwise Students in Recognised Educational Institutions in Uttarkhand</title>
</head>
<body>
	
  <div class="container">
    <canvas id="line-chart"></canvas>
  </div>

  <script >
    let myChart = document.getElementById('line-chart').getContext('2d');

    // Global Options
    Chart.defaults.global.defaultFontFamily = 'Lato';
    //Chart.defaults.global.defaultFontSize = 10;
    Chart.defaults.global.defaultFontColor = '#777';

    new Chart(document.getElementById("line-chart"), {
    	  type: 'line',
    	  data: {
    	    labels:${dataJuniorSchool.keySet()},
    	    datasets: [{ 
    	        data:${dataJuniorSchool.values()},
    	        label: "Junior Basic Schools",
    	        backgroundColor:'#3e95cd',
    	        borderColor:'#3e95cd',
    	        fill: false
    	      }, { 
    	        data: ${dataSeniorSchool.values()},
    	        label: "Senior Basic Schools",
    	        backgroundColor: "#8e5ea2",
    	        borderColor: "#8e5ea2",
    	        fill: false
    	      }, { 
    	        data: ${dataSecondarySchool.values()},
    	        label: "Senior Secondary/Intermediate Schools",
    	        backgroundColor: "#3cba9f",
    	        borderColor: "#3cba9f",
    	        fill: false
    	      }, { 
    	        data:${dataUniversities.values()},
    	        label: "Degree/P.G ",
    	        backgroundColor: "#e8c3b9",
    	        borderColor: "#e8c3b9",
    	        fill: false
    	      }, 
    	    ]
    	  },
          options:{
    	        title:{
    	            display:true,
    	            text:'Yearwise Students in Recognised Educational Institutions in Uttarkhand',
    	            fontSize:25
    	          },
    	          legend:{
    	            display:true,
    	            position:'right',
    	            labels:{
    	              fontColor:'#000'
    	            }
    	          },
    	        
    	          scales:{
    	          yAxes: [{
    	                  display: true,
    	                  ticks: {
    	                      beginAtZero: true,
    	                      
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