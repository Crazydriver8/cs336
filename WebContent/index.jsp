<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="css/default.css" type="text/css" />
</head>
<body>
	<div id= "loginForm">
		<h1>Log In</h1>
		
		<form action="test.jsp" method="post">
			<div id="entry">
				<input type = "text" name = "username" placeholder="Username" id="form-control"><br>
			</div>
			<div id="entry">
				<input type = "password" name = "password" placeholder="Password" id="form-control"><br>
			</div>
			<input type="submit" value="Log In" id="loginButton"></input>
			<td colspan="2">
				<a href="Registration.jsp" id="registerLink">
					Not Registered?
				</a>
			</td>
		</form>
	</div>
</body>
</html>