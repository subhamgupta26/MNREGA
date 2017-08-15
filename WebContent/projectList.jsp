<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.ProjectBean" %>
<%@ page import="dao.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#edit{
font-weight: bold;
	font-family: "Palatino Linotype", "Book Antiqua", Palatino,
		serif !important;;
		color: #669;
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

.tg .tg-s6z2 {
	text-align: center
}

.tg .tg-piy8 {
	font-weight: bold;
	font-family: "Palatino Linotype", "Book Antiqua", Palatino,
		serif !important;;
	text-align: center
}
</style>
</head>
<body>
<%
ArrayList<ProjectBean> al=new ArrayList<ProjectBean>();
ProjectBean pBean =new ProjectBean();
projectDAO prd=new ProjectDaoImpl();
al=prd.displayProject();
ListIterator<ProjectBean> lt=al.listIterator();
%>
<h2 id="edit"><i> Project List</i></h2>
<table class="tg">
<tr>
<th class="tg-a"><b>List of Projects:</b></th>
</tr>
<% 
while(lt.hasNext()){
%>	
<tr>
<%
	pBean=(ProjectBean)lt.next();
%>
<td class="tg-b"><%=pBean.getProjectName()%></td>
	</tr>
	<%} %>	
</table>
</body>
</html>