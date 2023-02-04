<!-- Core JSTL tag Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Function JSTL tag Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>

	<body>
		<h2>Students Table Demo</h2>
		<hr>
		<br/>
		
		<table>
			
			<tr>
				<th>First Name
				<th>Last Name
				<th>Email				
			</tr>		
									<!-- Same attribute name set by the Servlet -->
		<c:forEach var="tempStudents" items="${students_list}">
				<tr> 
					<td> ${tempStudents.firstName} </td>
					<td> ${tempStudents.lastName} </td>
					<td> ${tempStudents.email} </td>					
				</tr>
		</c:forEach>	
			
		</table>
		
	
	</body>

</html>