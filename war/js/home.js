$(document).ready(function () { 
$("#reg-form").validate({
   rules: {
	   regfirstname: "required",
	   reglastname: {
       required: true,
       minlenght: 2
     }
   },
   messages: {
	   regfirstname: "Please specify your name",
	   reglastname: {
		   required: "We need your last name",
		   minlenght: "min 2"
     }
   }
})
}); 