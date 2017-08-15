<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.ProjectBean" %>
<%@ page import="dao.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
<title>Insert title here</title>

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

.tg .tg-s6z2 {
	text-align: center
}

.tg .tg-piy8 {
	font-weight: bold;
	font-family: "Palatino Linotype", "Book Antiqua", Palatino,
		serif !important;;
	text-align: center
}

.button {
	background-color: #669;
	padding: 8px 10px 8px;
	color: #fff;
	text-decoration: none;
	cursor: pointer;
	float: left;
	font-size: 12px;
	margin: 10px;
}


#edit{
font-weight: bold;
	font-family: "Palatino Linotype", "Book Antiqua", Palatino,
		serif !important;;
		color: #669;
}


</style>
</head>
<body>
<%
		if (session.getAttribute("dbStatus") != null) {
	%>
	<h1 style="color: red;">
		<%=session.getAttribute("dbStatus")%>
	</h1>
	<%
		session.removeAttribute("dbStatus");
		}
	%><%!  %>
<table class="tg">
<tr>
	<th class="tg-a">PROJECT NAME:</th>
		<th class="tg-a">MAXIMUM EMPLOYEE:</th>
	<th class="tg-a">PURPOSE:</th>
		<th class="tg-a">DURATION(in days):</th>
			<th class="tg-a">ASSIGNED TO:</th>
				<th class="tg-a">ALLOCATED MONEY(in lakhs):</th>
							<th class="tg-a">District:</th>
										<th class="tg-a">Village:</th>
</tr>
<h2 id="edit">Select a Project to Assign Employee:</h2>
<%
ArrayList<ProjectBean> al=new ArrayList<ProjectBean>();
ProjectBean pBean =new ProjectBean();
projectDAO prd=new ProjectDaoImpl();
al=prd.display();
ListIterator<ProjectBean> lt=al.listIterator();
while(lt.hasNext()){%>
	<tr>
<%	pBean=(ProjectBean)lt.next();
	
	%>
<td class="tg-b"><a href="employeeAssignment2.jsp?projectName=<%=pBean.getProjectName() %>" ><%=pBean.getProjectName() %></a></td>

<td class="tg-b"><%=pBean.getMaxEmployee()%></td>
<td class="tg-b"><%=pBean.getPurpose()%></td>
<td class="tg-b"><%=pBean.getDuration()%></td>
<td class="tg-b"><%=pBean.getAssigned_to()%></td>
<td class="tg-b"><%=pBean.getMoneyAllocated()%></td>
	<td class="tg-b"><%=pBean.getDistrict()%></td>
		<td class="tg-b"><%=pBean.getVillage()%></td>

<br/>
</tr>
<%
}
%>



</body>
</html>