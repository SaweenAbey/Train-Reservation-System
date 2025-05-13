<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Page</title>
    <style>
    	html{
    		 scroll-behavior: smooth;
    	}
        body {
            margin: 0;
            font-family: Arial,san-serif;
            background-color: white;
        }
        .hero {
            position: relative;
            height: 730px;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            overflow: hidden;
        }
        .slideshow {
            position: absolute;
            width: 100%;
            height: 100%;
            z-index: -1; /* Places it BEHIND the hero content */
        }
        .slide {
            position: absolute;
            width: 100%;
            height: 100%;
            background-size: cover;
            background-position: center;
            opacity: 0;
            transition: opacity 1s ease-in-out;
        }
        .slide.active {
            opacity: 1;
        }
        .hero-content {
            background: transparent;
            padding: 20px;
            
        }
		.hero-content h1{
			color: white;
			font-size: 60px;
			margin-bottom: 0px;
		}
		.hero-content h1:hover{
   			transform: scale(1.05);
    		transition: 0.3s ease;
    		cursor: default;
		}
		.hero-content p{
			color: white;
			font-size: 20px;
			padding: 0px;
			margin: 0px;
		}
        .buttons {
            margin-top: 15px;
        }
        button {
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
            margin: 5px;
        }
        .home-btn {
            background: white;
          
        }
        .home-btn:hover{
        	background: lightgray;
        }
        .book-btn {
            background: #C6EDC3;
            color: black; 
           
        }
        .book-btn:hover{
        	background: #E4FDE1;
        }
        .modal {
            display: none; 
            position: fixed;
            overflow: auto;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            justify-content: center;
            align-items: center;
        	background-color: rgba(255, 255, 255, 0.05); 
    		backdrop-filter: blur(15px) saturate(180%) contrast(1.2); 
		}
        .modal-content {
        /* 	background-image: url('form_1.jpg'); */
     		background: white;  
	        background-size: cover;
	        background-position: center;
	        background-repeat: no-repeat;
            padding: 20px;
            padding-right: 30px;
            padding-left: 30px;
            border-radius: 10px;
            width: 30%;
            position: relative;
            opacity: 0;
            transform: translateY(-50px);
            transition: opacity 0.3s ease-in-out, transform 0.3s ease-in-out;
            margin-top: 50px;
        }
        .modal.show .modal-content {
            opacity: 1;
            transform: translateY(0);
        }
        .close-btn {
            position: absolute;
            top: 10px;
            right: 15px;
            font-size: 20px;
            cursor: pointer;
            color: #C6EDC3;
        }
        .form-control {
       		background: transparent;
            width: 100%;
            padding: 8px;
            border: none;
            border-bottom: 1px solid black;
            border-radius: 5px;
            font-size: 16px;	
            margin-left: 0px;
            margin-bottom: 25px;
        }
        .modal-content button {
            width: 30%;
            background: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            font-weight: bold;
            padding: 12px;
            margin-top: 15px;
            margin-left: 120px;
            border-radius: 5px;
        }
        .modal-content button:hover {
            background: green;
        }
        
      	.page-content {
            display: flex;
           	flex-wrap: nowrap;
			padding:0px;
        }
        .text-area1{
        	margin-left: 50px;
        	padding: 20px;
        	padding-bottom: 0px;
        }
        .text-area2{
        	margin-top: 10px;
        	margin-left: 50px;
        	padding: 20px;
        	padding-bottom: 0px;
        }
		.table{
			margin-left: 50px;
			margin-right: 80px;
			margin-bottom: 50px;
		}	
		.table-title{
			color: #2e7d32;
			font-size: 2em;
		    border-bottom: 2px solid #a5d6a7;
		    padding-bottom: 8px;
		    margin-bottom: 20px;
		    margin: 20px;			
		}
		
		table {
	      width: 100%;
	      border-collapse: collapse;
	      margin: 20px;
	    }
	
	    th {
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
	    
		hr {
		    border: 0;
		    height: 3px;
		    background: linear-gradient(90deg, transparent, #4CAF50, transparent);
		    margin: 10px 0 20px;
		}
		.error{
			margin-top: -15px;
			margin-left: 10px;
			padding: 0px;
			color: red;
			font-size: 12px;
			text-align: left;
		}
		input:focus {
 		 	outline: none;
  			border-bottom: 2px solid gray;
		}
		.form-link {
 			color: green;
  			text-decoration: none;
		}
		.form-link:hover {
  			text-decoration: underline;
		}
		.about-us{
			color: #2e7d32;
			font-size: 2em;
		    border-bottom: 2px solid #a5d6a7;
		    padding-bottom: 8px;
		    margin-bottom: 20px;
		}
		.why-choose-us{
			color: #2e7d32;
			font-size: 2em;
		    border-bottom: 2px solid #a5d6a7;
		    padding-bottom: 8px;
		    margin-bottom: 20px;
		}
		.contact-us{
			color: #2e7d32;
			font-size: 2em;
		    border-bottom: 2px solid #a5d6a7;
		    padding-bottom: 8px;
		    margin-bottom: 20px;
		}
		.page-paragraph{
			background-color: #e8f5e9;
		    padding: 20px;
		    border-radius: 8px;
		    margin-bottom: 30px;
		    border-left: 5px solid #4caf50;
		    line-height: 1.6;
		    color: #333;
		}
		.page-list{
			list-style-type: none;
    		padding: 0;
		}
		.page-list li {
		    padding: 10px 15px;
		    margin-bottom: 8px;
		    background-color: #e8f5e9;
		    border-radius: 5px;
		    position: relative;
		    padding-left: 40px;
		    transition: all 0.3s ease;
		}
		
		.page-list li:hover {
		    background-color: #c8e6c9;
		    transform: translateX(5px);
		}
		
		.page-list li:before {
		    content: "✓";
		    color: #2e7d32;
		    font-weight: bold;
		    position: absolute;
		    left: 15px;
		}
		.contact-info {
			  background-color: #e9f7ec; /* Light green background */
			  border-left: 4px solid #66bb6a; /* Accent green border */
			  padding: 16px 20px;
			  border-radius: 10px;
			  width: 540px;
			  height: 190px;
			  font-family: 'Segoe UI', sans-serif;
			  box-shadow: 0 2px 6px rgba(0, 128, 0, 0.1);
		}
		.contact-item {
			  display: flex;
			  align-items: center;
			  margin-bottom: 12px;
			  color: black;
		}
			
		.contact-item:last-child {
			  margin-bottom: 0;
		}
			
		.contact-item .icon {
			  font-size: 20px;
			  margin-right: 10px;
		}
		
		
	</style>
	<c:import url="header.jsp" /> 
</head>
<body>
	
	

    <section class="hero">
        <div class="slideshow">
            <div class="slide active" style="background-image: url('CSS/BookingCrud/train_4.jpg');"></div>
            <div class="slide" style="background-image: url('CSS/BookingCrud/train_2.jpg');"></div>
            <div class="slide" style="background-image: url('CSS/BookingCrud/train_3.jpg');"></div>
            <div class="slide" style="background-image: url('CSS/BookingCrud/train_1.jpg');"></div>
        </div>
        
        <div class="hero-content">
            <h1>🎫 Book Your Tickets</h1>
            <p>Fast & Secure Booking</p>
            <div class="buttons">
                <button class="home-btn" onclick="window.location.href='index.jsp'">Home Page 🏠</button>
                <button class="book-btn" onclick="showBookingForm()">Book Now ❇️</button>
            </div>
        </div>
    </section>
    
    <div class="page-content">
    
    	<div class="text-area1">
    		<h2 class="about-us">About Us</h2>
    		<div class="page-paragraph">
    			<p>	
					Welcome to RailXpress, your one-stop destination for hassle-free train ticket booking!<br> 
	            	We are dedicated to making railway travel easier, faster, and more convenient for everyone. <br> 
	                With our user-friendly platform, you can search, book, and manage your train tickets effortlessly. <br> 
	                Whether you're planning a business trip, a family vacation, or a daily commute, <br> 
	                we ensure a seamless booking experience with real-time availability, secure payment <br>options, and instant ticket confirmations.
            	</p>
    		</div>
    		
            <h2 class="why-choose-us">Why Choose Us?</h2>
     		<ul class="page-list">
     			<li>Easy & Fast Booking</li>
     			<li>Real-Time Seat Availability</li>
     			<li>Secure Payments</li>
     			<li>24/7 Customer Support</li>
     			<li>Eco-Friendly</li>
     		</ul>
     		<br>
    	</div>
    	   
    	   
    	<div style="margin-left: 100px; margin-top: 20px;">   
	    	<h2 class="contact-us">Contact Us</h2>  	
	     	<div class="contact-info">     		  
				  <div class="contact-item">
				    <span class="icon">📧</span>
				    <span>support.@RailXpress.me</span>
				  </div>
				  
				  <div class="contact-item">
				    <span class="icon">🏢</span>
				    <span>EH Cooray Building, No.24: 5th Floor, E.H.Cooray Tower, B535, Matara</span>
				  </div>
				  
				  <div class="contact-item">
				    <span class="icon">🌐</span>
				    <span>www.RailXpress.com</span>
				  </div>		  
			</div>
		</div>
     	
    </div>
    
    <div class="table" id="shedule-table">
    	<h2 class="table-title">Train Shedule</h2>
    	
    	<table class="shedule">
     		
                <tr>
                    <th>Route ID</th>
                    <th>Departure time</th>
                    <th>Arrival Time</th>
                    <th>Starting Station</th>
                    <th>Ending Station</th>
                </tr>
            
            
                <c:forEach var="allTrout" items="${allRoute}">
                <tr>
                    <td>${allTrout.rid}</td>
                    <td>${allTrout.depTime}</td>
                    <td>${allTrout.arrTime}</td>
                    <td>${allTrout.sstation}</td>
                    <td>${allTrout.estation}</td>
                </tr>
                </c:forEach>
            
     	  </table>
    </div>
    <br>
    <!-- Booking Form Modal -->
    <div id="bookingModal" class="modal">    
        <div class="modal-content">
        	
            <span class="close-btn" onclick="closeBookingForm()">&#10006;</span>
            <h2 class="form-title" style="text-align:center; padding:20px; color: green;">Enter Booking Details</h2>
            <hr>
            
            <form method="POST" action="addTicket" id="ticketForm">
            
	        	<label>Location:</label><span id="locationError" class="error"></span><br>
	            <input type="text" name="location" class="form-control" id="location"><br>
	                        
	            <label>Destination:</label><span id="destinationError" class="error"></span><br>
	            <input type="text" name="destination" class="form-control" id="destination"><br>
	                  
	            <label>No of Passengers:</label><span id="noOfTicketError" class="error"></span><br>
	            <input type="text" name="noOfTicket" class="form-control" id="noOfTicket"><br>
	                          	
	            <label>Route ID:</label><span id="routeIdError" class="error"></span><br>
	            <input type="text" name="routeId" class="form-control" id="routeId"><br>
	                    
	            <label>Date:</label><span id="dateError" class="error"></span><br>
	            <input type="date" name="date" class="form-control" id="date"><br> 
	             
	            <a class="form-link" href="#shedule-table" onclick="closeBookingForm()">Click here for shedule</a><br>           
	            <button type="submit">Confirm</button>
	         </form>
	         
        </div>
    </div>
    
    
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
    
    	//SlideShow javascript
	    document.addEventListener('DOMContentLoaded', function() {
			let currentSlide = 0;
			const slides = document.querySelectorAll('.slide');
			
			// Initialize first slide
			slides[currentSlide].classList.add('active');
			
			function rotateSlides() {
				slides[currentSlide].classList.remove('active');
				currentSlide = (currentSlide + 1) % slides.length;
				slides[currentSlide].classList.add('active');
			}
			
			setInterval(rotateSlides, 6000);
		});
	    	
        function showBookingForm() {
            let modal = document.getElementById('bookingModal');
            modal.style.display = 'flex';
            setTimeout(() => {
                modal.classList.add('show');
            }, 10);
        }

        function closeBookingForm() {
            let modal = document.getElementById('bookingModal');
            modal.classList.remove('show');
            setTimeout(() => {
                modal.style.display = 'none';
            }, 300);
        }
        
        

		//validation for the form
		document.getElementById('ticketForm').addEventListener('submit', function(event) {
            // Prevent form submission
            event.preventDefault();
            
            // Get all input fields
            const location = document.getElementById('location');
            const destination = document.getElementById('destination');
            const noOfTicket = document.getElementById('noOfTicket');
            const routeId = document.getElementById('routeId');
            const date = document.getElementById('date');
            
            // Get all error spans
            const locationError = document.getElementById('locationError');
            const destinationError = document.getElementById('destinationError');
            const noOfTicketError = document.getElementById('noOfTicketError');
            const routeIdError = document.getElementById('routeIdError');
            const dateError = document.getElementById('dateError');
            
            // Reset error messages
            locationError.textContent = '';
            destinationError.textContent = '';
            noOfTicketError.textContent = '';
            routeIdError.textContent = '';
            dateError.textContent= '';
            
            let isValid = true;
            
            // Validate location field
			const locationVal = location.value.trim();
            if (!locationVal) {
            	locationError.textContent = 'Location is required';
                isValid = false;
            }
			else if (!/^[A-Za-z]+(?:\s[A-Za-z]+)*$/.test(locationVal)){
				locationError.textContent = 'Only letters allowed'
				isValid = false;	
			}
            
            //validate destination field
            const destinationVal = destination.value.replace(/\s/g, '');
            if (!destinationVal) {
            	destinationError.textContent = 'Destination is required';
                isValid = false;
            }
            else if(!/^[A-Za-z]+(?:\s[A-Za-z]+)*$/.test(destinationVal)){
            	destinationError.textContent = 'Only letters allowed';
                isValid = false;
            }
        	
            //validate noOfTicket field
            const noOfTicketVal = noOfTicket.value.trim();
            if (!noOfTicketVal) {
            	noOfTicketError.textContent = 'Passenger count is required';
                isValid = false;
            }
            else if(!/^\d+$/.test(noOfTicketVal)){
            	noOfTicketError.textContent = 'Only numbers allowed';
                isValid = false;
            }
            else if (!/^\d{1,2}$/.test(noOfTicketVal)) {
            	noOfTicketError.textContent = 'Must be 1-2 digits';
                isValid = false;
            }
            
            //validate routeId field
            const routeIdVal = routeId.value.trim();
            if (!routeIdVal) {
            	routeIdError.textContent = 'RouteId is required';
                isValid = false;
            }
            else if(!/^\d+$/.test(routeIdVal)){
            	routeIdError.textContent = 'Only numbers allowed';
                isValid = false;
            }
                      
            //validate date field
            const dateVal = date.value.trim();
            if (!dateVal) {
            	dateError.textContent = 'Date is required';
                isValid = false;
            }
            
            // If all fields are valid, submit the form
            if (isValid) {
                this.submit();
            }
        });
        
    </script>
 
</body>
</html>
