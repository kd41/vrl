$(document).ready(function() {
	var mapProp = {
		center: new google.maps.LatLng(58.7, 25.8),
		zoom: 7,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	var map = new google.maps.Map($("#google-map").get(0), mapProp);
	
	var myLatlng = new google.maps.LatLng(58.7, 25.8);
	var marker = new google.maps.Marker({
	    position: myLatlng,
	    title:"Estonia"
	});
	marker.setMap(map);

	var mapLogLat = $("#map-log-lat");
	var mapLogLng = $("#map-log-lng");
	google.maps.event.addListener(map, 'mousemove', function(event) {
		var lat = event.latLng.lat();
		var lng = event.latLng.lng();
		mapLogLat.html('Latitude: ' + lat);
		mapLogLng.html('Longitude: ' + lng);
	}); 
	
	
});