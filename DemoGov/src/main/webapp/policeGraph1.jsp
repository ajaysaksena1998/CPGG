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
  <title>Yearwise No. of Police Stations in Uttarakhand</title>
</head>
<body>
  <div class="container">
    <canvas id="myChart"></canvas>
  </div>

  <script >
    let myChart = document.getElementById('myChart').getContext('2d');

    // Global Options
    Chart.defaults.global.defaultFontFamily = 'Lato';
    Chart.defaults.global.defaultFontSize = 10;
    Chart.defaults.global.defaultFontColor = '#777';

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