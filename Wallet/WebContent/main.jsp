<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login and Create Account</title>
		
	</head>
	
	<body>
		<center>
			<h1> Welcome to The Wallet</h1>
	
			<form action="login.jsp" method="post">
				<input type="submit" name="login" value="Login" onclick="login.jsp" style=" width:150px; heigth:300px;" >
			</form>
			<br>
			<form action="create.jsp" method="post">
				<input type="submit" name="create" value="Create a New Account" onclick="create.jsp" style=" width:150px; heigth:300px;">
			</form>
		</center>
	</body>
</html>