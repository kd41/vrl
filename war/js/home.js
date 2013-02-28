$(document).ready(function () { 
	$("#reg-submit").click(function() {
		var hasError = false;
		var fname = $("#reg-firstname");
		var lname = $("#reg-lastname");
		var age = $("#reg-age");
		var region = $("#reg-region");
		var party = $("#reg-party");

		showOrHideError(fname, (fname.val().length < 2));
		showOrHideError(lname, (lname.val().length < 2));
		showOrHideError(age, (age.val() < 21));
		showOrHideError(region, ($('#reg-region option:selected').prop('index') < 1));
		showOrHideError(party, ($('#reg-party option:selected').prop('index') < 1));
		
		if($('#reg-form .hidden').length >= 5) {
			$.post("home", $("#reg-form").serialize());
		}
	});
	
	function showOrHideError(field, showError) {
		if(showError) {
			$(field).parent().next().removeClass("hidden");
		} else {
			$(field).parent().next().addClass("hidden");
		} 
	}
}); 