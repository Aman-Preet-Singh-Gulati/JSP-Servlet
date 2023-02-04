<!-- Core JSTL tag Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Function JSTL tag Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>

	<head><title>Function tag</title></head>
	
	<body>
	
		<c:set var="data" value="Singapore,Tokyo,Mumbai,London" />
		<h3>Split Demo</h3>
		
		<!-- Spitting -->
		<c:set var="citiesArray" value="${fn:split(data, ',')}" />
			
		<!-- Loop through each city as an array -->	
		<c:forEach var="temCity" items="${citiesArray}">
			${temCity} <br>
		</c:forEach>
		
		<!-- Join -->
		<c:set var="fun" value="${fn:join(citiesArray, '*') }"/>
		
		Result of joining: ${fun}
		
	</body>

</html>