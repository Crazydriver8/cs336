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
		<h1>Email</h1>
		<form method="post" action="EmailTest.jsp">
			<div id="entry">
				<input type = "text" name = "receivingUser" placeholder="Recipient" id="form-control"><br>
			</div>
			<div id="entry">
				<input type = "text" name = "subject" placeholder="Subject" id="form-control"><br>
			</div>
			<div id="entryArea">
				<textarea name="body" cols = "41" rows = "10" id = "form-area"></textarea>
			</div>
			<input type="submit" value="Send" id="loginButton"></input>
			<a href="UserLanding.jsp" id="registerLink">
				Quit without Sending
			</a>
            <!-- 
            <center>
            <table border="1" width="40%" cellpadding="7">
                <thead>
                    <tr>
                        <th colspan="4">Send Email</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Recipient</td>
                        <td><input type="text" name="receivingUser" value="" /></td>
                    </tr>
                    <tr>
                        <td>Subject</td>
                        <td><input type="text" name="subject" value="" /></td>
                    </tr>
                    <tr>
                        <td>Body</td>
                        <td><textarea name="body"></textarea></td>
                    </tr>
                    <td><input type="submit" value="Send" /></td>
                </tbody>
            </table>
            </center>
            -->
        </form>
	</div>
</body>
</html>