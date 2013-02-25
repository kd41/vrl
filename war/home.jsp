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
    <script type="text/javascript" src="js/jquery.simple.validation.js"></script>
    <script type="text/javascript" src="js/home.js"></script>

    <title>Tulemused</title>
    
  </head>

  <body>
    
    <%@ include file="jspf/header.jspf" %>

	<% request.setAttribute("currentPage","home"); %>
	<%@ include file="jspf/menu.jspf" %> 

    <div class="content">
	    <h1>Tere tulemast e-valimise lehele</h1>
	    
	    <form id="reg-form" action="">
		    <table>
		    	<tr class="red text-right hidden">
		    		<td colspan="2">
		    			Siia tulevad js vead
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>Eesnimi:</td>
		    		<td><input name="regfirstname" type="text" /></td>
		    	</tr>
		    	<tr>
		    		<td>Perenimi:</td>
		    		<td><input name="reglastname" type="text" /></td>
		    	</tr>
		    	<tr>
		    		<td>Vanus:</td>
		    		<td>
		    			<select id="reg-age">
		    				<option value="choose" selected="selected">vali...</option>
		    				<% for(int i = 18; i < 100; i++) {%>
		    				<option value="<%=i%>"><%=i%></option>
		    				<% } %>
		    			</select>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>
		    			Maakond:
		    		</td>
		    		<td>
		    			<select id="reg-region">
		    				<option value="choose" selected="selected">vali...</option>
		    				<option value="Harju maakond">Harju maakond</option>
		    				<option value="Hiiu maakond">Hiiu maakond</option>
		    				<option value="Ida-Viru maakond">Ida-Viru maakond</option>
		    				<option value="Jõgeva maakond">Jõgeva maakond</option>
		    				<option value="Järva maakond">Järva maakond</option>
		    				<option value="Lääne maakond">Lääne maakond</option>
		    				<option value="Lääne-Viru maakond">Lääne-Viru maakond</option>
		    				<option value="Põlva maakond">Põlva maakond</option>
		    				<option value="Pärnu maakond">Pärnu maakond</option>
		    				<option value="Rapla maakond">Rapla maakond</option>
		    				<option value="Saare maakond">Saare maakond</option>
		    				<option value="Tartu maakond">Tartu maakond</option>
		    				<option value="Valga maakond">Valga maakond</option>
		    				<option value="Viljandi maakond">Viljandi maakond</option>
		    				<option value="Võru maakond">Võru maakond</option>
		    			</select>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td>
		    			Partei:
		    		</td>
		    		<td>
		    			<select id="reg-party">
		    				<option value="choose" selected="selected">vali...</option>
		    				<option value="gg">gg</option>
		    				<option value="gl">gl</option>
		    				<option value="hf">hf</option>
		    			</select>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td></td>
		    		<td>
		    			<input id="reg-submit" type="submit" value="Registreeri" />
		    		</td>
		    	</tr>
		    </table>
	    </form>
    </div>
    
    <%@ include file="jspf/footer.jspf" %>
    
  </body>
</html>
