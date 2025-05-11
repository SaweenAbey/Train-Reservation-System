<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Payment page</title>
		<style>
			body{
				margin: 0px;
				padding: 0px;
				height: 100%;
	            display: flex;
	            flex-direction: column;
			}
			.page-content{
				display: flex;
				flex-wrap: nowrap;	
				border: none;
				width: 51%;	
				height: 800px;
				margin-top: 100px;
				margin-left: 400px;	
				margin-bottom: 100px;	
				box-shadow: 0 0 15px rgba(0, 0, 0, 0.2); 
				border-radius: 15px; 
			}
			.form-control{
				margin-bottom:15px;
				padding:5px;
				border: none;
				border-bottom: 1px solid black;
				border-radius: 5px;
				width: 90%;
			}
			.content-area1{
				flex:1;
				padding:20px;
				width:360px;
				
			}
			.content-area2{
				flex:1;
				border-top-right-radius: 15px;
				border-bottom-right-radius: 15px;
				padding: 0px;
				margin: 0px;
			}
			.content-area2 img{  
				position: relative;  
				width: 100%;
  				height: 100%;
  			    border-top-right-radius: 15px; 
  			   	border-bottom-right-radius: 12px; 
 				overflow: hidden;
			}
			.expiry-cvc-container {
			    display: flex;
			    justify-content: space-between;
			    width: 90%;
			    margin-bottom: 0px;
			}

			.expiry-field, .cvc-field {
   				 width: 47%;
			}

			#exp, #cvc {
    			width: 100%;
			}
			#terms-check{
				margin-bottom: 10px;
				margin-top: 10px;
			}
			h2{
				padding:10px;
				text-align:center;
			}
			input:focus {
 			 	outline: none;
  				box-shadow: 5px 5px 3px lightgray;
  				border-bottom: 2px solid gray;
			}
			.submit-btn{
				margin-top: 40px;
	            padding: 10px 20px;
	            border: none;
	            cursor: pointer;
	            font-size: 16px;
	            border-radius: 5px;
	        	box-shadow: 5px 5px 3px lightgray;
	        	background: #C6EDC3;
			}
			.pay-btn{
				margin-top: 40px;
	            padding: 10px 20px;
	            border: none;
	            cursor: pointer;
	            font-size: 16px;
	            border-radius: 5px;
	        	box-shadow: 5px 5px 3px lightgray;
	        	background: #C6EDC3;
				margin-left:10px;
			}
			
			input[type="checkbox"] {
				accent-color: #4CAF50;
				cursor: pointer;
				border: none;	
			}
			.terms-link {
 				color: #4CAF50;
  				text-decoration: none;
			}
			button:disabled {
  				cursor: not-allowed;
  				color: black;
			}
			.error{
				margin-top: -15px;
				margin-left: 0px;
				padding: 10px;
				color: red;
				font-size: 12px;
				text-align: left;
			}
			  /* GREEN THEME STYLES */
  			.total-amount {
			    font-size: 18px;
			    font-weight: 600; /* Semi-bold */
			    color: #1f7a4d; /* Dark green */
			    margin-right: 10px;
			    font-family: 'Segoe UI', sans-serif;
  			}

			  .price{
			  	border: none;
			  	background-color: #ebf8f2;
			  }
			
			  /* Container enhancement */
			  .price-group {
			    background-color: #ebf8f2; /* Very light green */
			    padding: 10px;
			    border-radius: 10px;
			    margin: 5px;
			    border-left: 5px solid #38a169; /* Vibrant green accent */
			    display: inline-block;
			  }
		</style>
	</head>
	
	<body>
		<c:import url="header.jsp" />
		
		 <div class="page-content">
		 	<div class="content-area1">
		 		<h2 style="color: green;">Make Your Payment...</h2><br>
		 		<c:set var="price" value="${price}"/>
		 		
		 		
		 		
		 		<form method="POST" action="addPayment" id="paymentForm">
		 			<div class="price-group">
		 				<label class="total-amount">Bill Amount ➜ Rs.</label> 
			 			<input type="text" class="price" name="price" id="price" disabled value="${price}"> <br><br>
		 			</div>
			 		
			 		
		 			<label>Name on Card:</label><span id="nameError" class="error"></span> <br>
		 			<input type="text" class="form-control" name="name" id="name"> <br>
		 			
		 			
		 			<label>Card Number:</label><span id="cardnoError" class="error"></span><br>
		 			<input type="text" class="form-control" name="cardno" id="cardno"> <br>
		 			
		 			
			 		<div class="expiry-cvc-container">
					    <div class="expiry-field">
					        <label>Expiry:</label><span id="expError" class="error"></span><br>
					        <input type="month" class="form-control" id="exp" name="exp" id="exp">
					        
					        
					    </div>
					    <div class="cvc-field">
					        <label>CVC:</label> <span id="cvcError" class="error"></span><br>
					        <input type="text" class="form-control" id="cvc" name="cvc" id="cvc">
					       
					        
				   		</div>
					</div>
		 			
		 			<label>E-mail:</label><span id="emailError" class="error"></span> <br>
		 			<input type="email" class="form-control" name="email" id="email"> <br>
		 			
		 			<input type="checkbox" id="terms-check" name="terms" required>
  					<label>I agree to the <a href="#####" target="_blank" class="terms-link">terms and conditions</a></label><br>
  					<input type="checkbox" id="updates" name="updates">
  					<label>I wish to receive email updates</label><br>
  					
	            	<button type="submit" class="submit-btn" id="saveCardBtn" disabled>Save Card & Pay</button>
	            	<button type="button" class="pay-btn" id="payBtn" disabled>Pay</button>
	           		
		 		</form>
		 		
		 	</div>
		 	<div class="content-area2">
		 		<img src="CSS/PaymentCrud/payment_1.jpg" alt="payment-image">
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
		
		
		
		<script src="${pageContext.request.contextPath}/JS/paymentCrud/PaymentFormValidation.js"></script>
		<script>
			document.addEventListener('DOMContentLoaded', function() {
			  const termsCheckbox = document.getElementById('terms-check');
			  const saveCardBtn = document.getElementById('saveCardBtn');
			  const payBtn = document.getElementById('payBtn');

			  // Add event listener to checkbox
			  termsCheckbox.addEventListener('change', function() {
			    // Enable/disable buttons based on checkbox state
			    saveCardBtn.disabled = !this.checked;
			    payBtn.disabled = !this.checked;
			  });
			});
			
			
		</script>
	</body>
</html>









