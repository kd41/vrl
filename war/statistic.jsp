<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
                                                           
    <link type="text/css" rel="stylesheet" href="css/base.css" />
    <link type="text/css" rel="stylesheet" href="css/clean.css" />
    <link type="text/css" rel="stylesheet"  href="css/print.css" media="print" />
    <link type="text/css" rel="stylesheet" href="css/tablesort.css" />
    <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="js/jquery.tablesorter.js"></script>
    <script type="text/javascript" src="js/statistic.js"></script>

    <title>Tulemused</title>
  </head>
  <body>
	<%@ include file="jspf/header.jspf" %> 
	<% request.setAttribute("currentPage","statistic"); %>
	<%@ include file="jspf/menu.jspf" %> 
    <div class="content">
	    <h1>Statistika:</h1>
		<c:choose>
		    <c:when test="${empty teamNames}">
				<p class="reg-error">* Viga, proovi uuesti.</p>
			</c:when>
			<c:otherwise>
				<div>
					<form action="/statistic" method="post" id="choose-form">
					    Me oleme: 
					    <select name="current">
					    	<c:forEach items="${teamNames}" var="name" varStatus="status">
					    		<option value="${status.index}">${name}</option>
					    	</c:forEach>
					    </select>
					    ja anname oma hääli: 
					    <select name="choose">
					    	<c:forEach items="${teamNames}" var="name" varStatus="status">
					    		<option value="${status.index}">${name}</option>
					    	</c:forEach>
					    </select>
						parool on: <input type="text" name="password" value="" />
						<input type="submit" value="Valin!" />
					</form>
				</div>
			</c:otherwise>
		</c:choose>
		<div>
			<p>Statistics: </p>
			<table id="statistic-table" class="tablesorter">
				<thead>
	    			<tr>
	    				<th>Nr</th>
	    				<th>Rühma nimi</th>
	    				<th>Valinud?</th>
	    				<th>Tulemus</th>
	    			</tr>
	    		</thead>
	    		<tbody>
					<c:forEach var="entry" items="${statistics}">
						<tr>
							<td>${entry.id}</td>
							<td>${entry.name}</td>
							<td>
								<c:choose>
		    						<c:when test="${entry.choosed eq 'true'}">
										jah
									</c:when>
									<c:otherwise>
										ei
									</c:otherwise>
								</c:choose>
							</td>
							<td>${entry.score}</td>
						</tr>
					</c:forEach>
	    		</tbody>
			</table>
		</div>
		<div class="hidden">
			<form action="/clearstatistic" method="post">
				<input type="text" name="password" id="password" />
				<input type="submit" value="Clear" id="submit-clear" />
 			</form>
		</div>
    </div>
    <%@ include file="jspf/footer.jspf" %> 
  </body>
</html>
