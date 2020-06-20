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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/login.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/department.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/footer.css" type="text/css">
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
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
            <li class="navbar-list-items"><a href="/index.html" class="navbar-link">Home</a></li>
            <li class="navbar-list-items" ><a target="_blank" href="/secondpage.html" class="navbar-link">Dasboard</a></li>
            <li class="navbar-list-items" ><a target="_blank" href="/mainPage.html" class="navbar-link">Des Uttarakhand</a></li>
            <li class="navbar-list-items" ><button class="select-language-button">Language</button></li>
        </ul>
    </div>
    <div class="container">
<table class="table">
<thead>
		<tr>
		    <th width="10%" scope="col">Id</th>
			<th width="10%" scope="col">L. Category</th>
			<th width="10%" scope="col">L. Name</th>
			<th width="10%" scope="col">User Name</th>
			<th width="10%" scope="col">User Email</th>
			<th width="10%" scope="col">Approve User</th>
			<th width="10%" scope="col">Decline User</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="list">
			<tr>
			    <th scope="row">${list.id }</th>
				<td>${list.loc_category }</td>
				<td>${list.loc_id }</td>
				<td>${list.name}</td>
				<td>${list.email }</td>
				<td><button class="btn btn-success"><a href="/app/${list.id }" style="color: white;">Approve</a></button></td>
				<td><button class="btn btn-danger">Decline</button></td>
				
			</tr>
		</c:forEach>
		</tbody>
		</table>		
		</div>
		
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
        
        </script>
</body>
</html>