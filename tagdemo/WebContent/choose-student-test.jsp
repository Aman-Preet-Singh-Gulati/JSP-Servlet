<!-- Core tag Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Importing the Student class from the import tag of JSP -->
<%@ page import="java.util.*, com.luv2code.jsp.tagdemo.Student" %>
<html>

<head><title>JSP forEach Tags HTML tables Testing</title>

	<% 	
	// Just create some data.... normally provided by MVC
	
	List<Student> data = new ArrayList<>();
	
	data.add(new Student("John", "Doe", false));
	data.add(new Student("Maxwell", "Johnson", false));
	data.add(new Student("Mary", "Public", true));
	
	pageContext.setAttribute("myStudents", data);
	
	%>	


</head>

<body>

	<table border="1">

	<!-- Table rows -->
	<tr>
		<!-- Table headers -->
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
	</tr>

	<c:forEach var="tempStudent" items="${myStudents}">
	
        <%-- ${tempStudent.firstName} ${tempStudent.lastName}, ${tempStudent.goldCustomer}<br> --%>	
        <tr>
			<td>${tempStudent.firstName}</td>
			<td>${tempStudent.lastName}</td>
			<td>
				<c:choose>
					<c:when test = "${tempStudent.goldCustomer}">
						Special Discount
					</c:when>
					
					<c:otherwise>
						No Special Discount (buy some golds)
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
			
		<!-- 
		For tempStudent.firstName JSP will call - tempStudent.getFirstName()
		For tempStudent.lastName JSP will call - tempStudent.getLastName()
		For tempStudent.goldCustomer JSP will call - tempStudent.isGoldCustomer()
		-->	
	
	</c:forEach>	
	</table>

</body>

</html>