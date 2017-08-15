<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.SignInBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	height: 100%;
	background-image: url("images/ImgBg.png");
	background-repeat: no-repeat;
	margin: 0px;
}
</style>
</head>
<body>
	<%
		SignInBean currentUser = null;
		if (session.getAttribute("loggedUser") != null) {
			currentUser = (SignInBean) session.getAttribute("loggedUser");
			out.println("Welcome : " + currentUser.getFirstname() + " "
					+ currentUser.getLastname());
		}
	%>
	<form class="register" action="EmployeeController">
		<br />
		<fieldset class="row1">
			<legend><h2>SEARCH FOR EMPLOYEES</h2></legend>
			<br>
			<p>
				<label>STATE WISE:</label> <input type="radio" name="stateWise" />
				 <label>PROJECT WISE:</label> <input type="radio" name="projectWise" />
				 <label>AVAILABILITY WISE:</label><input type="radio" name="availabilityWise" />
			</p>
		</fieldset>
	</form>
</body>
</html>