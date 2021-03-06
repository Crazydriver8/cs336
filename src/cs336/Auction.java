package cs336;
import java.sql.Date;



public class Auction {
	private int auctionID;
	private String VIN;
	private String sellerName;
	private double minPrice;
	private double highestBid;
	private Date openDate;
	private Date closeDate;
	public Auction(int auctionid, String vin, String sellername,Date opendate, Date closedate, double minprice, double highestbid) 
	{
		super();
		auctionID = auctionid;
		VIN = vin;
		sellerName = sellername;
		openDate = opendate;
		closeDate = closedate;

		minPrice = minprice;
		highestBid = highestbid;
	}


	public Auction(){
		
	}

	public int getAuctionID() {
		return auctionID;
	}

	public void setAuctionID(int auctionid) {
		auctionID = auctionid;
	}

	public String getVIN() {
		return VIN;
	}

	public void setVIN(String vin) {
		VIN = vin;
	}
	public String getSellerName() {
		return sellerName;
	}

	public void setSellerName(String sellername) {
		sellerName = sellername;
	}
	public double getMinPrice() {
		return minPrice;
	}

	public void setOpenDate(Date opendate) {
		openDate = opendate;
	}
	public Date getOpenDate() {
		return openDate;
	}
	public void setCloseDate(Date closedate) {
		closeDate = closedate;
	}
	public Date getCloseDate() {
		return closeDate;
	}

	public void setMinPrice(double minprice) {
		minPrice = minprice;
	}
	public double getHighestBid() {
		return highestBid;
	}

	public void setHighestBid(double highestbid) {
		highestBid = highestbid;
	}
}
