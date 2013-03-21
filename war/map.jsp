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
    <script type="text/javascript" src="js/map.js"></script>

    <title>Kaart</title>
  </head>
  <body>
    <%@ include file="jspf/header.jspf" %>
	<% request.setAttribute("currentPage","map"); %>
	<%@ include file="jspf/menu.jspf" %> 

    <div class="content">
	    <h1>Google kaart</h1>
<!-- 		<div id="google-map0" class="inline" style="width:200px;height:100px;background-color:red">super div</div> -->
		<div>
			<div id="map-log-lat">Latitude:</div>
			<div id="map-log-lng">Longitude:</div>
			<div id="google-map"></div>
		</div>
		
    </div>
    <%@ include file="jspf/footer.jspf" %>
  </body>
</html>