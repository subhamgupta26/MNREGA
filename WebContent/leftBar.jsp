<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.SignInBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#menu8 {
	width: 200px;
}

#menu8 li a {
	text-decoration: none;
	height: 32px;
	voice-family: "\"}\"";
	voice-family: inherit;
	height: 24px;
}

#menu8 li a:link, #menu8 li a:visited {
	color: #777;
	display: block;
	background: url(images/menu8.gif);
	padding: 8px 0 0 20px;
}

#menu8 li a:hover {
	color: #257EB7;
	background: url(images/menu8.gif) 0 -32px;
	padding: 8px 0 0 25px;
}

#menu8 li a:active {
	color: #fff;
	background: url(images/menu8.gif) 0 -64px;
	padding: 8px 0 0 25px;
}

#menu8 ul {
	list-style: none;
	margin: 0;
	padding: 0;
}
</style>
</head>
<body bgcolor=#aae4bb>
	<div id="menu8">
		
		<ul>
			
			<%
			response.setIntHeader("Refresh", 1);
			SignInBean currentUser = null;
			if (session.getAttribute("loggedUser") != null) {
				currentUser = (SignInBean) session.getAttribute("loggedUser");
				if (currentUser.getRole().equals("BDO")) {
		%>
			<li><a href="project.jsp" target="rightBar">New Project</a></li>

			<li><a href="projectList.jsp" target="rightBar">Project List</a></li>

			<li><a href="projectDetails.jsp" target="rightBar">Project
					Detail</a></li>

			<li><a href="displayEmployee.jsp" target="rightBar">List of Workers</a></li>

			<li><a href="logout.jsp" target="rightBar">Logout</a></li>
			<%
				} else if (currentUser.getRole().equals("GramPanchayat")) {
			%>

			<li><a href="createEmployee.jsp" target="rightBar"><b>New
						Employee</b></a></li>

			<li><a href="employeeAssignment.jsp" target="rightBar"><b>Assign
						Employee</b></a></li>

			<li><a href="attendance.jsp" target="rightBar"><b>Attendance</b></a></li>
			<li><a href="logout.jsp" target="rightBar">Logout</a></li>
			<%
				}}
				else{	
				%>
				
			<li><a href="#1" title="Home">Home</a></li>
			<li><a href="abc/abc1.jsp" title="About" target="rightBar">About</a></li>
			<li><a href="contactUs.jsp" target="rightBar" title="">Contact Us</a></li>	
				
				
				<% 
				}
			%>
		</ul>
	</div>
</body>
</html>