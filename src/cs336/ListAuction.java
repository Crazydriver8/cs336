package cs336;

import java.sql.Date;

public class ListAuction {
	private String VIN;
	private String Make;
	private String Model;

	private int auctionID;
	private String sellerName;
	private double minPrice;
	private double highestBid;
	private Date openDate;
	private Date closeDate;
		public ListAuction( String vin, String make, String model,int auctionid, String sellername, Date opendate, Date closedate, double minprice, double highestbid)
		{
			super();
			auctionID = auctionid;
			VIN = vin;
			sellerName = sellername;
			openDate = opendate;
			closeDate = closedate;
			
			minPrice = minprice;
			highestBid = highestbid;
			Make = make;
			Model = model;
		}


		
	


	public ListAuction(){
		
	}

	public String getVIN() {
		return VIN;
	}
	public void setVIN(String vin) {
		VIN = vin;
	}
	public String getMake() {
		return Make;
	}

	public void setMake(String make) {
		Make = make;
	}
	public String getModel() {
		return Model;
	}
	public int getAuctionID() {
		return auctionID;
	}

	public void setAuctionID(int auctionid) {
		auctionID = auctionid;
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
