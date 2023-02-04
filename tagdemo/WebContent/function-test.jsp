<!-- Core JSTL tag Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Function JSTL tag Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>

	<head><title>Function tag</title></head>
	
	<body>
	
		<c:set var="data" value="luv2code" />
		Length of the string <b>${data}</b>: ${fn:length(data)}
		<br><br>
		
		UpperCase version of the string <b>${data}</b>: ${fn:toUpperCase(data) }
		<br><br>

		LowerCase version of the string <b>${data}</b>: ${fn:toLowerCase(data) }
		<br><br>
		
		Does the string <b>${data }</b> starts with <b>luv</b> : ${fn:startsWith(data, "luv") }
		<br><br>

		Does the string <b>${data }</b> starts with <b>luv</b> : ${fn:startsWith(data, "love") }
		
		
		
	</body>

</html>