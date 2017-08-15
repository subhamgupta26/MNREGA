<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.*" %>
  <%@ page import="model.*" %>
   <%@ page import="dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<form method="post" action="ProjectController">
<h3 id="edit"><i><b>Enter Name of Project</b></i></h3>
<input type="text" name="projectName"/>
<br>
<button class="button" name="btnSearch" >Search</button>
<br>
<br>
<br>

</form>
<% 
if(session.getAttribute("pList")!=null){
ArrayList<ProjectBean> al=new ArrayList<ProjectBean>();
ProjectBean pBean =new ProjectBean();
projectDAO prd=new ProjectDaoImpl();
al=(ArrayList)session.getAttribute("pList");
ListIterator<ProjectBean> lt=al.listIterator();
%>
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
										<th class="tg-a">DateAllocated:</th>
</tr>
<%while(lt.hasNext()){%>
	<tr>
	<%
	pBean=(ProjectBean)lt.next();
	%>
			<td class="tg-b"><%=pBean.getProjectName()%></td>
			<td class="tg-b"><%=pBean.getMaxEmployee()%></td>
			<td class="tg-b"><%=pBean.getPurpose()%></td>
			<td class="tg-b"><%=pBean.getDuration()%></td>
			<td class="tg-b"><%=pBean.getAssigned_to()%></td>
			<td class="tg-b"><%=pBean.getMoneyAllocated()%></td>
				<td class="tg-b"><%=pBean.getDistrict()%></td>
					<td class="tg-b"><%=pBean.getVillage()%></td>
					<td class="tg-b"><%=pBean.getDateAllocated()%></td>
	</tr>
	<%}} %>
	</table>
</body>
</html>