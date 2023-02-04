<html>
<body>

<h3>Hello world of Java!</h3>

<%!
	String makeItLower(String data)
	{
		return data.toLowerCase();
	}
%>

Lower case "Hello World": <%= makeItLower("Hello world") %>

</body>
</html>