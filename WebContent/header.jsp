<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
ul#saturday {
	margin: 0;
	padding: 0;
	list-style-type: none;
	width: auto;
	position: relative;
	display: block;
	height: 36px;
	text-transform: uppercase;
	font-size: 12px;
	font-weight: bold;
	background: transparent url("images/bgOFF.gif") repeat-x top left;
	font-family: Helvetica, Arial, Verdana, sans-serif;
	border-bottom: 4px solid #336666;
	border-top: 1px solid #C0E2D4;
}

ul#saturday li {
	display: block;
	float: left;
	margin: 0;
	padding: 0;
}

ul#saturday li a {
	display: block;
	float: left;
	color: black;
	text-decoration: none;
	padding: 12px 20px 0 20px;
	height: 24px;
	background: transparent url("images/bgDIVIDER.gif") no-repeat top right;
}

ul#saturday li a:hover {
	background: transparent url("images/bgHOVER.gif") no-repeat top right;
}

ul#saturday li a.current, ul#saturday li a.current:hover {
	color: #fff;
	background: transparent url("images/bgON.gif") no-repeat top right;
}
</style>
</head>
<body>
	<ul id="saturday">
		<li><a href="" title="">Home</a></li>
		<li><a href="abc/abc1.jsp" target="rightBar" title="">About Us</a></li>
		<li><a href="" title="" class="current">Services</a></li>
		<li><a href="login.jsp" target="rightBar" title="">LogIn</a></li>
		<li><a href="abc/ourWork.jsp" target="rightBar" title="">Our Work</a></li>
		
	</ul>
	<br />
</body>
</html>