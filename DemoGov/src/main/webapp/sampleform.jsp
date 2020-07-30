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
<form action="/postsampleForm" id="institution_district" method="POST" class="input-form">
            <h1 class="heading">Institution District:</h1>
            
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
            <input type="text" id="Year" name="year" value="${value.year }" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <select name="district" id="Dis-select district">
            <option value="${value.district }" selected="selected" >${value.district }</option>
            <option value="Uttarakhand">Uttarakhand</option>
            <option value="Chamoli">Chamoli</option>
            <option value="Tehri">Tehri</option>
            <option value="Dehradun">Dehradun</option>
            <option value="Pauri">Pauri</option>
            <option value="Rudraprayag">Rudraprayag</option>
            <option value="Haridwar">Haridwar</option>
            <option value="Pithoragarh">Pithoragarh</option>
            <option value="Almora">Almora</option>
            <option value="Nanital">Nanital</option>
            <option value="Bageshwar">Bageshwar</option>
            <option value="Champawat">Champawat</option>
            <option value="US Nagar">US Nagar</option>
            <option value="Garhwal Mandal">Garhwal Mandal</option>
            <option value="Kumoun Mandal">Kumoun Mandal</option>
            </select>

            <label for="Junior_Basic_Schools" class="input-labels"><b>Junior Basic Schools:</b></label>
            <input type="text" id="Junior_Basic_Schools" name="junior_Basic_Schools" class="input-fields" value="${value.junior_Basic_Schools}">

            <label for="Senior_Secondary" class="input-labels"><b>Senior Secondary:</b></label>
            <input type="text" id="Senior_Secondary" name="senior_Secondary" class="input-fields" value="${value.senior_Secondary}">

            <label for="Degree" class="input-labels"><b>Degree:</b></label>
            <input type="text" id="Degree" name="degree" class="input-fields" value="${value.degree }">

            <label for="Universities" class="input-labels"><b>Universities:</b></label>
            <input type="text" id="Universities" name="universities" class="input-fields" value="${value.universities }">

            <label for="Deemed_Universities" class="input-labels"><b>Deemed Universities:</b></label>
            <input type="text" id="Deemed_Universities" name="deemed_Universities" class="input-fields" value="${value.deemed_Universities }">

            <label for="IIT" class="input-labels"><b>IIT:</b></label>
            <input type="text" id="IIT" name="iit" class="input-fields" value="${value.iit }">
            <br>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        </div>
</body>
</html>
