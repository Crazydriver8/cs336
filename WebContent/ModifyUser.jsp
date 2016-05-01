<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modify User</title>
</head>
<%String username = request.getParameter("username"); %>
<h1>Modify <%=username %></h1>
 <form method="post" action="ModifyUserTest.jsp?currusername=<%=username%>">
<table>
	<tr>
		<th>field</th>
		<th>modification</th>
	</tr>
	<tr>
		<td>username</td>
		<td><input type="text" name="username" value="" /></td>
	</tr>
	<tr>
		<td>password</td>
		<td><input type="text" name="password" value="" /></td>
	</tr>
	<tr>
		<td>first name</td>
		<td><input type="text" name="firstname" value="" /></td>
	</tr>
	<tr>
		<td>last name</td>
		<td><input type="text" name="lastname" value="" /></td>
	</tr>
</table>
<input type="submit" value="Submit" />
</form>
<body>
</body>
</html>