<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
#edit{
font-weight: bold;
font-weight:italic;
	font-family: "Palatino Linotype", "Book Antiqua", Palatino,
		serif !important;;
		color: #669;
}
#edit2{
font-weight: bold;
	font-family: "Palatino Linotype", "Book Antiqua", Palatino,
		serif !important;;
		color: grey;
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
<h2 id="edit">Project Name</h2>
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
String projectName=request.getParameter("projectName");%>
<h2 id="edit2"><%=projectName%></h2>

<h1 id="edit">Available Employees:</h1>
<%
List<EmployeeBean> eList=new ArrayList<EmployeeBean>();
EmployeeBean eBean=new EmployeeBean();
CreateEmployeeDAO eud=new CreateEmployeeDAOImpl();
eList=eud.displayEmployee();
ListIterator lt=eList.listIterator();
ProjectBean pBean=new ProjectBean();
pBean.setProjectName(request.getParameter("projectName"));
while(lt.hasNext())
{
	
	

	eBean=(EmployeeBean)lt.next();
	if(eBean.getProject()==null){
 %>
 

<tr>
			<td class="tg-b"><a href="employeeAssignment3.jsp?employeeidfwd=<%=eBean.getRecordNo()%>&projectNamefwd=<%=pBean.getProjectName()%>"><%=eBean.getRecordNo()%></a></td>
			<td class="tg-b"><%=eBean.getFirstName()%></td>
			<td class="tg-b"><%=eBean.getLastName()%></td>
			<td class="tg-b"><%=eBean.getPhone()%></td>
			<td class="tg-b"><%=eBean.getAge()%></td>
			<td class="tg-b"><%=eBean.getState()%></td>
			<td class="tg-b"><%=eBean.getDistrict()%></td>
			<td class="tg-b"><%=eBean.getVillage()%></td>
			<td class="tg-b"><%=eBean.getAddress()%></td>
			<td class="tg-b"><%=eBean.getAdharNo()%></td>
			<td class="tg-b"><%=eBean.getBankName()%></td>
			<td class="tg-b"><%=eBean.getAccNo()%></td>
			<td class="tg-b"><%=eBean.getAttendance()%></td>
			<td class="tg-b"><%=eBean.getProject()%></td>
		</tr>
<br/>
<%
}
}
%>
<%
if(request.getParameter("dbStatus")!=null){
	out.println("dbStatus");
}
%> 
</body>
</html>