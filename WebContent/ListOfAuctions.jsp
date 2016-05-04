<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>List of Auctions</title>
</head>
<body>
	<h1>Car Auctions</h1> 
	
	<table class="bbs" width="800" height="200" border="2" bgcolor="D8D8D8">
	<colgroup>
		<col width="50"/>
		<col width="50"/>
		<col width="50"/>
		<col width="50"/>
<%AuctionConnection log = new AuctionConnection(); %>
	
		<tr> 
			<th>AuctionNumber</th> 
			<th>SellerName</th>
			<th>HighestBid</th>
		</tr> 	
		<% LinkedList<Auction> listOfAuctions =log.getAllAuctions();%>
		
		<% for (int i=0; i<listOfAuctions.size();i++){ %>
		<tr> 
			<% int auction = listOfAuctions.get(i).getAuctionID(); %>
			<td><a href =ViewAuctions.jsp?auctionid=<%=auction%>><%= listOfAuctions.get(i).getAuctionID() %></a></td> 
			<td><%= listOfAuctions.get(i).getSellerName() %></td> 
			<td><%= listOfAuctions.get(i).getHighestBid() %></td> 			
									
		</tr>
		<%} %> 
	</table>


<button onclick="goBack()">Go Back</button>
<script>
function goBack() {
    window.history.back();
}
</script>

</body>
</html>