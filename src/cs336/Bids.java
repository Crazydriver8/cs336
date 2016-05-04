package cs336;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Bids {


	private int bidID;
	private int auctionID;
	private String bidderName;
	private double bidAmount;
	private String time;
	private String bidDate;
	private String automatic;
	private double upperLimit;
	
	public Bids(int bidid, int auctionid, String biddername, double bidamount, String time, String biddate, String automatic, double upperlimit) 
	{
		super();
		bidID = bidid;
		auctionID = auctionid;
		bidderName = biddername;
		bidAmount = bidamount;
		this.time = time;
		bidDate = biddate;
		this.automatic= automatic;
		upperLimit =upperlimit;
	}


	public Bids(){
		
	}

	public int getbidID() {
		return bidID;
	}

	public void setbidID(int bidid) {
		bidID = bidid;
	}

	public int getAuctionID() {
		return auctionID;
	}

	public void setAuctionID(int auctionid) {
		auctionID = auctionid;
	}
	public String getbidderName() {
		return bidderName;
	}
	public void setbidderName(String biddername) {
		bidderName = biddername;
	}
	public double getbidAmount() {
		return bidAmount;
	}
	public void setbidAmount(double bidamount) {
		bidAmount = bidamount;
	}
	public String gettime() {
		return time;
	}
	public void settime(String time) {
		this.time = time;
	}
	public String getbidDate() {
		return bidDate;
	}
	public void setbidDate(String biddate) {
		bidDate = biddate;
	}
	public String getautomatic() {
		return automatic;
	}
	public void setautomatic(String automatic) {
		this.automatic = automatic;
	}
	public double getupperLimit() {
		return upperLimit;
	}
	public void setupperLimit(double upperlimit) {
		upperLimit = upperlimit;
	}
}
