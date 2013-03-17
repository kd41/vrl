<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
                                                           
    <link type="text/css" rel="stylesheet" href="css/base.css" />
    <link type="text/css" rel="stylesheet" href="css/clean.css" />
    <link type="text/css" rel="stylesheet"  href="css/print.css" media="print" />

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
				Tänan.
			</c:when>
			<c:otherwise>
				<form action="/statistic" method="post">
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
			</c:otherwise>
		</c:choose>
		
		Statistics: <br />
		<c:forEach var="entry" items="${statistics}">
			${entry}<br/>
		</c:forEach>
		<div class="hidden0">
			<form action="/clearstatistic" method="post">
				<input type="text" name="password" id="password" />
				<input type="submit" value="Clear" />
 			</form>
		</div>
    </div>
    
    <%@ include file="jspf/footer.jspf" %> 
    
  </body>
</html>
