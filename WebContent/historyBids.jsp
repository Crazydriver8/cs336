<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HistoryofBids</title>
</head>
<h1>Bids on this item</h1>
<body>
<p> </p>
<marquee behavior ="alternate" scrolldelay ="100" direction="right">
	This is current bids</marquee>
<table class="bbs" width="800" height="200" border="2" bgcolor="D8D8D8">
	<colgroup>
		<col width="50"/>
		<col width="50"/>
		<col width="50"/>
		<col width="50"/>


<%BidsConnection log = new BidsConnection(); %>
		<tr> 
			<th>BidID</th> 
			<th>bid</th>
			<th>last name</th>
			<th>HistoryofBids</th>
		</tr> 	
		<% LinkedList<Bids> listOfBids =log.getAllBids();%>
		
		<% for (int i=0; i<listOfBids.size();i++){ %>
		<tr> 
			<% int bidID = listOfBids.get(i).getbidID(); %>
			<td><a href = historyBids.jsp?bidID=<%=bidID%>><%= listOfBids.get(i).getbidID() %></a></td> 
			<td><%= listOfBids.get(i).getbidID() %></td>
			<td><%= listOfBids.get(i).getbidderName() %></td> 			
			<td><a href = ModifyUser.jsp>Modify</a></td>						
		</tr>
		<%} %> 
	</table>
			<td colspan="2"><a href="Bid.jsp">Bid Now</a></td>
	
</body>
</html>

>