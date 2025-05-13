<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Payment Update</title>
  <style>
    * {
      font-family: 'Segoe UI', sans-serif;
    }

    body {
      margin: 0;
      padding: 0;
      height: 100vh;
 	  background-repeat: no-repeat;
  	  background-size: cover;
  /*    background-image: url('homecont/gallery-1.jpg');	 */
    }

    .container {
      backdrop-filter: blur(12px);
      background-color: rgba(255, 255, 255, 0.4);
   /*   background-color: white; */
      border-radius: 16px;
      padding: 30px;
      margin-bottom: 50px;
      margin-top: 50px;
      margin-left: 280px;
      display: flex;
      gap: 30px;
      width: 1000px;
      height: auto; 
      box-shadow: 0 0 20px rgba(0,0,0,0.3);
      position: relative;
      
    }

    .form-section {
      flex: 1;
    }

    .form-section h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #030303;
    }

    .form-section U {
      color: #0a8e1e;
      text-decoration: underline;
      text-decoration-color: #0a8e1e;
      text-decoration-thickness: 7px;
      text-underline-offset: 4px;
    }

    .form-group {
      margin-bottom: 18px;
      position: relative;
    }

    .form-group label {
      display: block;
      color: #030000;
      margin: 0px;
      font-size: 15px;
    }
    .form-control{
    	border: none;
    	border-bottom: 1px solid black;
    	width: 100%;
      	padding: 10px;
      	border-radius: 8px;
      	margin-top: 10px;
    }
    .buttons {   
      justify-items: center;
      align-items: center;
      margin-top: 0px;
      margin-left: 110px;
    }

    .buttons button {
      padding: 10px 20px;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      background-color: #0a8e1e;
      color: white;
      transition: 0.3s;
      margin-left: 10px;
      margin-right: 10px;
    }

    .buttons button:hover {
      background-color: #115c22;
    }

    .image-section {
      flex: 1;
    }

    .image-section img {
      margin-top: 50px;
      width: 100%;
      height: auto;
      border-radius: 12px;
    }
    input[readonly] {
   	  background-color: #f5f5f5;
      border: 1px dashed red;
      color: #666;
      cursor: not-allowed;
	}
	input:focus {
 	  outline: none;
  	  border-bottom: 2px solid gray;
	}
	.error{
		margin: 0px;
		padding: 0px;
		color: red;
		font-size: 10px;
		text-align: left;
		font-weight: bold;
	}
	.non-editable-note {
		color: red;
		font-size: 0.8em;
		font-style: italic;
		font-weight: bold;
	}
  </style>
