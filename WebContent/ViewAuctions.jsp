<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Inside view Auctions</title>
</head>
<body>
<%int id = Integer.parseInt(request.getParameter("auctionid")); %>
<%--//create new cookie
		Cookie auctionCookie = new Cookie("auction",request.getParameter("auctionid"));
        //setting cookie to expiry in 30 mins
        auctionCookie.setMaxAge(30*60);
        response.addCookie(auctionCookie);
        auctionCookie.setDomain("historyBids.jsp");            


       	
		 --%>
	
		


<%AuctionConnection log = new AuctionConnection(); %>

<table>
		<% LinkedList<Auction> listOfAuctions =log.getAllAuctions();%>
		<tr>
		<% for (int i=0; i<listOfAuctions.size();i++){ %>
			<% if (id==listOfAuctions.get(i).getAuctionID()){ %>
			<td><% out.println(listOfAuctions.get(i).getAuctionID()); %></td> 
			<td><% out.println(listOfAuctions.get(i).getSellerName()); %></td> 
		<%}} %> 
		</tr>

		
		
	<h1>Your selected Auction</h1>  <!-- 
	        name or number of auction  User clicks from the list.
	        -->
	<a href="">Ask Question</a> <!-- to customer service page  -->
	<a href="Bid.jsp">Bid</a>  
	<a href="historyBids.jsp">History Bids</a> 
	<a href="">Similar Items</a> <!-- later to be handled  -->


</body>
</html>