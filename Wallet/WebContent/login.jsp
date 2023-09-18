<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
	<body>
		<center>
			<form action="login" method="post">
				User Name: <input type="text" name="username"  placeholder="User Name">
				<br>
				<br>
				Password: <input type="password" name="password" placeholder="Password"><br>
				<br>
				<br>
				<input type="submit" name="login" value="Login">
			</form>
		</center>
		<!-- <div id="errorPopup" class="popup">
        	<h2>Error</h2>
        	<p id="errorMessage"></p>
        	<button onclick="closeErrorPopup()">Close</button>
    </div> -->
   <!--  <script>
    	function showErrorPopup(message) {
			const errorPopup = document.getElementById("errorPopup");
			const errorMessageElement = document.getElementById("errorMessage");
			errorMessageElement.textContent = message;
			errorPopup.style.display = "block";
			}
		function closeErrorPopup() {
			const errorPopup = document.getElementById("errorPopup");
			errorPopup.style.display = "none";
		}
    </script> -->
	</body>
</html>