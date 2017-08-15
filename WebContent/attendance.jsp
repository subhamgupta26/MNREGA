<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.ListIterator"%>
<%@ page import="model.AttendanceBean"%>
<%@ page import="javax.servlet.*"%>
<%@ page import=" dao.AttendanceDAOImpl"%>
<%@ page import="java.sql.*"%>
<%@ page import="factory.ConnectionFactory"%>
<%
	ResultSet rs = null;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
a {
	padding-top:33px;
	color: #656565;
	text-decoration: none;
	float: right;
	font-size: 12pt;
	padding-right: 33px;
}

a:hover {
	color: #abda0f;
	text-decoration: none;
}
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #aabcfe;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #aabcfe;
	color: #669;
	background-color: #e8edff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #aabcfe;
	color: #039;
	background-color: #b9c9fe;
}

.tg .tg-a {
	text-align: center
}

.tg .tg-b {
	font-weight: bold;
	font-family: "Palatino Linotype", "Book Antiqua", Palatino,
		serif !important;;
	text-align: center
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
	font-size: 10pt;
}

form.register {
	width: 320px;
	margin: 50px auto auto auto;
	height: 300px;
	background-color: #fff;
	padding: 12px;
	-moz-border-radius: 20px;
	-webkit-border-radius: 20px;
}

form p {
	font-size: 8pt;
	clear: both;
	margin: 0;
	color: white;
	padding: 4px;
}

form.register label {
	color: #444;
	width: 98px;
	float: left;
	text-align: right;
	margin-right: 6px;
	margin-top: 2px;
}

h2 {
	color: #888888;
	font-size: 17pt;
}
</style>
</head>
<body>
<a href="logout.jsp">Logout</a>
	<form action="AttendanceController" class="register">
		<center>
			<h2>Attendance:</h2>
		</center>
		<fieldset>
			<p>
				<label> Select District:</label> <select name="district">
					<%
						if (getServletContext().getAttribute("district") != null) {
							String district = (String) getServletContext().getAttribute(
									"district");
					%>
					<option value=<%=district%>><%=district%></option>
					<%
						} else {
							try {

								Connection con = (Connection) ConnectionFactory
										.getInstance().getConnection();
								PreparedStatement pst = con
										.prepareStatement("select district from project");
								rs = pst.executeQuery();
								while (rs.next()) {
					%>
					<option><%=rs.getString(1)%></option>
					<%
						}

							} catch (Exception e) {
								e.printStackTrace();
							}
					%>
				</select>
				<%
					}
				%>

				<input type="submit" name="btnDistrictSub" value="Submit"
					style="background-color: #abda0f; color: white;">
			</p>
			<p>
				<label>Select Village:</label> <select name="village">
					<%
						if (getServletContext().getAttribute("village") != null) {
							String village = (String) getServletContext().getAttribute(
									"village");
					%>
					<option value=<%=village%>><%=village%></option>
					<%
						} else if (getServletContext().getAttribute("district") != null) {
							String district = (String) getServletContext().getAttribute(
									"district");

							try {

								Connection con = (Connection) ConnectionFactory
										.getInstance().getConnection();
								PreparedStatement pst = con
										.prepareStatement("select village from project where district=?");
								pst.setString(1, district);
								rs = pst.executeQuery();
								while (rs.next()) {
					%>
					<option><%=rs.getString(1)%></option>
					<%
						}

							} catch (Exception e) {
								e.printStackTrace();
							}
					%>
				</select>
				<%
					}
				%>
				<input type="submit" name="btnVillageSub" value="Submit"
					style="background-color: #abda0f; color: white;">
			</p>
			<br>
			<p>
				<label>Select Project:</label> <select name="project">
					<%
						if (getServletContext().getAttribute("village") != null) {
							String village = (String) getServletContext().getAttribute(
									"village");

							try {

								Connection con = (Connection) ConnectionFactory
										.getInstance().getConnection();
								PreparedStatement pst = con
										.prepareStatement("select project_name from project where village=?");
								pst.setString(1, village);
								rs = pst.executeQuery();
								while (rs.next()) {
					%>
					<option><%=rs.getString(1)%></option>
					<%
						}

							} catch (Exception e) {
								e.printStackTrace();
							}
						}
					%>
				</select>
			</p>
			<p>
				<label>Enter Date:</label> <input type="date" name="date">
			</p>
			<center>
				<input type="submit" name="btnAttendance" value="Take Attendance"
					style="background-color: #abda0f; color: white;">
			</center>

		</fieldset>
	</form>

	<form action="AttendanceController">
		<%
			if (getServletContext().getAttribute("alist") != null) {
				ArrayList alist = (ArrayList) getServletContext().getAttribute(
						"alist");
				ListIterator it = alist.listIterator();
		%><center>
		<br>
		<br>
		<table class="tg">
			<tr>
				<th class="tg-a">Record No</th>
				<th class="tg-a">First Name</th>
				<th class="tg-a">Last Name</th>
				<th class="tg-a">Attendance</th>
			</tr>
			<%
				while (it.hasNext()) {
			%>
			<tr>
				<%
					AttendanceBean aBean = new AttendanceBean();
							aBean = (AttendanceBean) it.next();
				%>
				<td class="tg-b"><%=aBean.getRecordNo()%></td>
				<td class="tg-b"><%=aBean.getFirstName()%></td>
				<td class="tg-b"><%=aBean.getLastName()%></td>
				<td class="tg-b"><input type="checkbox" name="attendance"
					value="<%=aBean.getRecordNo()%>"></td>

				<%
					}
				%>
			</tr>
		</table>
		</center><br>
		<div>
			<center>
				<input type="submit" name="btnSubmit" value="Submit"
					style="background-color: #abda0f; color: white" />
			</center>
		</div>



		<%
			}
		%>

	</form>
	<%
		if (session.getAttribute("dbStatus") != null) {
	%>
	<h1 style="color: navy;">
		<%
			if (session.getAttribute("dbStatus") != null) {
					out.println(session.getAttribute("dbStatus"));
					session.removeAttribute("dbStatus");
				}
		%>
	</h1>
	<%
		}
	%>
</body>
</html>