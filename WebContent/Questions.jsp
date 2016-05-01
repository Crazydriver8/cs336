<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Questions</title>
</head>
<h1>Questions</h1>
<body>
<table>
<%QuestionConnection log = new QuestionConnection(); %>
		<tr> 
			<th>questionID</th>
			<th>VIN</th>
			<th>question</th> 
			<th>answer</th>
		</tr> 	
		<% LinkedList<Question> listOfQuestions =log.getAllQuestions();%>
		
		<% for (int i=0; i<listOfQuestions.size();i++){ %>
		<tr> 
			<td><%= listOfQuestions.get(i).getQuestionID() %></td> 	
			<td><%= listOfQuestions.get(i).getVIN() %></td> 		
			<td><%= listOfQuestions.get(i).getQuestion() %></td> 
			<td><%= listOfQuestions.get(i).getAnswer() %></td> 
			<% int questionidInt = listOfQuestions.get(i).getQuestionID(); %>
			<% String questionid = String.valueOf(questionidInt); %>			
			<td><a href = ModifyAnswer.jsp?questionid=<%=questionid%>>Modify Answer</a></td>								
		</tr>
		<%} %> 
	</table>
<a href="CustomerRepHomepage.jsp">
<button>Back to Homepage</button>
</a>
</body>
</html>