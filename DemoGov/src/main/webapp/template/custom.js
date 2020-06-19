$(function(){	
	var countryOptions;
	var stateOptions;
	var stateOptions1;
	var stateOptions2;
	var stateOptions3;
		$.getJSON('countries.json',function(result){
			$.each(result, function(i,country) {
				//<option value='countrycode'>contryname</option>
				countryOptions+="<option value='"
				+country.code+
				"'>"
				+country.name+
				"</option>";
				 });
				 $('#Location_Cat').html(countryOptions);
				});
				$('#Location_Cat').change(function(){
				if($(this).val()=="PN"){
					stateOptions2="";
					stateOptions="";
					stateOptions1="";
					$.getJSON('IndianStates.json',function(result){
						$.each(result, function(stateCode,stateName) {
							//<option value='stateCode'>stateName</option>
							stateOptions+="<option value='"
							+stateCode+
							"'>"
							+stateName+
							"</option>";
							 });
							 $('#Location_Name').html(stateOptions);
							});
						}
				else if($(this).val()=="PL"){
					stateOptions2="";
					stateOptions="";
					stateOptions1="";
					$.getJSON('USStates.json',function(result){
						$.each(result, function(stateCode,stateName) {
							//<option value='stateCode'>stateName</option>
							stateOptions1+="<option value='"
							+stateCode+
							"'>"
							+stateName+
							"</option>";
							});
							$('#Location_Name').html(stateOptions1);
							});
						}
				else if($(this).val()=="NN"){
					stateOptions2="";
					stateOptions="";
					stateOptions1="";
					$.getJSON({
						   "LN":"London",
						   "BK":"Berkley",
						   "EN":"England",
						   "SS":"Sisily",
						   "PL":"PortLand"
						},function(result){
						$.each(result, function(stateCode,stateName) {
							//<option value='stateCode'>stateName</option>
							stateOptions2+="<option value='"
							+stateCode+
							"'>"
							+stateName+
							"</option>";
							});
							$('#Location_Name').html(stateOptions2);
							});
							}
				else {
					stateOptions2="";
					stateOptions="";
					stateOptions1="";
					stateOptions3="";
					$.getJSON('UKStates.json',function(result){
						$.each(result, function(stateCode,stateName) {
							//<option value='stateCode'>stateName</option>
							stateOptions2+="<option value='"
							+stateCode+
							"'>"
							+stateName+
							"</option>";
							});
							$('#Location_Name').html(stateOptions3);
							});
							}
		});
	});
	