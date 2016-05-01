<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%String auctionid = request.getParameter("auctionid");%>
<%int auctionid2 = Integer.parseInt(auctionid);%>
<title>Auctions</title>
</head>
<h1>Auction <%=auctionid2 %></h1>
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
			<%if(listOfAuctions.get(i).getAuctionID() == auctionid2){ %>
				<td><%= listOfAuctions.get(i).getAuctionID() %></td> 
				<td><%= listOfAuctions.get(i).getVIN() %></td> 
				<td><%= listOfAuctions.get(i).getHighestBid() %></td> 
				<td><%= listOfAuctions.get(i).getSellerName() %></td> 
			<%} %>						
		</tr>
		<%} %> 
	</table>
</body>
<a href="Auctions.jsp">
<button>Back to Auctions</button>
</a>
</html>