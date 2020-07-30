<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>SignIn</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/template/style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<form action="/otpverified" method="post">
  <h2>Please enter your Otp</h2>
  <h4>Otp is valid only for 15 minutes</h4>
		<p>
			<label for="OTP" class="floatLabel">OTP</label>
			<input id="OTP" name="otp" type="text">
		</p>
		<p>
			<input type="Submit" value="Send For Verification" id="submit">
		</p>
	</form>
	
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="${pageContext.request.contextPath }/template/script.js"></script>
  <script src="${pageContext.request.contextPath }/template/custom.js"></script>
  <script>
  setTimeout(() => {
	  $.get("/deleteaftertime", {otp:${otp.otp}}, function (data) {  
	         alert(data);  
	     });  
}, 900000);
  </script>
</body>
</html>
