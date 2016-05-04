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
	<h3>Bids</h3>
<%BidsConnection bids = new BidsConnection(); %>
<table>
		<th>auction id</th>
		<th>bid id</th>
		<% LinkedList<Bids> listOfBids = bids.getAllBids();%>
		<% for (int i=0; i<listOfBids.size();i++){ %>
			<% if (auctionid2 == listOfBids.get(i).getAuctionID()){ %>
			<tr>
			<%int bidInt = listOfBids.get(i).getbidID(); %>
			<% String bidid = String.valueOf(bidInt); %>
			<td><% out.println(listOfBids.get(i).getAuctionID()); %></td> 
			<td><% out.println(listOfBids.get(i).getbidID()); %></td> 
			<td><a href = RemoveBid.jsp?bidid=<%=bidid%>>Remove</a></td>	
			</tr>
		<%}} %> 
</table>
</body>
<button onclick="goBack()">Go Back</button>
<script>
function goBack() {
    window.history.back();
}
</script>
</html>