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
    <c:import url="header.jsp" /> 
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
                <button class="btn" data-tab="tab1" onclick="openTab(event, 'tab1')" id="defaultOpen" style="font-weight:normal;">Profile</button>
                <button class="btn" data-tab="tab2" onclick="openTab(event, 'tab2')" style="font-weight:normal;">Manage Trains</button>        
                <button class="btn" data-tab="tab3" onclick="openTab(event, 'tab3')" style="font-weight:normal;">Manage Drivers</button>
                <button class="btn" data-tab="tab4" onclick="openTab(event, 'tab4')" style="font-weight:normal;">Manage Train Schedule</button>
             	<button class="btn" data-tab="tab5" onclick="openTab(event, 'tab5')" style="font-weight:normal;">View Reviews</button>
             	<button class="btn" data-tab="tab6" onclick="openTab(event, 'tab6')" style="font-weight:normal;">View Inquiries</button>
             	
            </div>
  <!--      <div class="logoutSec">
            	<button class="btn logout" onclick="location.href='LogOut'">Logout</button>
        	</div>   -->
        </div>
        
        
		<div class="tab-content" id="tab1">
			
			<div class="dashboard-card" >
	        	<h2 style="text-align: left;">User Information</h2><br>
	            <div class="user-info">
	            	<img src="CSS/TrainCrudCss/avatar.png" style="background-color: purple" alt="User">
	                <div class="user-details">
	                    <h2><%=session.getAttribute("name") %></h2>
	                    <p>User Name: <%=session.getAttribute("uname") %></p>
	                   
	                    
	                </div>
	            </div>
			</div>
			
			<div class="dashboard-card">
				<h2 style="margin-left: 5px;">User Activity</h2>
				<div class="activity-card">
					<div class="activity-card1">
						<c:set var="count" value="${userCount}"/>
	                    <p> Current Users:${count}</p>
			        	
			        </div>
			                    	
			        <div class="activity-card1">
			        	<c:set var="count2" value="${trainCount}"/>
	                    <p> Available Trains:${count2}</p>
			            
			        </div>
			                    	
			        <div class="activity-card1">
			            <c:set var="count3" value="${driverCount}"/>
	                    <p> Availabe Drivers:${count3}</p>
			        </div>
				</div>
			
			</div>
					
        </div>	
		
        <div class="tab-content" id="tab2">
        <h2 class="tabcontent-title">Train Details</h2>
        	<button class="refresh-btn" onclick="window.location.href='addTrain.jsp'" style="margin-bottom: 12px;">Add Train</button>
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
  								<button style="padding-left:20px;" class="action-button delete-button" type="submit" onclick="return confirm('Are You Sure?')">
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
        	<button class="refresh-btn" onclick="window.location.href='driverInsert.jsp'" style="margin-bottom: 10px;">Add Driver</button><br>
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
		                            <form action="DriverDelete" method="post" style="display: inline;" onsubmit="return confirm('Are you sure?');">
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
        	<button class="refresh-btn" onclick="window.location.href='Train Route Reg.jsp'" style="margin-bottom: 10px;">Add Schedule</button><br>
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
                            <form action="DeleteRoute" method="post" style="display: inline;"onsubmit="return confirm('Are you sure?');">
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
			<div id="pagination" class="pagination"></div>
        </div>	

        <div class="tab-content" id="tab5">
    		<h2 class="tabcontent-title">Customer Reviews</h2><br>
        	
         	<table>
			  <thead>
                <tr>
                    <th>Review Id</th>
                    <th>Customer Name</th>
                    <th>Type</th>
                    <th>Message</th>
                    <th>Rating</th>
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach var="rev" items="${review}">
                <tr>
                    <td>${rev.reviewId}</td>
                    <td>${rev.name}</td>
                    <td>${rev.type}</td>
                    <td>${rev.message}</td>
                    <td>${rev.rating}</td>
                </tr>
                </c:forEach>
            </tbody>
			</table>

    	</div>
    	
    	
    	<div class="tab-content" id="tab6">
        <h2 class="tabcontent-title">Inquiry Details</h2>
         <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>User-Email</th>
                    <th>Message</th>
                    <th>Status</th>
                    <th>Options</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="inq" items="${inquiry}" >
                <tr>
                    <td>#${inq.inqId}</td>
					<td>${inq.email}</td>
					<td>${inq.message}</td>
					<td>${inq.status}</td>
                    <td style="display:flex; justify-content:center;">
                        <div class="action-buttons">
                            <form action="updateInquiry.jsp" method="post" style="display: inline;">
                                <input type="hidden" name="inqid" value="${inq.inqId}">
                                <input type="hidden" name="email" value="${inq.email}">
                                <input type="hidden" name="message" value="${inq.message}">
                                <input type="hidden" name="status" value="${inq.status}">
                                <button type="submit" class="action-button update-button">
                                    <i class="ri-file-edit-line"></i> Update
                                </button>
                            </form>
 
                        </div>
                        
                    </td>
                    
                </tr>
                </c:forEach>
            </tbody>
        </table>
        	
        </div>	
    	
    	
    	
	</div> <!-- end of the dashboard div -->
    
    
    
    	
	<div class="container4" style="background-color: #16A34A;">
	    <footer style="text-align:center; padding: 20px; font-family: Inter; color:#ffffff;display:flex;justify-content: space-between;">
	        <a href="#" class="home-link"><!--<img src="LOGO.png" alt="Logo">--> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
	            <path d="M18 3.39996H6C4.89543 3.39996 4 4.29539 4 5.39996V17.4C4 18.5045 4.89543 19.4 6 19.4H18C19.1046 19.4 20 18.5045 20 17.4V5.39996C20 4.29539 19.1046 3.39996 18 3.39996Z" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
	            <path d="M4 11.4H20" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
	            <path d="M12 3.39996V11.4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
	            <path d="M8 19.4L6 22.4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
	            <path d="M18 22.4L16 19.4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
	            <path d="M8 15.4H8.01" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
	            <path d="M16 15.4H16.01" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
	            </svg>RailXpress</a>
	        &copy; 2025 RailXpress. All rights reserved.
	    </footer>
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
    
    //table button js 
    document.addEventListener('DOMContentLoaded', function() {
    const rowsPerPage = 13;
    const table = document.getElementById('routeTable');
    const pagination = document.getElementById('pagination');
    const rows = table.querySelectorAll('tbody tr');
    const rowCount = rows.length;
    const pageCount = Math.ceil(rowCount / rowsPerPage);
    let currentPage = 1;

    function displayRows(startIndex, endIndex) {
        rows.forEach((row, index) => {
            row.style.display = (index >= startIndex && index < endIndex) ? '' : 'none';
        });
    }

    function createPagination() {
        pagination.innerHTML = '';

        const prevButton = document.createElement('button');
        prevButton.textContent = 'Previous';
        prevButton.classList.add('prev');
        prevButton.disabled = currentPage === 1;
        prevButton.addEventListener('click', () => {
            if (currentPage > 1) {
                currentPage--;
                updateTable();
            }
        });
        pagination.appendChild(prevButton);

        for (let i = 1; i <= pageCount; i++) {
            const pageButton = document.createElement('button');
            pageButton.textContent = i;
            pageButton.classList.add('page');
            if (i === currentPage) {
                pageButton.classList.add('active');
            }
            pageButton.addEventListener('click', () => {
                currentPage = i;
                updateTable();
            });
            pagination.appendChild(pageButton);
        }

        const nextButton = document.createElement('button');
        nextButton.textContent = 'Next';
        nextButton.classList.add('next');
        nextButton.disabled = currentPage === pageCount;
        nextButton.addEventListener('click', () => {
            if (currentPage < pageCount) {
                currentPage++;
                updateTable();
            }
        });
        pagination.appendChild(nextButton);
    }

    function updateTable() {
        const startIndex = (currentPage - 1) * rowsPerPage;
        const endIndex = startIndex + rowsPerPage;
        displayRows(startIndex, endIndex);
        createPagination();
    }

    updateTable();
});
</script>
	


</body>
</html>
