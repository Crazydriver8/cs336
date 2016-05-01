<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Auctions</title>
</head>
<h1>Auctions</h1>
<body>
<table>
<%AuctionConnection log = new AuctionConnection(); %>
		<tr> 
			<th>auctionID</th> 
			<th>VIN</th>
			<th>highest bid</th>
			<th>seller name</th>
		</tr> 	 
		<% LinkedList<Auction> listOfAuctions =log.getAllAuctions();%>
		
		<% for (int i=0; i<listOfAuctions.size();i++){ %>
		<tr> 
			<%int auctInt = listOfAuctions.get(i).getAuctionID(); %>
			<% String auctionid = String.valueOf(auctInt); %>
			<td><a href = Auction.jsp?auctionid=<%=auctionid%>><%= listOfAuctions.get(i).getAuctionID() %></a></td> 
			<td><%= listOfAuctions.get(i).getVIN() %></td> 
			<td><%= listOfAuctions.get(i).getHighestBid() %></td> 
			<td><%= listOfAuctions.get(i).getSellerName() %></td> 
			<td><a href = RemoveAuction.jsp?auctionid=<%=auctionid%>>Remove</a></td>						
		</tr>
		<%} %> 
	</table>
<a href="CustomerRepHomepage.jsp">
<button>Back to Homepage</button>
</a>
</body>
</html>