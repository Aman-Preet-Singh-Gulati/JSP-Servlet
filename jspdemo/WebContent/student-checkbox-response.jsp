<html>
<body>

The student name is confirmed: ${param.firstName} and ${param.secondName}
<br><br>

<!-- Display list of programming language -->
The student favorite programming languages are:
<ul>
	<%
		String[] languages = request.getParameterValues("favoriteLanguage");
		if (languages!= null)
		{
			for (String tempLanguage: languages)
			{
				out.println("<li>"+tempLanguage+"</li>");
			}
		}
		else
		{
			out.println("No languages selected");
		}
	%>
</ul>
</body>
</html>