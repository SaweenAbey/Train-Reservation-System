<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="DriverUpdate" method="post">
			<input  name="driverId" value="${param.driverId}" type=hidden>
			
			<label>First Name:</label>
			<input type="text" name="fname" value="${param.fname}"><br>
			<label>Last Name:</label>
			<input type="text" name="lname" value="${param.lname}"><br>
			<label>Address:</label>
			<input type="text" name="address" value="${param.address}">
			<label>LicenseNum:</label>
			<input type="text" name="licenseNum" value="${param.licenseNum}">
			<label>Telephone Num:</label>
			<input type="text" name="telephone" value="${param.telNo}">
			<label>Age:</label>
			<input type="text" name="age" value="${param.age}">
			
			<br><br><br>
			
			<input type="submit" value="Submit">
			
			
		
		
		
		</form>
</body>
</html>