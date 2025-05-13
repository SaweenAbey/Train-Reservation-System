<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Payment Update</title>
  <style>
    * {
      box-sizing: border-box;
      font-family: 'Segoe UI', sans-serif;
    }

    body {
      margin: 0;
      padding: 0;
      height: 100vh;
 
       background-image: url('CSS/DriverCrudCss/driverUpdate.jpg');
      background-repeat: no-repeat;
  	  background-size: cover;
      	  
    }
	
    .container {
      backdrop-filter: blur(12px);
      background-color: rgba(255, 255, 255, 0.5);
       
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
      font-size: 18px;
    }

    .form-group input {
      width: 100%;
      padding: 10px;
      border-radius: 8px;
      margin-top: 10px;
      border: 1px solid black;
      outline: none;
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
	.error{
		margin: 0px;
		padding: 0px;
		color: red;
		font-size: 12px;
		text-align: left;
	}
	.non-editable-note {
		color: red;
		font-size: 0.8em;
		font-style: italic;
	}
  </style>
</head>
<body>
<%@ include file="header.jsp" %>
<br><br>

  <div class="container">
    <div class="form-section">
      <U><h2>Update Payment Details</h2></U>
      <form action="DriverUpdate" method="post" id="driverform">
	      <div class="form-group">
	      	<label>Driver ID<span class="non-editable-note"> (*editing restricted)</span>:</label>
 			<input type="number" class="form-control" name="driverId" value="${param.driverId}" readonly>
	       
	      </div>
	      
	      <div class="form-group">
	     	<label>First Name:</label><span id="fnameError" class="error"></span>
	 		<input type="text" class="form-control" name="fname" value="${param.fname}" id="firstname">  
	      </div>
	      
	      <div class="form-group">
	        <label>Last Name:</label><span id="lnameError" class="error"></span>
			<input type="text" class="form-control" name="lname" value="${param.lname}" id="lastname">
	      </div>
	      
	      <div class="form-group">
	      <label>Address:</label><span id="addressError" class="error"></span>
 			<input type="text" class="form-control" name="address" value="${param.address}" id="d_address">
	      </div>
	      
	      <div class="form-group">
	        <label>LicenseNum:</label><span id="licenseError" class="error"></span>
 			<input type="text" class="form-control" name="licenseNum" value="${param.licenseNum}" id="lnum">
	      
	      </div>
	      
	      <div class="form-group">
	      	<label>Telephone Num:</label><span id="telnumError" class="error"></span>
 			<input type="text" class="form-control" name="telephone" value="${param.telNo}" id="telnum">
 	      
	      </div>
	      
	      <div class="form-group">
	      		 
			<label>Age:</label><span id="ageError" class="error"></span>
			<input type="number" class="form-control" name="age" value="${param.age}" id="d_age">
	      </div>
			
		  <div class="buttons">
		  	<button type="submit">Update</button>
	        <button type="button" onclick="window.location.href='admindashboard'">Back</button>
	      </div>
	    </div>
	    
	    <div class="image-section">
	      <img src="CSS/www.jpeg" alt="Train Registration">
	      
	    </div>
   </form>
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
  		
  			const fname=document.getElementById("firstname");
  			const lname=document.getElementById("lastname");
  			const address=document.getElementById("d_address");
  			const licenseNum=document.getElementById("lnum");
  			const telNum=document.getElementById("telnum");
  			const age=document.getElementById("d_age");
  			
  			const fnameError=document.getElementById("fnameError");
  			const lnameError=document.getElementById("lnameError");
  			const addressError=document.getElementById("addressError");
  			const licenseError=document.getElementById("licenseError");
  			const telnumError=document.getElementById("telnumError");
  			const ageError=document.getElementById("ageError");
  			
  			var validity1="true";
  			var validity2="true";
  			var validity3="true";
  			var validity4="true";
  			var validity5="true";
  			var validity6="true";
  			fname.addEventListener("input",function(){
  				if(fname.value.trim()===""){
  					fnameError.textContent="First Name is Required.";
  					fname.style='border:solid red 3px'
  						validity1="false";
  				}else{
  					validity1="true";
  					fnameError.textContent="";
  					fname.style='border:solid greenyellow 3px';
  				}
  				
  				
  			});
  			
  			lname.addEventListener("input",function(){
  				
  				if(lname.value.trim()===""){
  					lnameError.textContent="Last Name is Required.";
  					lname.style='border:solid red 3px'
  						validity2="false";
  				}else{
  					lnameError.textContent="";
  					lname.style='border:solid greenyellow 3px';
  						validity2="true";
  				}
  			})
  			address.addEventListener("input",function(){
  				
  				if(address.value.trim()===""){
  					addressError.textContent="Address is Required.";
  					address.style='border:solid red 3px'
  						validity3="false";
  				}else{
  					addressError.textContent="";
  					address.style='border:solid greenyellow 3px'
  						validity3="true";
  				}
  			})
  			const licensePattern = /^B\d{9}$/;
  			licenseNum.addEventListener("input",function(){
  				
  				if(licenseNum.value.trim()===""){
  					licenseError.textContent="License Num is Required.";
  					licenseNum.style='border:solid red 3px';
  					validity4="false";
  				}else if(!licensePattern.test(licenseNum.value.trim())){
  					licenseError.textContent="License number must start with 'B' followed by 9 digits.";
  					licenseNum.style='border:solid red 3px';
  					validity4="false";
  				}
  				else{
  					validity4="true"
  					licenseError.textContent="";
  					licenseNum.style='border:solid greenyellow 3px';
  				}
  			})
 
  			const phonePattern = /^[0-9]{10}$/;
  			
  			telNum.addEventListener("input",function(){
  				if(telNum.value.trim()===""){
  					telnumError.textContent="Telephone Num is Required.";
  					telNum.style='border:solid red 3px';
  					validity5="false";
  				}else if(!phonePattern.test(telNum.value.trim())){
  					telnumError.textContent="Telephone number must start with '0' followed by 9 digits.";
  					telNum.style='border:solid red 3px';
  					validity5="false";
  				}
  				else{
  					validity5="true"
  					telnumError.textContent="";
  					telNum.style='border:solid greenyellow 3px';
  				}
  			})
  			
  			age.addEventListener("input",function(){
  				if(age.value.trim()==""){
  					ageError.textContent="Age is Required.";
  					age.style='border:solid red 3px';
  					validity6="false";
  				}
  				else if(age.value.trim()<=18 || age.value.trim()>55){
  					ageError.textContent="Age must be greater than 18 and below 56";
  					age.style='border:solid red 3px';
  					validity6="false";
  				}
  				else{
  					validity6="true"
  					ageError.textContent="";
  					age.style='border:solid greenyellow 3px';
  				}
  			})
  			
  			document.getElementById("driverform").addEventListener("submit",function(event){
  				if(validity1=="false"||validity2=="false" || validity3=="false" || validity4=="false"||validity5=="false"||validity6=="false"){
  					event.preventDefault(); 
  				    alert("Please correct the errors before submitting.");
  					
  				}
  				else{
  					alert("Update Successfull");
  				}
  			})
  			
  </script>
</body>
</html>