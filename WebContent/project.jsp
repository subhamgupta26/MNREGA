<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.*"%>
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
	font-size: 18px;
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

	<form method="post" action="ProjectController" class="register">
		<br />
		<h1>Project Creation</h1>

		<fieldset class="row1">
			<br>
			<p>
				<label>Project Name <font color="red">*</font>
				</label> <input type="text" name="projectname" /> 
				<label>Maximum Employees <font color="red">*</font>
				</label> <input type="text" name="max" />
			</p>
			<p>
				<label>Purpose <font color="red">*</font></label>
				<textarea rows="5" cols="40" name="purpose"></textarea>
				</p>
		
		
				<p>
				<label>Estimated Duration <font color="red">*</font>
				</label> <input type="text" name="duration"/>
			</p>
			<p>
				<label>Assigned to <font color="red">*</font>
				</label> <input type="text" name="assgn"/>
			</p>
			<p>
				<label>Allocated Money <font color="red">*</font></label><input type="text"
					name="money" />
			</p>
			<p>
				<label>Allocated Date <font color="red">*</font></label>
				<input type="date" name="date"/>
			</p>
				<p>
				<label>District<font color="red">*</font>
				</label> <input type="text" name="district"/>
			</p>
			
				<p>
				<label>Village <font color="red">*</font>
				</label> <input type="text" name="village"/>
			</p>
		</fieldset>
		

		<div>
			<button class="button" name="btnSave">Save</button>
			
		</div>
	</form>


</body>
</html>