</head>
<body>
<%@ include file="header.jsp" %>
<br><br>
  <div class="container">
    <div class="form-section">
      <U><h2>Update Payment Details</h2></U>
      <form action="UpdatePayment" method="post" id="paymentForm">
	      <div class="form-group">
	      	<label>Payment Id:<span class="non-editable-note"> (*editing restricted)</span>:</label>
 			<input type="number" class="form-control" name="pid" value="${param.pid}" readonly>
	       
	      </div>
	      
	      <div class="form-group">
	     	<label>Name on Card:</label><span id="nameError" class="error"></span>
	 		<input type="text" class="form-control" name="name" value="${param.name}" id="name">  
	      </div>
	      
	      <div class="form-group">
	        <label>Card Number:</label><span id="cardnoError" class="error"></span>
			<input type="text" class="form-control" name="cardNo" value="${param.cardNo}" id="cardno">
	      </div>
	      
	      <div class="form-group">
	      <label>Expiry:</label><span id="expError" class="error"></span>
 			<input type="month" class="form-control" name="exp" value="${param.exp}" id="exp">
	      </div>
	      
	      <div class="form-group">
	        <label>CVC:</label><span id="cvcError" class="error"></span>
 			<input type="number" class="form-control" name="cvc" value="${param.cvc}" id="cvc">
	      
	      </div>
	      
	      <div class="form-group">
	      	<label>Email:</label><span id="emailError" class="error"></span>
 			<input type="email" class="form-control" name="email" value="${param.email}" id="email">
 	      
	      </div>
	      
	      <div class="form-group">
	      	<!--    <label>CID<span class="non-editable-note"> (*editing restricted)</span>:</label>     -->	 
			<input type="hidden" class="form-control" name="cid" value="${param.cid}" readonly>
	      </div>
			
		  <div class="buttons">
		  	<button type="submit">Update</button>
	        <button type="button" onclick="window.location.href='UserDashboard'">Back</button>
	      </div>
	    </div>
	    
	    <div class="image-section">
	      <img src="CSS/www.jpeg" alt="Train Registration">
	      
	    </div>
   </form>
  </div>
  
  
  <div class="container4" style="background-color: #16A34A;">
    <footer style="text-align:center; padding: 20px; font-family: Inter; color:#ffffff;display:flex;justify-content: space-between;">
        <a href="index.jsp" class="home-link"><!--<img src="LOGO.png" alt="Logo">--> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
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
  
		//Form validation
		document.getElementById('paymentForm').addEventListener('submit', function(event) {
	      // Prevent form submission
	      event.preventDefault();
	      
	      // Get all input fields
	      const name = document.getElementById('name');
	      const cardno = document.getElementById('cardno');
	      const exp = document.getElementById('exp');
	      const cvc = document.getElementById('cvc');
	      const email = document.getElementById('email');
	      
	      // Get all error spans
	      const nameError = document.getElementById('nameError');
	      const cardnoError = document.getElementById('cardnoError');
	      const expError = document.getElementById('expError');
	      const cvcError = document.getElementById('cvcError');
	      const emailError = document.getElementById('emailError');
	      
	      // Reset error messages
	      nameError.textContent = '';
	      cardnoError.textContent = '';
	      expError.textContent = '';
	      cvcError.textContent = '';
	      emailError.textContent= '';
	      
	      let isValid = true;
	      
	      // Validate name field
			const nameVal = name.value.trim();
	      if (!nameVal) {
	          nameError.textContent = 'Name is required';
	          isValid = false;
	      }
		  else if (!/^[A-Za-z]+(?:\s[A-Za-z]+)*$/.test(nameVal)){
			  nameError.textContent = 'Only letters allowed'
			  isValid = false;	
		  }
	      
	      //validate cardno field
	      const cardnoVal = cardno.value.replace(/\s/g, '');
	      if (!cardnoVal) {
	          cardnoError.textContent = 'Card number is required';
	          isValid = false;
	      }
	      else if(!/^\d{13,19}$/.test(cardnoVal)){
	      	  cardnoError.textContent = 'Invalid card number (13-19 digits)';
	          isValid = false;
	      }
	      
	      //validate expiry field
	      const expVal = exp.value.trim();
	      if (!expVal) {
	          expError.textContent = 'Expiry is required';
	          isValid = false;
	      }
	   	
	      //validate cvc field
	      const cvcVal = cvc.value.trim();
	      if (!cvcVal) {
	          cvcError.textContent = 'CVC is required';
	          isValid = false;
	      }
	      else if (!/^\d{3,4}$/.test(cvcVal)) {
	          cvcError.textContent = 'Must be 3-4 digits';
	          isValid = false;
	      }
	      
	      //validate email field
	      const emailVal = email.value.trim();
	      if (!emailVal) {
	          emailError.textContent= 'Email is required';
	          isValid = false;
	      }
	      else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(emailVal)) {
	          emailError.textContent = 'Invalid email format';
	          isValid = false;
	      }  
	      
	      // If all fields are valid, submit the form
	      if (isValid) {
			  alert('Update successful..!'); 
	          this.submit();
	      }
	  });
		
	  
  </script>
  
  
</body>
</html>
