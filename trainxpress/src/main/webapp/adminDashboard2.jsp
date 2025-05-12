<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="CSS/adminDashboard/adminDashboardStyle2.css">
    <link rel="stylesheet" href="CSS/TrainCrudCss/trainManageStyle2.css">
</head>
<body>
    <div class="dashboard">
        <div class="header">
            <h2>Admin Dashboard</h2>
        </div>
        <div class="sidebar">
            <div class="profile">
                <img src="CSS/TrainCrudCss/avatar.png" alt="Admin Profile">
                <span><%=session.getAttribute("name") %></span>
            </div>
            <div class="menu">
                <button class="btn" data-tab="tab1" onclick="openTab(event, 'tab1')" id="defaultOpen">Profile</button>
                <button class="btn" data-tab="tab2" onclick="openTab(event, 'tab2')">Manage Trains</button>        
                <button class="btn" data-tab="tab3" onclick="openTab(event, 'tab3')">Manage Drivers</button>
                <button class="btn" data-tab="tab4" onclick="openTab(event, 'tab4')">Manage Train Schedule</button>
               
                
                
                
                
                
                
            </div>
            <div class="logoutSec">
            <button class="btn logout" onclick="location.href='LogOut'">Logout</button>
        	</div>
        </div>
		<div class="tab-content" id="tab1">
		
         	<h1 class="tab-title">Admin Information</h1><br>
	        <div class="dashboard-card" >
	            <div class="user-info">
	                
	                <div class="user-details">
	                    <h2><%=session.getAttribute("name") %></h2>
	                    <p><i class="fas fa-envelope"></i> User Name:<%=session.getAttribute("uname") %></p>
	                    <c:set var="count" value="${userCount}"/>
	                    <p> User Count:${count}</p>
	                    <c:set var="count2" value="${trainCount}"/>
	                    <p> Available Trains count:${count2}</p>
	                </div>
	            </div>
			</div>
			
        </div>	
		
        <div class="tab-content" id="tab2">
        <h2 class="tabcontent-title">Train Details</h2>
        	<button class="refresh-btn" onclick="window.location.href='addTrain.jsp'">Add Train</button><hr>
         <table id="routeTable">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Train Name</th>
                    <th>Engine Number</th>
                    <th>Train Type</th>
                    <th>Seat Count</th>
                    <th>no. Of Wagons</th>
                    <th>Options</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="trn" items="${admin}" >
                <tr>
                    <td>${trn.tid}</td>
  					<td>${trn.tname}</td>
  					<td>${trn.tenginenum}</td>
  					<td>${trn.ttype}</td>
  					<td>${trn.seatcount}</td>
  					<td>${trn.noofwagons}</td>
                    <td>
                        <div class="action-buttons">
                            <form action="updateTrain.jsp" method="post" style="display: inline;">
                                <input type="hidden" name="tid" value="${trn.tid}">
                                <input type="hidden" name="tname" value="${trn.tname}">
                                <input type="hidden" name="tenginenum" value="${trn.tenginenum}">
                                <input type="hidden" name="ttype" value="${trn.ttype}">
                                <input type="hidden" name="tseatcount" value="${trn.seatcount}">
                                <input type="hidden" name="tnoofwagons" value="${trn.noofwagons}">
                                <button type="submit" class="action-button update-button">
                                    <i class="ri-file-edit-line"></i> Update
                                </button>
                            </form>
                            
                            <form method='post' action='Tdelete' style="display: inline;">
  								<input type='hidden' name='tdelete' value='${trn.tid}'>
  								<button class="action-button delete-button" type="submit" onclick="return confirm('Are You Sure?')">
  								<i class="ri-delete-bin-2-line"></i>Delete</button>
  							</form>
                            
                        </div>
                        
                    </td>
                    
                </tr>
                </c:forEach>
            </tbody>
        </table>
        	
        </div>	
        
        <div class="tab-content" id="tab3">
         	<h2 class="tabcontent-title">Driver Details</h2>
        	<button class="refresh-btn" onclick="window.location.href='driverInsert.jsp'">Add Driver</button><hr>
         	<table>
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
		                            <form action="driverUpdate.jsp" method="post" style="display: inline;">
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
		                            <form action="DriverDelete" method="post" style="display: inline;">
		                                <input type="hidden" name="driverId" value="${driver.driverId}">
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
        </div>	
        
        <div class="tab-content" id="tab4">
         	<h2 class="tabcontent-title">Train Schedules</h2>
        	<button class="refresh-btn" onclick="window.location.href='Train Route Reg.jsp'">Add Schedule</button><hr>
         	<table>
			  <thead>
                <tr>
                    <th>Route ID</th>
                    <th>Starting Station</th>
                    <th>Ending Station</th>
                    <th>Departure time</th>
                    <th>Arrive Price</th>
                    <th>Ticket Price</th>
                    <th>Train ID</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="allTrout" items="${allRoute}">
                <tr>
                    <td>${allTrout.rid}</td>
                    <td>${allTrout.sstation}</td>
                    <td>${allTrout.estation}</td>
                    <td>${allTrout.depTime}</td>
                    <td>${allTrout.arrTime}</td>
                    <td>${allTrout.tprice}</td>
                    <td>${allTrout.tid}</td>
                    <td>
                        <div class="action-buttons">
                            <form action="Update Route Details.jsp" method="post" style="display: inline;">
                                <input type="hidden" name="rid" value="${allTrout.rid}">
                                <input type="hidden" name="sstation" value="${allTrout.sstation}">
                                <input type="hidden" name="estation" value="${allTrout.estation}">
                                <input type="hidden" name="depTime" value="${allTrout.depTime}">
                                <input type="hidden" name="arrTime" value="${allTrout.arrTime}">
                                <input type="hidden" name="tprice" value="${allTrout.tprice}">
                                <input type="hidden" name="tid" value="${allTrout.tid}">
                                <button type="submit" class="action-button update-button">
                                    <i class="ri-file-edit-line"></i> Update
                                </button>
                            </form>
                            <form action="DeleteRoute" method="post" style="display: inline;">
                                <input type="hidden" name="rid" value="${allTrout.rid}">
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
        </div>	
	</div>
    
    
	<script>
    function openTab(evt, tabName) {
        var i, tabcontent, tablinks;

        // Hide all tab contents and remove show class
        tabcontent = document.getElementsByClassName("tab-content");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].classList.remove("show");
            tabcontent[i].style.display = "none";
        }

        // Remove active class from all buttons
        tablinks = document.getElementsByClassName("btn");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }

        // Show the clicked tab with fade-in
        var currentTab = document.getElementById(tabName);
        currentTab.style.display = "block";
        void currentTab.offsetWidth;
        currentTab.classList.add("show");

        evt.currentTarget.className += " active";

        // Save the last opened tab to localStorage
        localStorage.setItem("lastTab", tabName);
    }

    // On page load: open the last tab or default
    window.onload = function () {
        var lastTab = localStorage.getItem("lastTab") || "defaultTab"; // fallback
        var tabButton = document.querySelector('[data-tab="' + lastTab + '"]');
        if (tabButton) {
            tabButton.click();
        } else {
            document.getElementById("defaultOpen").click();
        }
    };
</script>
	


</body>
</html>
