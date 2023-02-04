<%@page import="com.luv2code.jsp.FunUtils"%>
<html>
<body>

<h3>Hello world of Java!</h3>

<!-- Fully Qualified name should be given while writing the function name -->

Let's have some fun <%= com.luv2code.jsp.FunUtils.makeItLower("FUN FUN") %>
<br><br>
<!-- Or we can use import statement supported by JSP to make code easy to read
where we don't have to write fully qualified name. -->

Let's have some fun <%= FunUtils.makeItLower("FUN FUN") %>

</body>
</html>