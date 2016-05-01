<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="cs336.*" import = "java.util.*" import = "java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link rel="stylesheet" href="css/default.css" type="text/css" />
    </head>
    <body>
    <div id="loginForm">
    	<h1>Register User</h1>
        <form method="post" action="RegTest.jsp">
        	<div id="entry">
				<input type = "text" name = "userName" placeholder="Username" id="form-control"><br>
			</div>
			<div id="entry">
				<input type = "password" name = "password" placeholder="Password" id="form-control"><br>
			</div>
			<div id="entry">
				<input type = "emailAddr" name = "emailAddr" placeholder="Email" id="form-control" value=""><br>
			</div>
			<div id="entry">
				<input type = "text" name = "firstName" placeholder="First Name" id="form-control" value=""><br>
			</div>
			<div id="entry">
				<input type = "text" name = "lastName" placeholder="Last Name" id="form-control" value=""><br>
			</div>
			<input type="submit" value="Submit" id="loginButton"></input>
            <a href="index.jsp" id="registerLink">
				Already Registered?
			</a>
            <!-- <center>
            <table border="1" width="40%" cellpadding="7">
                <thead>
                    <tr>
                        <th colspan="4">Register Now!</th>
                    </tr>
                </thead>
                
                    <tr>
                        <td>emailAddr</td>
                        <td><input type="emailAddr" name="emailAddr" value="" /></td>
                    </tr>
                    
                  
                    <tr>
                    	<td>First Name</td>
                        <td><input type="text" name="firstName" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lastName" value="" /></td>
                        </tr>
                    <tr>
                    	<td>You are done!</td>
                        <td><input type="submit" value="Submit" /></td>
                        
                    </tr>
                    <tr>
                        <td colspan="2">Already registered? <a href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>-->
        	</form>
        </div>
    </body>
 
</html>