<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="model.*" %>
<%@ page import="dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 	
String dbStatus;
if(request.getParameter("employeeidfwd")!=null){
			
	EmployeeBean eBean=new EmployeeBean();
	CreateEmployeeDAO emd=new CreateEmployeeDAOImpl();
			String projectName=request.getParameter("projectNamefwd");
			String employeeid=request.getParameter("employeeidfwd");
			dbStatus=emd.addProject(projectName,employeeid);
			if(dbStatus!=null){
				
				HttpSession session2 = request.getSession();
				session2.setAttribute("dbStatus", dbStatus);
				response.sendRedirect("employeeAssignment.jsp");
			}
			
			
		}
%>

</body>
</html>