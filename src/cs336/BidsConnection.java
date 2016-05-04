package cs336;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import javax.servlet.http.HttpServlet;

public class BidsConnection extends HttpServlet  {
	
		private static final long serialVersionUID = 1L;
		private int bidID;
		private String VIN;
		private String bidderName;
		private double bidAmount;
		private String time;
		private String bidDate;
		private String automatic;
		private double upperLimit;
		
		// CONNECTION METHODS
		// Attempts to get connection to server, StackTraces on failure
		public Connection getConnection(){
			//String connectionUrl = "jdbc:mysql://localhost:3306/proj2016?autoReconnect=true";
			//String connectionUrl = "jdbc:mysql://classvm115.cs.rutgers.edu:3306/myDB?autoReconnect=true";
			//String connectionUrl = "jdbc:mysql:http://classvm120.cs.rutgers.edu:8080/CS336/";
			//String connectionUrl =  "jdbc:mysql://localhost:3306/mydb?autoReconnect=true";
			String connectionUrl =  "jdbc:mysql://localhost:3306/proj2016?autoReconnect=true";		

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
<<<<<<< HEAD
				connection = DriverManager.getConnection(connectionUrl,"root","root");
=======
				//connection = DriverManager.getConnection(connectionUrl,"root","Wnddnjs321");
>>>>>>> origin/master
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
		
		public LinkedList<Bids> getAllBids() throws SQLException{
			
			LinkedList<Bids> listOfBids = new LinkedList<Bids>();
			
			//display all tuples
			String selectString = "select * from Bids;";
			Connection dbConnection = getConnection();
			PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);
			int resLength = 0;
			ResultSet rs = preparedStatement.executeQuery(); 
			
			//creating a ResultSet
			while(rs.next( )) {
				System.out.println("row : id = " + rs.getString("bidID"));
				resLength++;
				listOfBids.add(new Bids(rs.getInt("bidID"), rs.getInt("auctionID"), rs.getString("bidderName"), rs.getDouble("bidAmount"), rs.getString("bidTime"),rs.getString("bidDate"), rs.getString("automatic"), rs.getDouble("upperLimit")));
			}
			System.out.println("Select statement executed, " + resLength + " rows retrieved");
			
			//close everything
			preparedStatement.close();
			dbConnection.close();
			
			return listOfBids;
		}
	}
