<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<%Login log = new Login(); %>
<%
String bidid = request.getParameter("bidid");
int bidid2 = Integer.parseInt(bidid);
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?autoReconnect=true","root","root");	
//Connection conn = log.getConnection();
if (conn == null) {
	response.sendRedirect("Failure.jsp");
	System.out.println("Connection Error");
	return;
}
Statement stmt = conn.createStatement();
System.out.println(stmt);

int i = 0;
i = stmt.executeUpdate("delete from Bids where Bids.bidID = " + bidid2 + ";");

if (i > 0) {
    response.sendRedirect("CustomerRepHomepage.jsp");
  	
}

%>