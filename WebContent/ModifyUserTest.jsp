<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<%Login log = new Login(); %>
<%
String currusername = request.getParameter("currusername");
String username = request.getParameter("username");    
String password = request.getParameter("password");
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");

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

int i = 0;
if(!(username.equals(""))){
	i = stmt.executeUpdate("update Users set userName = \""+username+"\" where Users.userName = \"" + currusername + "\";");
	currusername = username;
}    
if(!(password.equals(""))){
	i = stmt.executeUpdate("update Users set passWord = \""+password+"\" where Users.userName = \"" + currusername + "\";");	
}
if(!(firstname.equals(""))){
	i = stmt.executeUpdate("update Users set firstName = \""+firstname+"\" where Users.userName = \"" + currusername + "\";");
}
if(!(lastname.equals(""))){
	i = stmt.executeUpdate("update Users set lastName = \""+lastname+"\" where Users.userName = \"" + currusername + "\";");

}

if (i > 0) {
  	if(username.equals("")){
  		response.sendRedirect("User.jsp?username="+currusername);
  	}
  	else{
    	response.sendRedirect("User.jsp?username="+username);
  	}
} else {
    response.sendRedirect("ModifyUser.jsp");
}
%>