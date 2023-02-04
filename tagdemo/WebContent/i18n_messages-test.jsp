<!-- Core tag Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Formatting tag Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%-- So it will extract either the Locale value (en_US/es_ES/de_DE) from hyperlinks or from HTTP request --%>
<c:set var = "theLocale"
value = "${not empty param.theLocale ? param.theLocale : pageContext.request.locale}"
scope = "session"></c:set>

<!-- Setting the locale value -->
<fmt:setLocale value="${theLocale}" />

<!-- Importing the bundle i.e. resources i.e. properties -->
<fmt:setBundle basename="com.luv2code.jsp.tagdemo.i18n.resources.mylabels" />

<html>

<head><title>Step 2 Create JSP page with Labels</title></head>

<body>
	
	<br>
	<a href="i18n_messages-test.jsp?theLocale=en_US">English (US)</a>
	|
	<a href="i18n_messages-test.jsp?theLocale=es_ES">Spanish (ES)</a>
	|
	<a href="i18n_messages-test.jsp?theLocale=de_DE">German (DE)</a>
	<hr>
	
	<fmt:message key ="label.greeting" /> <br><br>
	<fmt:message key ="label.firstname" /> <i>John</i> <br><br>
	<fmt:message key ="label.lastname" /> <i>Doe</i> <br><br>
	<fmt:message key ="label.welcome" /> <br><br>
	
	<hr>
	Selected Locale: ${theLocale }
	
</body>

</html>