<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            display: flex;
            min-height: 100vh;
            background-color: #f5f7fa;
            color: #333;
        }

        .sidebar {
            width: 250px;
            background: linear-gradient(135deg, #2fb76b, #2dc7b0);
            color: white;
            padding: 20px 0;
            display: flex;
            flex-direction: column;
            box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1);
        }

        .sidebar-header {
            padding: 0 20px 20px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
            text-align: center;
        }

        .sidebar-header h2 {
            margin-bottom: 5px;
        }

        .sidebar-menu {
            padding: 20px 0;
            flex-grow: 1;
        }

        .menu-item {
            padding: 12px 20px;
            margin: 5px 0;
            cursor: pointer;
            transition: all 0.3s;
            display: flex;
            align-items: center;
        }

        .menu-item:hover {
            background-color: rgba(255, 255, 255, 0.1);
            transform: translateX(5px);
        }

        .menu-item i {
            margin-right: 10px;
            font-size: 18px;
        }

        .menu-item.active {
            
            border-left: 3px solid white;
        }

        .main-content {
            flex-grow: 1;
            padding: 30px;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
        }

        .header h1 {
            color: #444;
        }

        .user-profile {
            display: flex;
            align-items: center;
        }

        .user-profile img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 10px;
            object-fit: cover;
        }

        .dashboard-card {
            background: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            margin-bottom: 30px;
        }
        .tab-content{
        	opacity: 0;
		    transition: opacity 2.5s ease;
		    display: none;
        }
		.tab-content.show {
		    display: block;
		    opacity: 1;
		}

        .user-info {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .user-info img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 20px;
            border: 5px solid #f0f2f5;
        }

        .user-details h2 {
            margin-bottom: 5px;
            color: #444;
        }

        .user-details p {
            color: #777;
            margin-bottom: 10px;
        }

        .stats {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }

        .stat-card {
            background: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            text-align: center;
        }

        .stat-card h3 {
            color: #777;
            margin-bottom: 10px;
            font-size: 14px;
        }

        .stat-card p {
            font-size: 24px;
            font-weight: bold;
            color: #6e8efb;
        }

        @media (max-width: 768px) {
            body {
                flex-direction: column;
            }
            .sidebar {
                width: 100%;
                flex-direction: row;
                padding: 10px;
            }
            .sidebar-header {
                display: none;
            }
            .sidebar-menu {
                display: flex;
                padding: 0;
                overflow-x: auto;
            }
            .menu-item {
                padding: 10px 15px;
                white-space: nowrap;
            }
            .menu-item i {
                margin-right: 5px;
            }
         }
         .btn-logout {
            background-color: #e74c3c;
            color: white;
            margin-top: auto;
            padding: 10px;
            margin-left: 70px;
            border: none;
            border-radius: 10px;
         }
         .btn-logout:hover {
            background: #c0392b;
            cursor: pointer;
        }
	        
	    table {
	      width: 100%;
	      border-collapse: collapse;
	      margin-top: 20px;
	
	    }
	
	    thead {
	      background-color: green;
	      color: white;
	    }
	
	    th, td {
	      padding: 12px 16px;
	      text-align: center;
	      border-bottom: 1px solid #ddd;
	
	    }
	
	    td {
	      font-size: 16px;
	    }
	
	    .update-button {
	      background-color: #238b45;
	      color: white;
	      border: none;
	      padding: 6px 12px;
	      border-radius: 4px;
	      cursor: pointer;
	      align-items: left;
	      gap: 4px;
	    }
	    
	    .update-button:hover {
	      background-color: green;
	    }
	    
	    .delete-button {
	      background-color: #FF3D00;
	      color: white;
	      border: none;
	      padding: 6px 12px;
	      border-radius: 4px;
	      cursor: pointer;
	      align-items: left;
	      margin-left:10px;
	      gap: 4px;
	    }
	    
	    .delete-button:hover {
	      background-color: #D52F23;
	    }
	    .redirect-btn {
	      background-color: #238b45;
	      color: white;
	      border-radius: 4px;
	      border: none;
	      padding: 6px 12px;
	      cursor: pointer;
	      align-items: left;
    	}
	    .tab-title{
	    	text-align: center;
	    	color: green;
	    }
    </style>
   
