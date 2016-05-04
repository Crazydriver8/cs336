<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>List of Auctions</title>
<link rel="stylesheet" href="css/default.css" type="text/css" />
</head>
<body>
	<div id="logo"><h1>CarSellers</h1></div>
	
<<<<<<< HEAD
	<div id="titleText"><h1>Car Auctions</h1></div> 
	
<<<<<<< HEAD


<%ListAuctionConnection log = new ListAuctionConnection(); %>
<%ItemConnection log2 = new ItemConnection(); %>
	 

        
        <%        
  
        	String keyField = request.getParameter("keyField");
        	String keyWord = request.getParameter("keyWord");
   
        	ArrayList<ListAuction> list = log.getListAuction(keyField, keyWord);



 %>
 	    <table id = "listTable">
        	<tr id = "tableTop" bgcolor="pink">
 				<th>AuctionID</th>
 				<th>VIN</th>
 				<th>SellerName</th>
 				<th>CloseDate</th>
 				<th>Company</th>
 				<th>Model</th>
 				<th><a href = sortHighestBid.jsp><Highest Bid/a>=HighestBid</th>        
 			</tr>
    <%
       for(ListAuction vo : list){
   
    %>
       
        <tr>
        
        <% int auction = vo.getAuctionID(); %>
        
        	<td><a href =ViewAuctions.jsp?auctionid=<%=auction%>><%= vo.getAuctionID() %></a></td> 
        	
            <td><%=vo.getVIN() %></td>
            <td><%=vo.getSellerName() %></td>
            <td><%=vo.getCloseDate() %></td>
            <td><%=vo.getMake() %></td>
            <td><%=vo.getModel() %></td>           
            <td><%=vo.getHighestBid()%></td>    
        </tr>              
       
    <%
    	 }
    
     %>
            <form name="serach" method ="post">
            <select name="keyField">
                <option value="0" > ----select----</option>
                <option value="auctionID" onclick="seachCheck(form)">AuctionID</option>
                <option value="VIN" onclick="seachCheck(form)">VIN</option>
                <option value="sellerName">sellerName</option>
                <option value="closeDate">CloseDate</option>                    
                <option value="Make">Company</option>
                <option value="Model">Model</option>              
                 <option value="highestBid">Highest Bid</option>
                
				
                
            </select>
              <input type="text" name="keyWord" />
            <input type="button" value="search" onclick="searchCheck(form)" />

            </form>
           
        </td>      
    </tr>


=======
=======
>>>>>>> origin/master
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
<<<<<<< HEAD
>>>>>>> origin/master
=======
>>>>>>> origin/master

</body>
</html>