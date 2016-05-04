package cs336;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;

import javax.servlet.http.HttpServlet;

public class ListAuctionConnection extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	private String VIN;
	private String Make;
	private String Model;

	private int auctionID;
	private String sellerName;
	private double minPrice;
	private double highestBid;
	private Date openDate;
	private Date closeDate;
	// CONNECTION METHODS
				// Attempts to get connection to server, StackTraces on failure
				public Connection getConnection(){
					String connectionUrl = "jdbc:mysql://localhost:3306/proj2016?autoReconnect=true";
					//String connectionUrl = "jdbc:mysql://classvm115.cs.rutgers.edu:3306/myDB?autoReconnect=true";
					//String connectionUrl = "jdbc:mysql:http://classvm120.cs.rutgers.edu:8080/CS336/";
					//String connectionUrl =  "jdbc:mysql://localhost:3306/mydb?autoReconnect=true";
							

					Connection connection = null;
					
					try {
						Class.forName("com.mysql.jdbc.Driver").newInstance();
					} catch (InstantiationException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IllegalAccessException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					try {
						connection = DriverManager.getConnection(connectionUrl,"root", "root");
						//connection = DriverManager.getConnection(connectionUrl,"root", "GimGamGam99");
						//connection = DriverManager.getConnection(connectionUrl, "root", "GimGamGom5");
						//connection = DriverManager.getConnection(connectionUrl,"root","Wnddnjs321");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					return connection;
				}
		
		// Attempts to close existing connection, StackTraces on failure
		public void closeConnection(Connection connection){
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		public LinkedList<Auction> getAllAuctions() throws SQLException{
			
			LinkedList<Auction> listOfAuctions = new LinkedList<Auction>();
			
			//display all tuples
			String selectString = "select * from Auctions;";
			Connection dbConnection = getConnection();
			PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);
			int resLength = 0;
			ResultSet rs = preparedStatement.executeQuery(); 
			
			//creating a ResultSet
			while(rs.next( )) {
				System.out.println("row : id = " + rs.getString("auctionID") + ", VIN = " + rs.getString("VIN") );
				resLength++;
			listOfAuctions.add(new Auction(rs.getInt("auctionID"), rs.getString("VIN"), rs.getString("sellerName"),rs.getDate("openDate"),rs.getDate("closeDate"), rs.getDouble("minPrice"), rs.getDouble("highestBid")));
			}
			System.out.println("Select statement executed, " + resLength + " rows retrieved");
			
			//close everything
			preparedStatement.close();
			
			dbConnection.close();
			
			return listOfAuctions;
		}
		 public ArrayList<ListAuction> getListAuction(String keyField, String keyWord){
		       
		        ArrayList<ListAuction> list = new ArrayList<ListAuction>();

		        try{//execute
		           
		            String sql ="select DISTINCT * from Auctions natural join Items ";
		            if(keyWord != null && !keyWord.equals("") ){
		                sql +="WHERE "+keyField.trim()+" LIKE '%"+keyWord.trim()+"%' order by auctionID";

		            }else{//search all 
		                sql +="order by auctionID";

		            }
		            Connection conn = getConnection();

		            System.out.println(sql);
		            Connection con = getConnection();
		    		Statement preparedStatement = con.prepareStatement(sql);
		    		int resLength = 0;
		    		ResultSet rs = preparedStatement.executeQuery(sql); 
		            preparedStatement = con.createStatement();
		            rs = preparedStatement.executeQuery(sql);
		           
		            /*while(rs.next()){
		                Auction vo = new Auction();
		               
		                vo.setAuctionID(rs.getInt(1));
		                vo.setVIN(rs.getString(2));
		                vo.setSellerName(rs.getString(3));
		                vo.setOpenDate(rs.getDate(4));
		                vo.setCloseDate(rs.getDate(5));
		                vo.setMinPrice(rs.getDouble(6));
		                vo.setHighestBid(rs.getDouble(7));
		        
		             
		                list.add(vo);
		               
		            }*/
		            while(rs.next( )) {
		    			System.out.println("row : id = " + rs.getString("auctionID") + ", VIN = " + rs.getString("VIN") );
		    			resLength++;
		    			list.add(new ListAuction( rs.getString("VIN"), rs.getString("Make"), rs.getString("Model"),  rs.getInt("auctionID"), rs.getString("sellerName"),rs.getDate("openDate"),rs.getDate("closeDate"), rs.getDouble("minPrice"), rs.getDouble("highestBid")));
		            }
		            // rs.getDouble("minPrice"), rs.getDouble("highestBid")
		            con.close();
		        }catch(Exception e){           
		            System.out.println(e+"=> getAuctionrlist fail");         
		        }
		        
		        finally{          
		        }      
		        return list;
		    }  
		 public ArrayList<ListAuction> getHighBidAuctionlist(String keyField, String keyWord){
		       
		        ArrayList<ListAuction> list = new ArrayList<ListAuction>();

		        try{//execute
		           
		            String sql ="select DISTINCT * from Auctions natural join items ";
		            if(keyWord != null && !keyWord.equals("") ){
		                sql +="WHERE "+keyField.trim()+" LIKE '%"+keyWord.trim()+"%' order by auctionID";

		            }else{//search all 
		                sql +="order by highestBid desc";

		            }
		            Connection conn = getConnection();

		            System.out.println(sql);
		            Connection con = getConnection();
		    		Statement preparedStatement = con.prepareStatement(sql);
		    		int resLength = 0;
		    		ResultSet rs = preparedStatement.executeQuery(sql); 
		            preparedStatement = con.createStatement();
		            rs = preparedStatement.executeQuery(sql);
		           
		           /* while(rs.next()){
		                Auction vo = new Auction();
		               
		                vo.setAuctionID(rs.getInt(1));
		                vo.setVIN(rs.getString(2));
		                vo.setSellerName(rs.getString(3));
		                vo.setOpenDate(rs.getDate(4));
		                vo.setCloseDate(rs.getDate(5));
		                vo.setMinPrice(rs.getDouble(6));
		                vo.setHighestBid(rs.getDouble(7));
		        
		             
		                list.add(vo);
		               
		            }*/
		            while(rs.next( )) {
		    			System.out.println("row : id = " + rs.getString("auctionID") + ", VIN = " + rs.getString("VIN") );
		    			resLength++;
		    			list.add(new ListAuction( rs.getString("VIN"), rs.getString("Make"), rs.getString("Model"),  rs.getInt("auctionID"), rs.getString("sellerName"),rs.getDate("openDate"),rs.getDate("closeDate"), rs.getDouble("minPrice"), rs.getDouble("highestBid")));
		            }
		            con.close();
		        }catch(Exception e){           
		            System.out.println(e+"=> getAuctionrlist fail");         
		        }
		        
		        finally{          
		        }      
		        return list;
		    }  
		
	}


	