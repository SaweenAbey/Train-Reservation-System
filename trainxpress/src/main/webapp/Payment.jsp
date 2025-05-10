<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Payment page</title>
		<style>
			.page-content{
				display: flex;
				flex-wrap: nowrap;	
				border: none;
				width: 51%;	
				height: 75%;
				margin-top: 20px;
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
			.price{
				margin: 0px;
				padding: 0px;
				
			}
			.total{
				margin: 0px;
				padding: 0px;
				color: green;
			}
		</style>
	</head>
	
	<body>
		<c:import url="header.jsp" />
		<br><br>
		 <div class="page-content">
		 	<div class="content-area1">
		 		<h2 style="color: green;">Make Your Payment...</h2><br>
		 		
		 		<label class="total-amount">Bill Amount: Rs.</label> 
		 		<input type="text" class="price" name="price" id="price" disabled> <br><br>
		 		
		 		
		 		<form method="POST" action="addPayment" id="paymentForm">
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









