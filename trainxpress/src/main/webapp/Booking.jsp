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
        	background-color: rgba(255, 255, 255, 0.2);
		    backdrop-filter: blur(10px); 
		}
        .modal-content {
        /* 	background-image: url('form_1.jpg'); */
       		background: white;  
	        background-size: cover;
	        background-position: center;
	        background-repeat: no-repeat;
            padding: 30px;
            border-radius: 10px;
            width: 30%;
            position: relative;
            opacity: 0;
            transform: translateY(-50px);
            transition: opacity 0.3s ease-in-out, transform 0.3s ease-in-out;
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
        .row {
            display: flex;
            gap: 50px;
        }
        .col1{
            flex: 1;
        	display: flex;
    		flex-direction: column;
   			gap: 20px; 
        }
        .col2{
        	flex: 1;
        	display: flex;
    		flex-direction: column;
   			gap: 20px; 
   			margin-right: 10px;
		}
        .form-control {
       		background: transparent;
            width: 70%;
            padding: 8px;
            border: none;
            border-bottom: 1px solid black;
            border-radius: 5px;
            font-size: 16px;	
            margin-left: 50px;
            margin-bottom: 20px;
        }
        .modal-content button {
            width: 30%;
            background: lightgreen;
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
		h2{
			color: green;
			
		}
		.page-list{
			list-style-type: none;
			float: none;
		}
		.shedule{
  			border-collapse: collapse;
 			width: 100%;
		}
		.shedule td, .shedule th{
			border: 1px solid #ddd;
  			padding: 8px;
		}
		.shedule tr:nth-child(even){
			background-color: #C6EDC3;
		}
	
		.shedule tr:hover {
			background-color: white;
		}

		.shedule th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: center;
			background-color: green;
			color: white;
		}
		.contactinfo{
			font-size: 18px;
		}
		.table{
			margin-left: 50px;
			margin-right: 50px;
			margin-bottom: 20px;
		}	
		.table-title{
			text-align: center;
		}
		hr {
		    border: 0;
		    height: 1px;
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
                <button class="home-btn">Home Page 🏠</button>
                <button class="book-btn" onclick="showBookingForm()">Book Now ❇️</button>
            </div>
        </div>
    </section>
    
    <div class="page-content">
    
    	<div class="text-area1">
    		<h2 class="page-title">About Us</h2>
    		<br>
			<p>	
				Welcome to RailXpress, your one-stop destination for hassle-free train ticket booking!<br> 
            	We are dedicated to making railway travel easier, faster, and more convenient for everyone. <br> 
                With our user-friendly platform, you can search, book, and manage your train tickets effortlessly. <br> 
                Whether you're planning a business trip, a family vacation, or a daily commute, <br> 
                we ensure a seamless booking experience with real-time availability, secure payment <br>options, and instant ticket confirmations.
            </p>
            <br><br>
            <h2 class="page-title">Why Choose Us?</h2>
            <br>
     		<ul class="page-list">
     			<li>🟩Easy & Fast Booking</li>
     			<li>🟩Real-Time Seat Availability</li>
     			<li>🟩Secure Payments</li>
     			<li>🟩24/7 Customer Support</li>
     			<li>🟩Eco-Friendly</li>
     		</ul>
     		<br>
    	</div>
    	
     	<div class="text-area2">
	     	<p class="contactinfo"> 📧support.@RailXpress.me</p>
	     	<p class="contactinfo">	📬EH Cooray Building, No.24: 5th Floor, E.H.Cooray Tower, B535, Matara</p>
	     	<p class="contactinfo">	🌐www.RailXpress.com</p>
     	</div>
    </div>
    
    <div class="table">
    	<h2 class="table-title">Train Shedule</h2>
    	<br>
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
            <h2 class="form-title" style="text-align:center; padding:20px; color: green; -webkit-text-stroke: 1px white; text-stroke: 2px green;">Enter Booking Details</h2>
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
	                        
	            <button type="submit">Confirm</button>
	         </form>
	         
        </div>
    </div>
    
	 <script src="${pageContext.request.contextPath}/JS/ticketCrud/TicketFormValidation.js"></script>
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
        
    </script>
 
</body>
</html>
