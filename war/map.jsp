<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<!doctype html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
                                                           
    <link type="text/css" rel="stylesheet" href="css/clean.css" />
    <link type="text/css" rel="stylesheet" href="css/base.css" />
    <link type="text/css" rel="stylesheet"  href="css/print.css" media="print" />
    
    <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBfDaOhZ2L_IzZHlKjhVyWvF6F_C7FY3lI&sensor=false"></script>
    <script type="text/javascript" src="http://ecn.dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=7.0"></script>
    <script type="text/javascript" src="js/map.js"></script>

    <title>Kaart</title>
  </head>
  <body>
    <%@ include file="jspf/header.jspf" %>
	<% request.setAttribute("currentPage","map"); %>
	<%@ include file="jspf/menu.jspf" %> 

    <div class="content">
	    <h1>Kaardid</h1>
	    <div>
	    	<div id="bing-map"></div>
	    	<div>
		    	<div id="bing-log-lat">Latitude:</div>
		    	<div id="bing-log-lng">Longitude:</div>
	    	</div>
		</div>
		<div class="clear" ></div>
		<div>
			<div id="google-map"></div>
			<div>
				<div id="map-log-lat">Latitude:</div>
				<div id="map-log-lng">Longitude:</div>
			</div>
		</div>
		<div class="clear" ></div>
		
    </div>
    <%@ include file="jspf/footer.jspf" %>
  </body>
</html>