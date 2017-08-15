<%@page import="java.util.ArrayList"%>
<%@page import="model.EmployeeBean"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
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
.button {
	background-color: #889;
	padding: 8px 10px 8px;
	color: #fff;
	text-decoration: none;
	cursor: pointer;
	float: left;
	font-size: 12px;
	margin: 10px;
}

</style>
</head>
<body>
<form action="EmployeeController" method="get"><button class="button" name="btnDisplay">Display</button></form><br><br><br><br>

	<table class="tg">
		<tr>
			<th class="tg-a">Record No:</th>
			<th class="tg-a">First Name:</th>
			<th class="tg-a">Last Name:</th>
			<th class="tg-a">Phone:</th>
			<th class="tg-a">Age:</th>
			<th class="tg-a">State:</th>
			<th class="tg-a">District:</th>
			<th class="tg-a">Village:</th>
			<th class="tg-a">Address:</th>
			<th class="tg-a">Aadhar No:</th>
			<th class="tg-a">Bank Name:</th>
			<th class="tg-a">Account No:</th>
			<th class="tg-a">Attendance:</th>
			<th class="tg-a">Projects:</th>
		</tr>
			<%
		if (getServletContext().getAttribute("eList") != null) {
			List eList = (List) getServletContext().getAttribute("eList");
			ListIterator it = eList.listIterator();
			while (it.hasNext()) {
				EmployeeBean euBean = new EmployeeBean();
				euBean = (EmployeeBean) it.next();
	%>
		<tr>
			<td class="tg-b"><%=euBean.getRecordNo()%></td>
			<td class="tg-b"><%=euBean.getFirstName()%></td>
			<td class="tg-b"><%=euBean.getLastName()%></td>
			<td class="tg-b"><%=euBean.getPhone()%></td>
			<td class="tg-b"><%=euBean.getAge()%></td>
			<td class="tg-b"><%=euBean.getState()%></td>
			<td class="tg-b"><%=euBean.getDistrict()%></td>
			<td class="tg-b"><%=euBean.getVillage()%></td>
			<td class="tg-b"><%=euBean.getAddress()%></td>
			<td class="tg-b"><%=euBean.getAdharNo()%></td>
			<td class="tg-b"><%=euBean.getBankName()%></td>
			<td class="tg-b"><%=euBean.getAccNo()%></td>
			<td class="tg-b"><%=euBean.getAttendance()%></td>
			<td class="tg-b"><%=euBean.getProject()%></td>
		</tr>
		<%
			}
			}
		%>
	</table>

</body>
</html>