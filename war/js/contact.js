$(document).ready(function () { 
	$("#con-submit").click(function(event) {
		event.preventDefault();
		var loading = $("#loading-div");
		$("#con-submit").addClass("hidden");
		loading.removeClass("hidden");
		setTimeout(function() {
			loading.addClass('hidden');
			var values = $("#con-form").serialize();
			$.ajax({
				url: "valimised/greet",
				type: "post",
				data: values,
				success: function(){
			    	$("#con-result").html('Teie tagasiside on saanud.');
				},
				error:function(){
					$("#con-result").html('Tagasiside ei saa saata. Palun proovige uuesti.');
				}   
			});
		}, 2000);
	});
}); 