<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Info</title>
<%String username = request.getParameter("username"); %>
</head>
<h1><%=username %></h1>
<body>
<%UserConnection log = new UserConnection(); %>
<table>
		<th>first name</th>
		<th>last name</th>
		<% LinkedList<User> listOfUsers =log.getAllUsers();%>
		<tr>
		<% for (int i=0; i<listOfUsers.size();i++){ %>
			<% if (username.equals(listOfUsers.get(i).getUserName())){ %>
			<td><% out.println(listOfUsers.get(i).getFirstName()); %></td> 
			<td><% out.println(listOfUsers.get(i).getLastName()); %></td> 
		<%}} %> 
		</tr>
		<%AuctionConnection auction = new AuctionConnection(); %>
</table>
<h3>Items Selling</h3>
<table>	
		<th>auction ID</th>	
		<th>VIN</th>
		<th>make</th>
		<th>model</th>
		<th>highest bid</th>
		<% LinkedList<Auction> listOfAuctions = auction.getAllAuctions();%>
		<% for (int i=0; i<listOfAuctions.size();i++){ %>
			<% if (username.equals(listOfAuctions.get(i).getSellerName())){ %>
			<tr>
			<%int auctInt = listOfAuctions.get(i).getAuctionID(); %>
			<% String auctionid = String.valueOf(auctInt); %>
			<td><a href = Auction.jsp?auctionid=<%=auctionid%>><% out.println(listOfAuctions.get(i).getAuctionID()); %></a>
			<td><% out.println(listOfAuctions.get(i).getVIN()); %></td> 
			<%ItemConnection item = new ItemConnection(); %>
			<%LinkedList<Item> listOfItems = item.getAllItems();%>
			<%for (int j=0; j<listOfItems.size(); j++){ %>
			<% if(listOfAuctions.get(i).getVIN().equals(listOfItems.get(j).getVIN())){ %>
				<td><% out.println(listOfItems.get(j).getMake()); %></td>
				<td><% out.println(listOfItems.get(j).getModel()); %></td>
			<%}} %>
			<td><% out.println(listOfAuctions.get(i).getHighestBid()); %></td> 									
			</tr>
		<%}} %> 
</table>
<h3>Items Bidding</h3>
<%BidsConnection bids = new BidsConnection(); %>
<table>
		<th>bid id</th>
		<th>auction id</th>
		<% LinkedList<Bids> listOfBids = bids.getAllBids();%>
		<% for (int i=0; i<listOfBids.size();i++){ %>
			<% if (username.equals(listOfBids.get(i).getbidderName())){ %>
			<tr>
			<td><% out.println(listOfBids.get(i).getbidID()); %></td> 
			<td><% out.println(listOfBids.get(i).getAuctionID()); %></td> 
			</tr>
		<%}} %> 
</table>
<script>
function goBack() {
    window.history.back();
}
</script>
</body>
</html>