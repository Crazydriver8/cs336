<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<%Login log = new Login(); %>
<%
String vin = request.getParameter("vin");    
String question = request.getParameter("question");

//NOT SURE HOW TO HANDLE WHAT USER IS POSTING
String currUser = "";

//Class.forName("com.mysql.jdbc.Driver").newInstance();
//Connection conn = DriverManager.getConnection("jdbc:mysql:http://classvm120.cs.rutgers.edu:8080/CS336/","root","GimGamGom5"	);	
Connection conn = log.getConnection();
if (conn == null) {
	response.sendRedirect("Failure.jsp");
	System.out.println("Connection Error");
	return;
}
Statement stmt = conn.createStatement();
System.out.println(stmt);

int h = stmt.executeUpdate("insert into ItemQuestion(VIN, question) values ('" + vin + "','" + question + "')");
if (h > 0) {
  
   response.sendRedirect("UserLanding.jsp");

} else {
	//DISPLAY ERROR
    //response.sendRedirect("index.jsp");
}
%>