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
<form action="/postPoliceForm" id="polic_district" method="POST" class="input-form">
            <h1 class="heading">Yearwise No. of Police Stations & Registered Crimes in Uttarakhand:</h1>
            
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
            <label for="policestations_rural" class="input-labels"><b>Police Stations Rural</b></label>
            <input type="text" id="policestations_rural" name="policestations_rural" class="input-fields" value="${value.policestations_rural}">

            <label for="policestations_urban" class="input-labels"><b>Police Stations Urban:</b></label>
            <input type="text" id="policestations_urban" name="policestations_urban" class="input-fields" value="${value.policestations_urban}">

            <label for="policestations_total" class="input-labels"><b>Police Stations Total:</b></label>
            <input type="text" id="policestations_total" name="policestations_total" class="input-fields" value="${value.policestations_total }">

            <label for="robbery" class="input-labels"><b>Robbery:</b></label>
            <input type="text" id="robbery" name="robbery" class="input-fields" value="${value.robbery }">

            <label for="murder" class="input-labels"><b>Murder:</b></label>
            <input type="text" id="murder" name="murder" class="input-fields" value="${value.murder }">

            <label for="kidnapping" class="input-labels"><b>Kidnapping:</b></label>
            <input type="text" id="kidnapping" name="kidnapping" class="input-fields" value="${value.kidnapping }">
            
            <label for="theft" class="input-labels"><b>Theft:</b></label>
            <input type="text" id="theft" name="kidnapping" class="input-fields" value="${value.theft }">
            <label for="riots" class="input-labels"><b>Riots:</b></label>
            <input type="text" id="riots" name="riots" class="input-fields" value="${value.riots }">
            <label for="harrassment_of_sc_st" class="input-labels"><b>Harrassment of SC/ST:</b></label>
            <input type="text" id="harrassment_of_sc_st" name="harrassment_of_sc_st" class="input-fields" value="${value.harrassment_of_sc_st }">
            <label for="other_crimes" class="input-labels"><b>Other Crimes:</b></label>
            <input type="text" id="other_crimes" name="other_crimes" class="input-fields" value="${value.other_crimes }">

            <button type="submit" class="submit-button">Submit</button>
        </form>
        </div>
</body>
</html>