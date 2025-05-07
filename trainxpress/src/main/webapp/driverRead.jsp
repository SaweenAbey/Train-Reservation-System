<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./CSS/DriverCrudCss/driverCrud.css">
<link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
<meta charset="UTF-8">
<title>Driver Details</title>
</head>
<body>
	<%@ include file="header.jsp" %><br><br><br><br>
	<div class="mainDiv">
		    <h3>Driver Details</h3>
		    <!-- From Uiverse.io by adamgiebl --> 
		<div class="button-container">
		        <a href="driverInsert.jsp">
		            <button class="cssbuttons-io-button">
		                <i class="ri-user-add-line"></i> Add Bus Driver
		            </button>
		        </a>
		    </div>
		    
		    <div class="container">
		        <table id="routeTable">
		            <thead>
		                <tr>
		                    <th>ID</th>
		                    <th>First Name</th>
		                    <th>Last Name</th>
		                    <th>Address</th>
		                    <th>License Num</th>
		                    <th>Phone Num</th>
		                    <th>Age</th>
		                    <th>Action</th>
		                </tr>
		            </thead>
		            <tbody>
		                <c:forEach var="driver" items="${driver}" >
		                <tr>
		                    <td>${driver.driverId}</td>
		                    <td>${driver.fname}</td>
		                    <td>${driver.lname}</td>
		                    <td>${driver.address}</td>
		                    <td>${driver.licenseNum}</td>
		                    <td>${driver.telNo}</td>
		                    <td>${driver.age}</td>
		                    <td>
		                        <div class="action-buttons">
		                            <form action="Routeupdate.jsp" method="post" style="display: inline;">
		                                <input type="hidden" name="driverId" value="${driver.driverId}">
		                                <input type="hidden" name="fname" value="${driver.fname}">
		                                <input type="hidden" name="lname" value="${driver.lname}">
		                                <input type="hidden" name="address" value="${driver.address}">
		                                <input type="hidden" name="licenseNum" value="${driver.licenseNum}">
		                                <input type="hidden" name="telNo" value="${driver.telNo}">
		                                <input type="hidden" name="age" value="${driver.age}">
		                                 
		                                <button type="submit" class="action-button update-button">
		                                    <i class="ri-file-edit-line"></i> Update
		                                </button>
		                            </form>
		                            <form action="deleteTroute" method="post" style="display: inline;">
		                                <input type="hidden" name="rid" value="${driver.driverId}">
		                                <button type="submit" class="action-button delete-button">
		                                    <i class="ri-delete-bin-2-line"></i> Delete
		                                </button>
		                            </form>
		                        </div>
		                    </td>
		                </tr>
		                </c:forEach>
		            </tbody>
		        </table>
		        <div id="pagination" class="pagination"></div>
		    </div>
		    <script src="JS/driverCrud/pagination.js"></script>
   </div>
</body>
</html>