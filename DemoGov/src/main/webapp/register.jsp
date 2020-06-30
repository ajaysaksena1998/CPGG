<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en" >
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
	$(function() {
		$('label[for="Location_Name"]').hide()

			$('#valueselector').change(function(){			
				$('.valuess').hide();
				$('#' + $(this).val()).show();
				$('label[for="Location_Name"]').show()

				
			});
		});
</script>
<head>
  <meta charset="UTF-8">
  <title>SignUp</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/style1.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/template/select-style.css">
</head>
<body>
<!-- partial:index.partial.html -->
<form action="/performregisterationstep1" method="post">
  <h2>Sign Up</h2>
		 
		<p>
			<label for="Name" class="floatLabel">Name</label>
			<input id="Name" name="name" type="text" placeholder="Enter Name">
		</p>
		<p>
			<label for="Email" class="floatLabel">Email</label>
			<input id="Email" name="email" type="text" placeholder="Enter Email">
		</p>
		<p>
			<label for="Location_Category" class="floatLabel">Location Category</label>
			<div>
			  <select id="valueselector" name="loc_category" class="select-css">
				  <option value="others">Choose a value</option>
				  <option value="Nagar_Nigam">Nagar Nigam</option>
				  <option value="Nagar_Palika_Parishad">Nagar Palika Parishad</option>
				  <option value="Nagar_Panchayat">Nagar Panchayat</option>
			   </select>
		  </div>
		  </p> 
		  <p>
			<label for="Location_Name" class="floatLabel">Location Name</label>
			<div id="Nagar_Nigam" class="valuess" style="display:none">
				<select name="loc_id" class="select-css">
						  <option value="Dehradun">Dehradun</option>
						  <option value="Rishikesh">Rishikesh</option>
						  <option value="Haridwar">Haridwar</option>
						  <option value="Kotdwar">Kotdwar</option>
						  <option value="Haldwani">Haldwani</option>
						  <option value="Kashipur">Kashipur</option>
						  <option value="Roorkee">Roorkee</option>
						  <option value="Rudrapur">Rudrapur</option>
				</select>
			
			</div>
			</p>
			<p>
				<label for="Location_Name" class="floatLabel">Location Name</label>
				<div id="Nagar_Palika_Parishad" class="valuess" style="display:none">
					<select name="loc_id" class="select-css">
						<option value="Vikasnagar">Vikasnagar</option>
						<option value="Mussoorie">Mussoorie</option>
						<option value="Herbertpur">Herbertpur</option>
						<option value="Doiwala">Doiwala</option>
						<option value="Manglaur">Manglaur</option>
						<option value="Laksar">Laksar</option>
						<option value="Shivalik Nagar">Shivalik Nagar</option>
						<option value="Uttarkashi">Uttarkashi</option>
						<option value="Barkot">Barkot</option>
						<option value="Chinyalisour">Chinyalisour</option>
						<option value="Chamoli-Gopeshwar">Chamoli-Gopeshwar</option>
						<option value="Joshimath">Joshimath</option>
						<option value="Gauchar">Gauchar</option>
						<option value="Karnaprayag">Karnaprayag</option>
						<option value="Tehri">Tehri</option>
						<option value="Shrinagar">Shrinagar</option>
						<option value="Narendra Nagar">Narendra Nagar</option>
						<option value="Chamba">Chamba</option>
						<option value="Devprayag">Devprayag</option>
						<option value="Munikireti">Munikireti</option>
						<option value="Rudraprayag">Rudraprayag</option>
						<option value="Pauri">Pauri</option>
						<option value="Dugadda">Dugadda</option>
						<option value="Pithoragarh">Pithoragarh</option>
						<option value="Didihat ">Didihat</option>
						<option value="Dharchula">Dharchula</option>
						<option value="Tanakpur">Tanakpur</option>
						<option value="Champawat">Champawat</option>
						<option value="Almora">Almora</option>
						<option value="Ranikhet Chiliyanaula">Ranikhet Chiliyanaula</option>
						<option value="Bageshwar">Bageshwar</option>
						<option value="Nainital">Nainital</option>
						<option value="Ramnagar">Ramnagar</option>
						<option value="Bhowali">Bhowali</option>
						<option value="Gadarpur">Gadarpur</option>
						<option value="Bazpur">Bazpur</option>
						<option value="Jaspur">Jaspur</option>
						<option value="Kichha">Kichha</option>
						<option value="Sitarganj">Sitarganj</option>
						<option value="Khatima">Khatima</option>
					    <option value="Mahuakheraganj">Mahuakheraganj</option>
						

					</select>
				
				</div>
				</p>
				<p>
					<label for="Location_Name" class="floatLabel">Location Name</label>
					<div id="Nagar_Panchayat" class="valuess" style="display:none">
						<select name="loc_id" class="select-css">
							<option value="Selakui">Selakui</option>
							<option value="Jhabrera">Jhabrera</option>
							<option value="Landour">Landour</option>
							<option value="Bhagwanpur">Bhagwanpur</option>
							<option value="Piran Kaliyar">Piran Kaliyar</option>
							<option value="Purola">Purola</option>
							<option value="Naugaon">Naugaon</option>
							<option value="Nandraprayag">Nandraprayag</option>
							<option value="Pokhri">Pokhri</option>
							<option value="Gairsain">Gairsain</option>
							<option value="Tharali">Tharali</option>
							<option value="Pipalkoti">Pipalkoti</option>
							<option value="Kirtinagar">Kirtinagar</option>
							<option value="Ghansali">Ghansali</option>
							<option value="Gaja">Gaja</option>
							<option value="Lambgaon">Lambgaon</option>
							<option value="Chamiyala">Chamiyala</option>
							<option value="Augustmuni">Augustmuni</option>
							<option value="Ukhimath">Ukhimath</option>
							<option value="Tilwara">Tilwara</option>
							<option value="Swargashramjonk">Swargashramjonk</option>
							<option value="Satpuli">Satpuli</option>
							<option value="Gangolihat">Gangolihat</option>
							<option value="Berinag">Berinag</option>
							<option value="Lohaghat">Lohaghat</option>
							<option value="Banbasa">Banbasa</option>
							<option value="Dwarahat">Dwarahat</option>
							<option value="Bhikiyasen">Bhikiyasen</option>
							<option value="Kapkot">Kapkot</option>
							<option value="Kaladhungi">Kaladhungi</option>
							<option value="Lalkuan">Lalkuan</option>
							<option value="Bhimtal">Bhimtal</option>
							<option value="Mahua Dabra">Mahua Dabra</option>
							<option value="Sultanpur Patti">Sultanpur Patti</option>
							<option value="Kelakhera">Kelakhera</option>
							<option value="Dineshpur">Dineshpur</option>
							<option value="Shaktigarh">Shaktigarh</option>
							<option value="Nanakmatta">Nanakmatta</option>
							<option value="Gularbhoj">Gularbhoj</option>
							<option value="Bhatrojkhan">Bhatrojkhan</option>
							<option value="Gangotri">Gangotri</option>
							<option value="Badrinath">Badrinath</option>
							<option value="Kedarnath">Kedarnath</option>
						</select>
					
					</div>
					
	
		<p>
			<label for="password" class="floatLabel">Password</label>
			<input id="password" name="password" type="password" placeholder="Enter Password">
<!-- 			<span>Enter a password longer than 8 characters</span>
 -->		</p>
		<p>
			<label for="confirm_password" class="floatLabel">Confirm Password</label>
			<input id="confirm_password" type="password" placeholder="Confirm Password">
<!-- 			<span>Your passwords do not match</span>
 -->		</p>
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
