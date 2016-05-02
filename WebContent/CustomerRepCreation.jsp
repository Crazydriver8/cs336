<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/default.css" type="text/css" />
</head>
<body>
	<div id = "loginForm">
		<h1>Create Customer Representative Account</h1>
		<form method="post" action="RepCreate.jsp">
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
			<a href="AdminLanding.jsp" id="registerLink">Return to Admin Page</a>
			<!-- 
            <center>
            <table border="1" width="40%" cellpadding="7">
                <thead>
                    <tr>
                        <th colspan="4">Create Customer Representative Account</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="userName" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
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
                    	<td>Submit</td>
                        <td><input type="submit" value="Submit" /></td>
                        
                    </tr>
                    <tr>
                        <td colspan="2"> <a href="AdminLanding.jsp">Return to Admin Page</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
            -->
        </form>
	</div>
</body>
</html>