package cs336;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class QuestionConnection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String Question;
	private String Answer;
	
	// CONNECTION METHODS
	// Attempts to get connection to server, StackTraces on failure
	public Connection getConnection(){
		//String connectionUrl = "jdbc:mysql://localhost:3306/proj2016?autoReconnect=true";
		//String connectionUrl = "jdbc:mysql://classvm115.cs.rutgers.edu:3306/myDB?autoReconnect=true";
		//String connectionUrl = "jdbc:mysql:http://classvm120.cs.rutgers.edu:8080/CS336/";
		String connectionUrl =  "jdbc:mysql://localhost:3306/mydb?autoReconnect=true";

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
	
	public LinkedList<Question> getAllQuestions() throws SQLException{
		
		LinkedList<Question> listOfQuestions = new LinkedList<Question>();
		
		//display all tuples
		String selectString = "select * from ItemQuestion;";
		Connection dbConnection = getConnection();
		PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);
		int resLength = 0;
		ResultSet rs = preparedStatement.executeQuery(); 
		
		//creating a ResultSet
		while(rs.next( )) {
			System.out.println("row : id = " + rs.getString("question") + ", answer = " + rs.getString("answer") );
			resLength++;
		listOfQuestions.add(new Question(rs.getInt("questionID"), rs.getString("VIN"), rs.getString("question"), rs.getString("answer")));
		}
		System.out.println("Select statement executed, " + resLength + " rows retrieved");
		
		//close everything
		preparedStatement.close();
		dbConnection.close();
		
		return listOfQuestions;
	}
}