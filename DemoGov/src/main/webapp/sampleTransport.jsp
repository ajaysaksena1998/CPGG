<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
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
</head>
<body>
<div class="container">
<form action="/posttransport" id="polic_district" method="POST" class="input-form">
            <h1 class="heading">Yearwise Motor Vehicles on Road</h1>
            
            <div class="row">
            <div class="col-md-12">
             <label for="Year" class="input-labels"><b>Id</b></label>
            <input type="text" id="Year" name="id" value="${value.id }" class="input-fields" readonly>
            </div>
            </div>
           <div class="row">
           
            <div class="col-md-12">
             <label for="Year" class="input-labels"><b>Location Category</b></label>
            <input type="text" id="Year" name="loc_category" value="${value.loc_category }" class="input-fields" readonly>
            </div></div>
            <div class="row">
            <div class="col-md-12">
              <label for="Year" class="input-labels"><b>L. Id</b></label>
            <input type="text" id="Year" name="loc_id" value="${value.loc_id }" class="input-fields" readonly>
    </div> 
    </div>
            <label for="Year" class="input-labels"><b>Year:</b></label>
            <input type="text" id="Year" name="year" value="${value.year }" class="input-fields" readonly="readonly">
            
            <label for="policestations_rural" class="input-labels"><b>Heavy vehicles</b></label>
            <input type="text" id="policestations_rural" name="heavy_vehicles" class="input-fields" value="${value.heavy_vehicles}">

            <label for="policestations_urban" class="input-labels"><b>Delivery/Recovery Van</b></label>
            <input type="text" id="policestations_urban" name="deliver_recovery_van" class="input-fields" value="${value.deliver_recovery_van}">

            <label for="policestations_total" class="input-labels"><b>Buses</b></label>
            <input type="text" id="policestations_total" name="buses" class="input-fields" value="${value.buses }">

            <label for="robbery" class="input-labels"><b>Taxi Cab</b></label>
            <input type="text" id="robbery" name="maxi_taxi_cab" class="input-fields" value="${value.maxi_taxi_cab }">

            <label for="murder" class="input-labels"><b>Three Wheelers</b></label>
            <input type="text" id="murder" name="three_wheelers" class="input-fields" value="${value.three_wheelers }">

            <label for="kidnapping" class="input-labels"><b>Two Wheelers</b></label>
            <input type="text" id="kidnapping" name="two_wheelers" class="input-fields" value="${value.two_wheelers }">
            
            <label for="theft" class="input-labels"><b>Four Wheelers</b></label>
            <input type="text" id="theft" name="four_wheelers" class="input-fields" value="${value.four_wheelers }">
            <label for="riots" class="input-labels"><b>Others</b></label>
            <input type="text" id="riots" name="others" class="input-fields" value="${value.others }">
            <label for="harrassment_of_sc_st" class="input-labels"><b>Total</b></label>
            <input type="text" id="harrassment_of_sc_st" name="total" class="input-fields" value="${value.total }" readonly>
<br>
<div class="container">

            <button type="submit" class="btn btn-primary">Submit</button>
       </div>
        </form>
        </div>
</body>
</html>