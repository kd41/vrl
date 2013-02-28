$(document).ready(function() {
	var updateTable = function (event) {
		event.preventDefault();
		
		var name = $("#tul-name").val();
		var region = $("#tul-region").val();
		
		$.ajax({
		    type: "GET",
		    url: "/find",
		    contentType: "application/json; charset=utf-8",
		    dataType: "json",
		    success: function(data) {
				var items = [];
				$.each(data, function(key, val) {
					$.each(val, function(key1, val1) {
						items.push("<tr><td>" + val1.firstName + " " + val1.lastName + "</td>");
						items.push("<td>" + val1.age + "</td>");
						items.push("<td>" + val1.region.name + "</td>");
						items.push("<td>" + val1.party.name + "</td></tr>");
					});
				});
				$("#tulemus-table tbody").html(items.join("")); 
		    },
		    error: function (xhr, textStatus, errorThrown) {
		    	//TODO: implement error
		        $("#error").html(xhr.responseText);
		    }
		});
	};
	$("#tulemus-table").tablesorter({ 
		sortList: [[0,0]] 
	});

	$("#tul-subit").on("click", function(event) {
		updateTable(event);
	});
	$("#tul-form").find("input").on("keyup", function(event) {
		if(event.target.value.length < 3) {
			return;
		}
		updateTable(event);
	});
});