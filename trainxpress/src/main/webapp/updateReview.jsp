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
      <U><h2>Update Review </h2></U>
      <form action="ReviewUpdate" method="post" id="reviewForm">
	      <div class="form-group">
	      	<label>Review ID<span class="non-editable-note"> (*editing restricted)</span>:</label>
 			<input type="number" class="form-control" name="reviewId" value="${param.reviewId}" readonly>
	       
	      </div>
	      
	      <div class="form-group">
	     	<label>Message:</label><span id="msgError" class="error"></span>
	 		<input type="text" class="form-control" name="message" value="${param.message}" id="message">  
	      </div>
	      
	      <div class="form-group">
	        <label>Rating:</label><span id="ratingError" class="error"></span>
			<input type="number" class="form-control" name="rating" value="${param.rating}" id="rating">
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
  			const msg=document.getElementById("message");
  			const rating=document.getElementById("rating");
  			
  			const msgError=document.getElementById("msgError");
  			const ratingError=document.getElementById("ratingError");
  			
  			var validity1="true";
  			var validity2="true";
  			
  			msg.addEventListener("input",function(){
  				if(msg.value.trim()===""){
  					msgError.textContent="Message is Required.";
  					msg.style='border:solid red 3px'
  						validity1="false";
  				}else{
  					validity1="true";
  					msgError.textContent="";
  					msg.style='border:solid greenyellow 3px';
  				}
  			})
  			rating.addEventListener("input",function(){
  				if(rating.value.trim()===""){
  					ratingError.textContent="Rating is Required.";
  					rating.style='border:solid red 3px'
  						validity2="false";
  				}else if(rating.value>5||rating.value<=0){
  					ratingError.textContent="Rating should be between 1 and 5.";
  					rating.style='border:solid red 3px'
  						validity2="false";
  				}
  				else{
  					validity2="true";
  					ratingError.textContent="";
  					rating.style='border:solid greenyellow 3px';
  				}
  			})
  			
  			document.getElementById("reviewForm").addEventListener("submit",function(event){
  				if(validity1=="false"||validity2=="false"){
  					event.preventDefault(); 
  				    alert("Please correct the errors before submitting.");
  					
  				}
  			})
  </script>
  
</body>
</html>



