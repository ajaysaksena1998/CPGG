<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Password Reset</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/template/style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<form action="/passreset" method="post">
  <h2>Password Reset</h2>
		<p>
			<label for="OTP" class="floatLabel">Email Id</label>
			<input id="OTP" name="email" type="text">
		</p>
		<p>
			<input type="Submit" value="Reset" id="submit">
		</p>
	</form>
	
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="${pageContext.request.contextPath }/template/script.js"></script>
  <script src="${pageContext.request.contextPath }/template/custom.js"></script>
</body>
</html>
