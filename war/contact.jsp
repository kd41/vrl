<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
 
<!doctype html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
                                                           
    <link type="text/css" rel="stylesheet" href="css/clean.css" />
    <link type="text/css" rel="stylesheet" href="css/base.css" />
    <link type="text/css" rel="stylesheet"  href="css/print.css" media="print" />
    
    <script type="text/javascript" src="js/jquery-1.9.1.js" ></script>
    <script type="text/javascript" src="js/contact.js"></script>

    <title>Kontakt</title>
    
  </head>

  <body>
    
	<%@ include file="jspf/header.jspf" %> 

	<% request.setAttribute("currentPage","contact"); %>
	<%@ include file="jspf/menu.jspf" %> 

    <div class="content">
	    <h1>Palun kirjuta tagasiside:</h1>
	    <div id="con-result"></div>
	    <form id="con-form">
		    <table>
		    	<tr>
		    		<td>Nimi:</td>
		    		<td>
		    			<input type="text" id="con-name" name="con-name" />
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>Sisu:</td>
		    		<td>
		    			<textarea id="con-text" name="con-text" cols="30em" rows="5em" wrap="soft" ></textarea>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td></td>
		    		<td>
		    			<input type="button" id="con-submit" value="Saada" class="right" />
		    		</td>
		    	</tr>
		    </table>
	    </form>
	    <div id="loading-div" class="loading hidden"></div>
    </div>
    
    <%@ include file="jspf/footer.jspf" %> 
    
  </body>
</html>
