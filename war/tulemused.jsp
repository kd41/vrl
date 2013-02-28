<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<!doctype html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
	
    <link type="text/css" rel="stylesheet" href="css/clean.css" />       
    <link type="text/css" rel="stylesheet" href="css/base.css" />     
    <link type="text/css" rel="stylesheet" href="css/tablesort.css" />
    <link type="text/css" rel="stylesheet"  href="css/print.css" media="print" />

    <title>Tulemused</title>
    
    
    <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="js/jquery.tablesorter.js"></script>
    <script type="text/javascript" src="js/tulemus.js"></script>
    
  </head>

  <body>
    
	<%@ include file="jspf/header.jspf" %>

	<% request.setAttribute("currentPage","tulemused"); %>
	<%@ include file="jspf/menu.jspf" %> 

    <div class="content">
	    <h1>Tabel:</h1>
	    <form id="tul-form" action="" method="post">
	    	<table>
	    		<tr>
	    			<th>
	    				Filtreeri
	    			</th>
	    		</tr>
	    		<tr>
	    			<td>
	    				Nimi järgi:
	    			</td>
	    			<td>
	    				<input type="text" name="tul-name" id="tul-name" value="" />
	    			</td>
	    			<td>
	    				Piirkonna järgi:
	    			</td>
	    			<td>
	    				<input type="text" name="tul-region" id="tul-region" value="" />
	    			</td>
	    			<td>
	    				<input type="button" name="tul-submit" id="tul-subit" value="Filtreeri" />
	    			</td>
	    		</tr>
	    	</table>
	    </form>
	    
	    <table id="tulemus-table" class="tablesorter">
	    	<thead>
	    	<tr>
	    		<th>
	    			Eesnimi perenimi
	    		</th>
	    		<th>
	    			Vanus
	    		</th>
	    		<th>
	    			Maakond
	    		</th>
	    		<th>
	    			Partei
	    		</th>
	    	</tr>
	    	</thead>
	    	<tbody>
	    	<% for(int i = 0; i<20;i++) {%>
	    	<tr>
	    		<td>
	    			Eesnimi perenimi <%=(int) (Math.random()*100) %>
	    		</td>
	    		<td>
	    			<%= (int) (Math.random()*100) %>
	    		</td>
	    		<td>
	    			Maakond <%=i %>
	    		</td>
	    		<td>
	    			Partei <%=i %>
	    		</td>
	    	</tr>
	    	<% } %>
	    	</tbody>
	    </table>
    </div>
    
    <%@ include file="jspf/footer.jspf" %> 
    
  </body>
</html>
