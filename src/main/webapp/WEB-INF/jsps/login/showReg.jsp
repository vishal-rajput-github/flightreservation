<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Here...</title>
</head>
<body>
	<h2>New User Login Page..</h2>
	<form action="saveReg" method="post">
		<pre>
		First_Name<input type="text" name="firstname" />
		Last_Name<input type="text" name="lastname" />
		Email<input type="text" name="email" />
		Password<input type="text" name="password" />
		<input type="submit" value="save" />
		</pre>
	</form>
</body>
</html>