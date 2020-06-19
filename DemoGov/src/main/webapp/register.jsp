<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>SignUp</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/template/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/template/select-style.css">
</head>
<body>
<!-- partial:index.partial.html -->
<form action="performregisterationstep1" method="post">
  <h2>Sign Up</h2>
		<p>
			<label for="Name" class="floatLabel">Name</label>
			<input id="Name" name="Name" type="text">
		</p>
		<p>
			<label for="Email" class="floatLabel">Email</label>
			<input id="Email" name="Email" type="text">
		</p>
		<p>
			<label for="Location_Cat" class="floatLabel">Location Category</label>
			<select id ="Location_Cat" name="loc_category" class="select-css">
			<option selected="selected" disabled="disabled">Please select your Category</option>
			<option>Nagar Nigam</option>
			<option>Nagar Panchayat</option>
			<option>Nagar Palika</option>	
			</select>
		</p>
		<p>
			<label for="Location_Name" class="floatLabel">Location Name</label>
			<select id ="Location_Name" name="loc_id" class="select-css">	
			<option selected="selected" disabled="disabled">Please select location Name</option>
			<option>Dehradun</option>
			<option>Uttarkashi</option>
			</select>
		</p>
		<p>
			<label for="password" class="floatLabel">Password</label>
			<input id="password" name="password" type="password">
			<span>Enter a password longer than 8 characters</span>
		</p>
		<p>
			<label for="confirm_password" class="floatLabel">Confirm Password</label>
			<input id="confirm_password" type="password">
			<span>Your passwords do not match</span>
		</p>
		<p>	
			<button type="submit">Register</button>
	    </p>
		<p>	
			<button formaction="/openlogin">Already have an account</button>
	    </p>
	</form>
	
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="./script.js"></script>
  <script src="custom.js"></script>
</body>
</html>
