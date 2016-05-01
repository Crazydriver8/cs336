<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modify User</title>
</head>
<%String questionid = request.getParameter("questionid"); %>
<h1>Modify Answer for Question <%=questionid %></h1>
 <form method="post" action="ModifyAnswerTest.jsp?questionid=<%=questionid%>">
<h3>new answer</h3>
<input type="text" name="answer" value="" />
<input type="submit" value="Submit" />
</form>
<body>
</body>
</html>