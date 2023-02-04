<!-- Core tag Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%

	// Created some sample data... it can be provided by MVC
	String [] cities ={"Mumbai", "Singapore", "Delhi"};

	// Name(myCities)-Value(cities) pair
	// This needs to be set in order to access it in JSP
	pageContext.setAttribute("myCities", cities);

%>
<html>

<head><title>JSP Tags forEach Testing</title></head>

<body>
	<!-- Core forEach JSP tag for variables -->
	<c:forEach var="tempCity" items="${myCities}">
	
		${tempCity}	<br>
	
	</c:forEach>

</body>

</html>