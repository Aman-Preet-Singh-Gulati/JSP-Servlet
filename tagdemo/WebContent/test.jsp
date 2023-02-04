<%@page import="java.util.Date"%>
<!-- Core tag Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head><title>JSP Tags Testing</title></head>

<body>
	<!-- Core JSP tag for variables -->
							  <!-- Scriplet -->	
	<c:set var="stuff" value="<%= new Date() %>" />
	Time on the server is ${stuff}

</body>

</html>