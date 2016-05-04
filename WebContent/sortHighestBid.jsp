<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>sortedbyHighestbid</title>
</head>
        <script>
    
   
    function searchCheck(frm){
        //search
        if(frm.keyWord.value ==""){
            alert("Please write more than one letter for search!");
            frm.keyWord.focus();
            return;
        }
        frm.submit();      
    
    }
    function searchCheck2(frm){
        //search
       
        if(frm.keyWord2.value ==""){
            alert("Please write more than one letter for search!");
            frm.keyWord2.focus();
            return;
        }
        frm.submit();      
    }
</script>
<body>
	<h1>Car Auctions</h1> 
	


<%ListAuctionConnection log = new ListAuctionConnection(); %>
<%ItemConnection log2 = new ItemConnection(); %>
	 

        
        <%        
  
        	String keyField = request.getParameter("keyField");
        	String keyWord = request.getParameter("keyWord");
   
        	ArrayList<ListAuction> list = log.getHighBidAuctionlist(keyField, keyWord);



 %>
 	    <table>
        <tr bgcolor="pink">
 <th>AuctionID</th><th>VIN</th><th>SellerName</th><th>CloseDate</th><th>Company</th><th>Model</th><th><a href = sortHighestBid.jsp><Highest Bid/a>=HighestBid</th>        </tr>
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



</body>
</html>