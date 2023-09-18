<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		Create new account
		<center>
			<form action="main.jsp">
				Full Name: <input type="text" name="fullname" placeholder="Full Name">
				<br>
				<br>
				User Name: <input type="text" name="username" placeholder="User Name">
				<br>
				<br>
				Password:<input type="password" name="cpassword" placeholder="Password">
				<br>
				<br>
				Mobile no:<input type="number" name="mobile" placeholder="Mobile no">
				<br>
				<br>
				Account ID:<input type="number" name="accno" placeholder="Account No">
				<br>
				<br>
				<input type="submit" name="create" value="Create">
		</form>
		</center>
	</body>
</html>