<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<!doctype html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
                                                           
    <link type="text/css" rel="stylesheet" href="css/base.css" />
    <link type="text/css" rel="stylesheet"  href="css/print.css" media="print" />

    <title>Tulemused</title>
    
    <script type="text/javascript" language="javascript" src="valimised/valimised.nocache.js"></script>
  </head>

  <body>
    
	<%@ include file="jspf/header.jspf" %> 

	<% request.setAttribute("currentPage","contact"); %>
	<%@ include file="jspf/menu.jspf" %> 

    <div class="content">
	    <h1>Kirjuta mulle e-meili.</h1>
    </div>
    
    <%@ include file="jspf/footer.jspf" %> 
    
  </body>
</html>
