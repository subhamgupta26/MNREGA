<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.ListIterator"%>
<%@ page import="model.AttendanceBean"%>
<%@ page import="javax.servlet.*"%>
<%@ page import=" dao.AttendanceDAOImpl"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
* /*Set's border, padding and margin to 0 for all values*/ {
	padding: 0;
	margin: 0;
	border: 0;
}

body, html {
	color: #373C40;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	height: 100%;
	background-image: url("images/ImgBg.png");
	background-repeat: no-repeat;
	margin: 0px;
}

body {
	font-size: 70%;
}

p {
	padding: 7px 0 7px 0;
	font-weight: 500;
	font-size: 12pt;
}

a {
	color: #656565;
	text-decoration: none;
}

a:hover {
	color: #abda0f;
	text-decoration: none;
}

h1 {
	font-weight: 200;
	color: #888888;
	font-size: 19pt;
	padding-left: 33px;
	margin: 7px 5px 8px 8px;
}

form.register {
	width: 800px;
	margin: 50px auto auto auto;
	height: 530px;
	background-color: #fff;
	padding: 7px;
	-moz-border-radius: 20px;
	-webkit-border-radius: 20px;
}

form p {
	font-size: 9pt;
	clear: both;
	margin: 0;
	color: gray;
	padding: 4px;
}

form.register fieldset.row1 {
	width: 770px;
	padding: 5px;
	float: left;
	border-top: 1px solid #F5F5F5;
	margin-bottom: 15px;
}

form.register fieldset.row1 label {
	width: 140px;
	float: left;
	text-align: right;
	margin-right: 6px;
	margin-top: 2px;
}

form.register fieldset.row2 {
	border-top: 1px solid #F1F1F1;
	border-right: 1px solid #F1F1F1;
	height: 200px;
	width: 350px;
	padding: 5px;
	float: left;
}

form.register fieldset.row3 {
	border-top: 1px solid #F1F1F1;
	padding: 5px;
	float: left;
	margin-bottom: 15px;
	width: 350px;
}

form.register fieldset.row4 {
	border-top: 1px solid #F1F1F1;
	border-right: 1px solid #F1F1F1;
	padding: 5px;
	float: left;
	clear: both;
	width: 500px;
}

form.register legend {
	color: green; /* #abda0f */
	padding: 2px;
	margin-left: 14px;
	font-weight: bold;
	font-size: 14px;
	font-weight: 100;
}

form.register label {
	color: #444;
	width: 98px;
	float: left;
	text-align: right;
	margin-right: 6px;
	margin-top: 2px;
}

form.register input {
	width: 140px;
	color: #505050;
	float: left;
	margin-right: 5px;
}

form.register input[type=radio] {
	float: left;
	width: 15px;
}

form.register input[type=text] {
	border: 1px solid #E1E1E1;
	height: 18px;
}

.button {
	background-color: #abda0f;
	padding: 8px 10px 8px;
	color: #fff;
	text-decoration: none;
	cursor: pointer;
	float: left;
	font-size: 12px;
	margin: 10px;
}

form.register input[type=checkbox] {
	width: 14px;
	margin-top: 4px;
}

form.register select {
	border: 1px solid #E1E1E1;
	width: 130px;
	float: left;
	margin-bottom: 3px;
	color: #505050;
	margin-right: 5px;
}

input:focus, select:focus {
	background-color: #efffe0;
}

p.agreement {
	margin-left: 15px;
}

p.agreement label {
	width: 390px;
	text-align: left;
	margin-top: 3px;
}
</style>
</head>
<body>

	<h2>Hello GramPanchayat Member</h2>
	<form class="register" action="EmployeeController">
		<br />
		<h1>Attendance</h1>

		<fieldset class="row1">
		<p>
		<label>Village <font color="red">*</font>
				</label> <select name="village">
					<option></option>
					<option value="Rampur">Rampur</option>
					<option value="Panagarh">Panagarh</option>
					<option value="Chalsa">Chalsa</option>
					<option value="Matelli">Matelli</option>
					<option value="Odlabarie">Odlabarie</option>
					<option value="abc">abc</option>
				</select>
				</p>
				<div>
			<button class="button" name="btnSave">Submit</button>
			
		</div>
		</fieldset>
		<fieldset class="row2">
		<p>
				Select Project: 
					<select>
						<%
							if (getServletContext().getAttribute("alist") != null) {
								ArrayList alist = (ArrayList) getServletContext().getAttribute(
										"alist");
								ListIterator it = alist.listIterator();
								while (it.hasNext()) {
									
						%>
						<option name="project" value="<%=it.next()%>"><%=it.next()%></option>
						<%
							}
							}
						%>
						</select>
						</p>
						
			<p>
				<label>Date:<font color="red">*</font>
				</label> <input type="date" name="date" /> 	</p>
		<div>
			<button class="button" name="btnAttendance">Take Attendance</button>
			
		</div>
		</fieldset>
	</form>			
			
			<%-- <form action="AttendanceController">
			<%
				if (getServletContext().getAttribute("alist1") != null) {
					ArrayList alist = (ArrayList) getServletContext().getAttribute(
							"alist1");
					ListIterator it = alist.listIterator();
			%>
			<table>
				<tr>
					<td>Record No</td>
					<td>First Name</td>
					<td>Last Name</td>
					<td>Attendance</td>
				</tr>
				<%
					while (it.hasNext()) {
				%>
				<tr>
					<%
						AttendanceBean aBean = new AttendanceBean();
								aBean = (AttendanceBean) it.next();
					%>
					<td><%=aBean.getRecordNo()%></td>
					<td><%=aBean.getFirstName()%></td>
					<td><%=aBean.getLastName()%></td>
					<td><input type="checkbox" name="attendance" value= "<%=aBean.getRecordNo()%>"></td>

					<%
						}
					%>
				</tr>
				<tr>
					<td><input type="submit" name="submitAttendance" value="Submit"></td>
				</tr>
				<% } %>
			</table>
			</form>
			<%
		if (session.getAttribute("dbStatus") != null) {
	%>
	<h1 style="color: navy;">
		<%
			out.println(session.getAttribute("dbStatus"));
				session.removeAttribute("dbStatus");
			}
		%>
	</h1> --%>
			
	

</body>
</html>