</head>
<body>
    <div class="sidebar">
        <div class="sidebar-header">
            <h2>Dashboard</h2>
            <p>Welcome back!</p>
        </div>
        <div class="sidebar-menu">
            <div class="menu-item" onclick="openTab(event, 'tab1')" id="defaultOpen" data-tab="tab1">
                <i class="fas fa-user"></i>
                <span>Profile</span>
            </div>
            
            <div class="menu-item" onclick="openTab(event, 'tab2')" data-tab="tab2">
                <i class="fas fa-cog"></i>
                <span>Booking Details</span>
            </div>
            
            <div class="menu-item" onclick="openTab(event, 'tab3')" data-tab="tab3">
                <i class="fas fa-cog"></i>
                <span>Card Information</span>
            </div>
            
            <div class="menu-item" onclick="openTab(event, 'tab4')" data-tab="tab4">
                <i class="fas fa-cog"></i>
                <span>User Reviews</span>
            </div>
            
            <div class="menu-item">
                <i class="fas fa-cog"></i>
                <span>Settings</span>
            </div>
            
            <div class="menu-item" >
                <i class="fas fa-envelope"></i>
                <span>Messages</span>
            </div>         
        </div>
        
        <div class="logoutSec">
            <button class="btn-logout" onclick="logout()">Logout</button>
        </div>
		
    </div>

    <div class="main-content">
 	
		<div class="tab-content" id="tab1">
			<h1 class="tab-title">User Information</h1><br>
	        <div class="dashboard-card" >
	            <div class="user-info">
	                <img src="CSS/TrainCrudCss/avatar.png" style="background-color: purple" alt="User">
	                <div class="user-details">
	                    <h2><%=session.getAttribute("name") %></h2>
	                    <p><i class="fas fa-envelope"></i> User Name:<%=session.getAttribute("uname") %></p>
	                    <p><i class="fas fa-phone"></i> Email:<%=session.getAttribute("email") %></p>
	                    
	                </div>
	            </div>
			</div>
		</div>
		
		<div class="tab-content" id="tab2">
		      <h1 class="tab-title">Booking Details</h1><br>
			  <button class="redirect-btn" onclick="window.location.href='Booking.jsp'">Add Booking</button>

        	  <table>
				    <thead>
				      <tr>
				        <th>Book Id</th>
				        <th>Location</th>
				        <th>Destination</th>
				        <th>No of Passengers</th>
				        <th>Date</th>
				        <th>Price</th>
				        <th>CID</th>
				        <th>RouteId</th>
				        <th></th>
				      </tr>
				    </thead>
				    <tbody>
				      <c:forEach var="tick" items="${ticket}">
				      		<tr>
				      			<td>${tick.bid}</td>
				      			<td>${tick.location}</td>
				      			<td>${tick.destination}</td>
				      			<td>${tick.noOfTicket}</td>
				      			<td>${tick.date}</td>
				      			<td>${tick.price}</td>
				      			<td>${tick.cid}</td>
				      			<td>${tick.routeId}</td>
				      			 
				      			<td>
				                	<div class="action-buttons">
				            	    	<form  method="post" action="TicketUpdate.jsp" style="display: inline;">
				                        	<input type="hidden" name="bid" value="${tick.bid}">
				                            <input type="hidden" name="location" value="${tick.location}">
				                            <input type="hidden" name="destination" value="${tick.destination}">
				                            <input type="hidden" name="noOfTicket" value="${tick.noOfTicket}">
				                            <input type="hidden" name="date" value="${tick.date}">
				                            <input type="hidden" name="price" value="${tick.price}">
				                            <input type="hidden" name="cid" value="${tick.cid}">
				                            <input type="hidden" name="routeId" value="${tick.routeId}">	
				                            <button type="submit" class="update-button" onclick="showBookingForm();">Update </button>
				                     	</form>
				                            
				                        <form method="post" action="DeleteTicket" style="display: inline;"  onsubmit="return confirm('Are you sure?');">
				  							<input type="hidden" name="deleteticket" value="${tick.bid}">
				 							<button class="delete-button" type="submit">Delete</button>
				  						</form>    
				                    </div>
				                        
				               	</td>
				      		</tr>
				      </c:forEach>
				    </tbody>
  				</table>
		</div>
		
		<div class="tab-content" id="tab3">
			<h1 class="tab-title">Card Details</h1><br>	
        	<table>
			    <thead>
			      <tr>
			        <th>Name on Card</th>
			        <th>Card Number</th>
			        <th>Expiry</th>
			        <th>CVC</th>
			        <th>Email</th>
			        <th>Payment ID</th>
			        <th>CID</th>
			        <th></th>
			        
			      </tr>
			    </thead>
			    <tbody>
			      <c:forEach var="pay" items="${payment}">
			      		<tr>
			      			<td>${pay.name}</td>
			      			<td>${pay.cardNo}</td>
			      			<td>${pay.exp}</td>
			      			<td>${pay.cvc}</td>
			      			<td>${pay.email}</td>
			      			<td>${pay.pid}</td>
			      	<!--  	<td>${pay.cid}</td> -->
			      			  
			      			<td>
			                	<div class="action-buttons">
			            	    	<form action="PaymentUpdate.jsp" method="post" style="display: inline;"  onsubmit="return confirm('Are you sure?');">
			                            <input type="hidden" name="name" value="${pay.name}">
			                            <input type="hidden" name="cardNo" value="${pay.cardNo}">
			                            <input type="hidden" name="exp" value="${pay.exp}">
			                            <input type="hidden" name="cvc" value="${pay.cvc}">
			                            <input type="hidden" name="email" value="${pay.email}">
			                            <input type="hidden" name="pid" value="${pay.pid}">
			                            <input type="hidden" name="cid" value="${pay.cid}">
			                            <button type="submit" class="update-button">Update </button>
			                     	</form>
			                            
			                        <form method="post" action="DeletePayment" style="display: inline;">
			  							<input type="hidden" name="deletepayment" value="${pay.pid}">
			 							<button class="delete-button" type="submit">Delete</button>
			  						</form>    
			                    </div>
			                        
			               	</td> 
			      		</tr>
			      </c:forEach>
			    </tbody>
			  </table>		
		</div>
		
		<div class="tab-content" id="tab4">
        	<h1 class="tab-title">User Reviews</h1><br>
        	<form method="get" action="insertReview">
   				 <button type="submit" class="refresh-btn">Add Review</button>
			  </form>

        	  <table>
				    <thead>
				      <tr>
				        <th>Review Id</th>
				        <th>Type</th>
				        <th>Message</th>
				        <th>Rating</th>
				        <th></th>
				      </tr>
				    </thead>
				    <tbody>
				      <c:forEach var="review" items="${review}">
				      		<tr>
				      			<td>${review.reviewId}</td>
				      			<td>${review.type}</td>
				      			<td>${review.message}</td>
				      			<td>${review.rating}</td>
				      			<td>
				                	<div class="action-buttons">
				            	    	<form  method="post" action="ReviewUpdate.jsp" style="display: inline;">
				                        	<input type="hidden" name="reviewId" value="${review.reviewId}">
				                            <input type="hidden" name="type" value="${review.type}">
				                            <input type="hidden" name="message" value="${review.message}">
				                            <input type="hidden" name="rating" value="${review.rating}">
				                            	
				                            <button type="submit" class="update-button" >Update </button>
				                     	</form>
				                            
				                        <form method="post" action="ReviewDelete" style="display: inline;"  onsubmit="return confirm('Are you sure?');">
				  							<input type="hidden" name="reviewId" value="${review.reviewId}">
				 							<button class="delete-button" type="submit">Delete</button>
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
	        tablinks = document.getElementsByClassName("menu-item");
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