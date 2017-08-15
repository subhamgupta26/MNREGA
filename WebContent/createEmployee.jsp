<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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



	<form class="register" action="EmployeeController">
		<br />
		<h1>Employee Creation</h1>

		<fieldset class="row1">
			<legend>Personal Details </legend>
			<br>
			<p>
				<label>First Name <font color="red">*</font>
				</label> <input type="text" name="firstName" /> <label>Last Name <font
					color="red">*</font>
				</label> <input type="text" name="lastName" />
			</p>
			<p>
				<label>Phone <font color="red">*</font>
				</label> <input type="text" maxlength="10" name="phone" /> <label>Age
					<font color="red">*</font>
				</label> <input type="text" maxlength="10" name="age" />
			</p>
		</fieldset>
		<fieldset class="row2">
			<legend>Further Information </legend>
			<br> <br>
			<p>
				<label>State <font color="red">*</font></label><select name="state">
					<option></option>
					<option value="ANDHRA PRADESH">ANDHRA PRADESH</option>
					<option value="ARUNACHAL PRADESH">ARUNACHAL PRADESH</option>
					<option value="ASSAM">ASSAM</option>
					<option value="BIHAR">BIHAR</option>
					<option value="CHATTISGARH">CHATTISGARH</option>
					<option value="HARAYANA">HARAYANA</option>
					<option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
					<option value="JAMMU AND KASHMIR">JAMMU AND KASHMIR</option>
					<option value="JHARKHAND">JHARKHAND</option>
					<option value="KARNATAKA">KARNATAKA</option>
					<option value="KERALA">KERALA</option>
					<option value="MADHYA PRADESH">MADHYA PRADESH</option>
					<option value="MAHARASHTRA">MAHARASHTRA</option>
					<option value="MANIPUR">MANIPUR</option>
					<option value="MIZORAM">MIZORAM</option>
					<option value="NAGALAND">NAGALAND</option>
					<option value="ORISSA">ORISSA</option>
					<option value="PUNJAB">PUNJAB</option>
					<option value="RAJASTHAN">RAJASTHAN</option>
					<option value="SIKKIM">SIKKIM</option>
					<option value="TAMIL NADU">TAMIL NADU</option>
					<option value="TRIPURA">TRIPURA</option>
					<option value="UTTAR PRADESH">UTTAR PRADESH</option>
					<option value="UTTRANCHAL">UTTRANCHAL</option>
					<option value="WEST BENGAL">WEST BENGAL</option>
					<option value="GOA">GOA</option>
					<option value="ANDAMAN & NICOBAR ISLAND">ANDAMAN & NICOBAR ISLAND</option>
					<option value="D&N HAVELI">D&N HAVELI</option>
					<option value="DAMAN & DIU">DAMAN & DIU</option>
					<option value="LAKSHADWEEP">LAKSHADWEEP</option>
					<option value="PUDUCHERRY">PUDUCHERRY</option>
					<option value="CHANDIGARH">CHANDIGARH</option>
				</select>
			</p>
			<p>
				<label>District <font color="red">*</font>
				</label> <select name="district">
					<option></option>
					<option value="Jalpaiguri">Jalpaiguri</option>
					<option value="Burdwan">Burdwan</option>
					<option value="Kolkata">Kolkata</option>
					<option value="Howrah">Howrah</option>
				</select>
			</p>
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
			<p>
				<label>Address <font color="red">*</font></label><input type="text"
					name="address" />
			</p>
			<p>
				<label>Aadhar No <font color="red">*</font></label><input
					type="text" name="aadharNo" />
			</p>
		</fieldset>
		<fieldset class="row3">
			<legend>Account Details </legend>
			<br> <br>
			<p>
				<label>Bank name: <font color="red">*</font>
				</label> <select name="bankName">
					<option></option>
					<option value="State Bank of India">State Bank of India</option>
					<option value="ICICI">ICICI</option>
					<option value="Bank of India">Bank of India</option>
					<option value="United Bank of India">United Bank of India</option>
				</select>
			</p>
			<p>
				<label>Account no: <font color="red">*</font>
				</label> <input type="text" name="accNo" />
			</p>
			<br> <br>
			<p>
				<span style="margin-left: 2em;"><font color="red">*</font>These
					details are obligatory.</span>
			</p>
		</fieldset>
		<fieldset class="row4">
			<legend>Terms and Mailing </legend>
			<p class="agreement">
				<input type="checkbox" value="" /> <label><font color="red">*</font>
					I accept the <a href="#">Terms and Conditions</a></label>
			</p>
			<p class="agreement">
				<input type="checkbox" value="" /> <label><font color="red">*</font>
					I agree that all the above stated facts are true to the best of my
					knowledge.</label>
			</p>
		</fieldset>

		<div>
			<button class="button" name="btnSave">Register</button>
			
		</div>
	</form>
	
</body>
</html>