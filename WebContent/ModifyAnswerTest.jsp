<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<%Login log = new Login(); %>
<%
String questionid = request.getParameter("questionid");
int questionid2 = Integer.parseInt(questionid);
String answer = request.getParameter("answer");
out.println(answer);

Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/proj2016?autoReconnect=true","root","GimGamGom5"	);	
//Connection conn = log.getConnection();
if (conn == null) {
	response.sendRedirect("Failure.jsp");
	System.out.println("Connection Error");
	return;
}
Statement stmt = conn.createStatement();
System.out.println(stmt);

int i = 1;
if(!(answer.equals(""))){
	i = stmt.executeUpdate("update ItemQuestion set answer = \""+answer+"\" where ItemQuestion.questionID = " + questionid + ";");
}    
if (i > 0) {
    response.sendRedirect("Questions.jsp");	
}

%>