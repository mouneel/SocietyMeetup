<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page - Login details</title>
</head>
<body>
	User Login<br>
	<form name="login" method="post" action="ValidateUser.html">
		User  Name: <input type="text" id="id" name="userId" value="mtm"> <br>
		Password: <input type="password" id="pass" name="password" value="mtm"><br>
		<input type="submit" name="Login" id="login">
	</form>	
</body>
</html>