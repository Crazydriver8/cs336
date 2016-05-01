<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%String recUser = request.getParameter("receivingUser");%>    
    <%String subject = request.getParameter("subject");%>
    <%String msg = request.getParameter("body");%>
    <%
    	System.out.println(recUser);
    	System.out.println(subject);
    	
    	if (recUser == null || recUser == "" || subject == null || subject == "") {
    		System.out.println("Please fill out all required fields");
    		response.sendRedirect("Email.jsp");
    		return;
    	}
    	
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
    	
    	boolean i;
    	System.out.println("insert into Email(receivingUser, sendDate, sendTime, subject, message) values ("+ recUser +", curdate(), curtime(), "+ subject + ", " + msg + ")");
    	
    	i = stmt.execute("insert into Email(receivingUser, sendDate, sendTime, subject, message, delivered) values ("+ recUser +", curdate(), curtime(), "+ subject + ", " + msg + ", N)");
		if (i) {
			System.out.println("insert successful, updating sent bool");
			System.out.println("update Email set delivered = Y where receivingUser = " + recUser + " and subject = " + subject + " and message = " + msg);
			i = stmt.execute("update Email set delivered = Y where receivingUser = " + recUser + " and subject = " + subject + " and message = " + msg);
		}
		response.sendRedirect("UserLanding.jsp");
    	%>
</body>
</html>
%>