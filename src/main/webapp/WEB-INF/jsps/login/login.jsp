<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Pages</title>
</head>
<body>
	<h2>Login here</h2>
	${error}
	<form action="verifylogin" method="post">
		email <input type ="text" name="email"/>
		password <input type="password" name="password"/>
		<input type="submit" value="login"/>
	</form>
</body>
</html>