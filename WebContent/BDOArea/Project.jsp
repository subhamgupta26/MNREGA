<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<div style="text-align:center"><b><i><u><h1> NEW PROJECT</h1></u></i> </b></div>
</head>
<body>
<form method="post" action="ProjectController">
<br>
<b>PROJECT NAME</b>
<div style="text-align:center"><input type="text" name ="projectname"/></div>
<br>
<b>MAXIMUM NUMBER OF EMPLOYEES</b>
<div style="text-align:center"><input type="text" name="max"/></div>
<br>
<b>PURPOSE OF THE PROJECT</b>
<div style="text-align:center"><textarea rows="5" cols="40" name="purpose"></textarea></div>
<br>
<b>ESTIMATED DURATION</b>
<div style="text-align:center"><input type="text" name="duration"/></div>
<br>
<b>ASSIGNED TO</b>
<div style="text-align:center"><input type="text" name="assgn"/></div>
<br>
<b>ALLOCATED MONEY</b>
<div style="text-align:center"><input type="text" name="money"/></div>
<br>
<b>ALLOCATION DATE</b>
<div style="text-align:center"><input type="date" name="date"/></div>
<br>
<div style="text-align:center"><input type="submit" name="btnSave" value="Save"/>
<input type="submit" name="btnCancel" value="Cancel"/></div>
</form>
</body>
</html>