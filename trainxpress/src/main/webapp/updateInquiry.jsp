<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method="post" action="InquiryUpdate">
		
		<input type="hidden" name="inqid" value="${param.inqid }">
		Email : 
		<input type="email" name="email" value="${param.email}">
		<br><br>
		Message : 
		<input type="text" name="message" value="${param.message}">
		<br><br>
		
	  
	  <select id="status" name="status" required>
  <option value="Pending" ${param.status == 'Pending' ? 'selected' : ''}>Pending</option>
  <option value="Solved" ${param.status == 'Solved' ? 'selected' : ''}>Solved</option>
</select>
	  

		<input type="submit" value="Update-Status">
	
	</form>

</body>
</html>