<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ask Question</title>
</head>
<body>
	<form method="post" action="AskTest.jsp">
            <center>
            <table border="1" width="40%" cellpadding="7">
                <thead>
                    <tr>
                        <th colspan="4">Ask Question</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>VIN</td>
                        <td><input type="text" name="vin" value="" /></td>
                    </tr>
                    <tr>
                        <td>Question</td>
                        <td><input type="text" name="question" value="" /></td>
                    </tr>
                    <tr>
                    	<td>Ask</td>
                        <td><input type="submit" value="Ask" /></td>
                        
                    </tr>
                    <tr>
                        <td colspan="2"> <a href="UserLanding.jsp">Quit without Asking</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
</body>
</html>