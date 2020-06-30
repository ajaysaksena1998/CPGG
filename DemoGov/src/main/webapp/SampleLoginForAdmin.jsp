<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Sign In</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/style1.css">

</head>
<body>
<!-- partial:index.partial.html -->
<form action="/adminverify" method="post">
  <h2> Administrator Login</h2>
		<p>
			<label for="Email" class="floatLabel">Email</label>
			<input id="Email" name="email" type="text">
		</p>
		<p>
			<label for="password" class="floatLabel">Password</label>
			<input id="password" name="password" type="password">
<!-- 			<span>Enter a password longer than 8 characters</span>
 -->		</p>
		<p>
			<input type="Submit" value="Login" id="submit">
		</p>
	</form>
	
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="./script.js"></script>
  <script src="custom.js"></script>
</body>
</html>
