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
  <title>Yearwise Motor Vehicles on Road</title>
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
    	    labels:${dataHeavyVehicle.keySet()},
    	    datasets: [{ 
    	        data:${dataHeavyVehicle.values()},
    	        label: "Heavy Vehicles",
    	        backgroundColor:'#3e95cd',
    	        borderColor:'#3e95cd',
    	        fill: false
    	      }, 
    	      { 
    	        data:${dataMaxiCab.values()},
    	        label: "Maxi/Taxi Cabs",
    	        backgroundColor: "#c45850",
    	        borderColor: "#c45850",
    	        fill: false
    	      }, 

      	    { 
      	        data:${dataTwoWheelers.values()},
      	        label: "Two Wheelers",
      	        backgroundColor: "#3cba9f",
      	        borderColor: "#3cba9f",
      	        fill: false
      	      }, 
      	    { 
      	        data:${dataFourWheelers.values()},
      	        label: "Four Wheelers",
      	        backgroundColor: "#8e5ea2",
      	        borderColor: "#8e5ea2",
      	        fill: false
      	      }, 

        	      
        	      { 
          	        data:${dataTotal.values()},
          	        label: "Total",
          	        backgroundColor: "#32CD32",
          	        borderColor: "#32CD32",
          	        fill: false
          	      }, 
        	 
    	    ]
    	    
    	  },
          options:{
    	        title:{
    	            display:true,
    	            text:'Yearwise Motor Vehicles on Road in Uttarakhand',
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
    	                	  min: 2500,
    	                	  max: 2200000,
    	                	  
                             
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