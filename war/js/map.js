$(document).ready(function() {
	// default parameters
	var centerX = 58.7;
	var centerY = 25.8;
	var defaultZoom = 7;
	
	// bing map
	var bingMap = new Microsoft.Maps.Map($("#bing-map").get(0), {
		credentials: "AgnHk93IPgLQGz5cSBzRJ5cv02hfFy-mmjDbAa1enBU2H4E76KHQPYkjO4oBdR-5",
		enableClickableLogo: false,
		enableSearchLogo: false,
		showMapTypeSelector:false,
		customizeOverlays: true,
		center: new Microsoft.Maps.Location(centerX, centerY),
		zoom: defaultZoom
	});
	var pushpin= new Microsoft.Maps.Pushpin(new Microsoft.Maps.Location(centerX, centerY), null); 
	bingMap.entities.push(pushpin);

	var bingLogLat = $("#bing-log-lat");
	var bingLogLng = $("#bing-log-lng");
	function DisplayEventInfo(e) {
		if (e.targetType == "map") {
			var point = new Microsoft.Maps.Point(e.getX(), e.getY());
	        var loc = e.target.tryPixelToLocation(point);
	        bingLogLat.html("Latitude: " + loc.latitude);
	        bingLogLng.html("Longitude: " + loc.longitude);
		}
	};
	Microsoft.Maps.Events.addHandler(bingMap, 'mousemove', DisplayEventInfo);
	
	// google map
	var googleMapProp = {
		center: new google.maps.LatLng(centerX, centerY),
		zoom: defaultZoom,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	var googleMap = new google.maps.Map($("#google-map").get(0), googleMapProp);
	
	var myLatlng = new google.maps.LatLng(centerX, centerY);
	var marker = new google.maps.Marker({
	    position: myLatlng,
	    title:"Estonia"
	});
	marker.setMap(googleMap);

	var mapLogLat = $("#map-log-lat");
	var mapLogLng = $("#map-log-lng");
	google.maps.event.addListener(googleMap, 'mousemove', function(event) {
		var lat = event.latLng.lat();
		var lng = event.latLng.lng();
		mapLogLat.html('Latitude: ' + lat);
		mapLogLng.html('Longitude: ' + lng);
	}); 
	
	
});