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
                <span>John Doe</span>
            </div>
            <div class="menu">
                <button class="btn" onclick="openTab(event, 'tab1')" id="defaultOpen">Manage Users</button>
                <button class="btn" onclick="openTab(event, 'tab2')">Manage Routes</button>        
                <button class="btn" onclick="openTab(event, 'tab3')">Manage Trains</button>
                <button class="btn">Settings</button>
                <button class="btn">Reports</button>
            </div>
            <div class="logoutSec">
            <button class="btn logout" onclick="logout()">Logout</button>
        	</div>
        </div>

        <div class="tab-content" id="tab1">
        	<h2 class="tabcontent-title">Booking Details..</h2>
        	<button class="refresh-btn">Refresh</button>
         	<table>
			  <thead>
			    <tr>
			      <th>Header 1</th>
			      <th>Header 2</th>
			      <th>Header 3</th>
			      <th>Header 4</th>
			      <th>Header 5</th>
			      <th>Header 6</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <td>Row 1 Col 1</td>
			      <td>Row 1 Col 2</td>
			      <td>Row 1 Col 3</td>
			      <td>Row 1 Col 4</td>
			      <td>Row 1 Col 5</td>
			      <td>Row 1 Col 6</td>
			    </tr>
			    <tr>
			      <td>Row 2 Col 1</td>
			      <td>Row 2 Col 2</td>
			      <td>Row 2 Col 3</td>
			      <td>Row 2 Col 4</td>
			      <td>Row 2 Col 5</td>
			      <td>Row 2 Col 6</td>
			    </tr>
			    <tr>
			      <td>Row 3 Col 1</td>
			      <td>Row 3 Col 2</td>
			      <td>Row 3 Col 3</td>
			      <td>Row 3 Col 4</td>
			      <td>Row 3 Col 5</td>
			      <td>Row 3 Col 6</td>
			    </tr>
			    <tr>
			      <td>Row 4 Col 1</td>
			      <td>Row 4 Col 2</td>
			      <td>Row 4 Col 3</td>
			      <td>Row 4 Col 4</td>
			      <td>Row 4 Col 5</td>
			      <td>Row 4 Col 6</td>
			    </tr>
			    <tr>
			      <td>Row 5 Col 1</td>
			      <td>Row 5 Col 2</td>
			      <td>Row 5 Col 3</td>
			      <td>Row 5 Col 4</td>
			      <td>Row 5 Col 5</td>
			      <td>Row 5 Col 6</td>
			    </tr>
			  </tbody>
			</table>
        </div>	
        
        <div class="tab-content" id="tab2">
         	<h1>Sadeepa Wijesingha</h1>
        </div>	
        
        <div class="tab-content" id="tab3">
         	<h1>Sadeepa vhshjnskdvmkl</h1>
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
		  
		  // Trigger reflow to restart the transition
		  void currentTab.offsetWidth;
		  
		  currentTab.classList.add("show");
		  evt.currentTarget.className += " active";
		  
		}
		
		// Get the element with id="defaultOpen" and click on it
		document.getElementById("defaultOpen").click();
	</script>
	


</body>
</html>
