<!-- Core JSTL tag Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Function JSTL tag Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>

	<body>
											<!-- Same attribute name set by the Servlet -->
		<c:forEach var="tempStudents" items="${students_list }"> 
				${tempStudents} <br>
		</c:forEach>
	
	</body>

</html>