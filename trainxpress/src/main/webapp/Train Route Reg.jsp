<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Train Route - Registration</title>
  <style>
   * {
      box-sizing: border-box;
      font-family: 'Segoe UI', sans-serif;
    }

    body {
      margin: 0;
      padding: 0;
      height: 100vh;
 
      background-image: url('homecont/gallery-1.jpg'); 
      background-repeat: no-repeat;
  	  background-size: cover;
      	  
    }

    .container {
      backdrop-filter: blur(12px);
      background-color: rgba(255, 255, 255, 0.5);
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
  </style>
</head>
<body>
<%@ include file="header.jsp" %>
<br><br>
  <div class="container">
    <div class="form-section">
      <U><h2>Train Route - Registration</h2></U>
      <form action="RegRoute" method="post">
	      <div class="form-group">
	        <label for="start">Start Station</label>
	        <input type="text" id="start" name="sstation" placeholder="Enter Start Station" onkeyup="validateName()">
	        <div id="name-error" class="error"></div>
	      </div>
	      <div class="form-group">
	        <label for="end">End Station</label>
	        <input type="text" id="end" name="estation" placeholder="Enter End Station" onkeyup="validateEName()">
	        <div id="ename-error" class="error"></div>
	      </div>
	      <div class="form-group">
	        <label for="arrival">Arrival Time <i>(24 hrs)</i></label>
	        <input type="text" id="arrival" name="arrTime" placeholder="HH:MM" onkeyup="validateTimes()">
	        <div id="Atime-error" class="error"></div>
	      </div>
	      <div class="form-group">
	        <label for="departure">Departure Time <i>(24 hrs)</i></label>
	        <input type="text" id="departure" name="depTime" placeholder="HH:MM" onkeyup="validateDTimes()">
	        <div id="Dtme-error" class="error"></div>
	      </div>
	      <div class="form-group">
	        <label for="price">Ticket Price</label>
	        <input type="number" id="price" name="tprice" placeholder="Enter Ticket Price" min="25" onkeyup="validateTicket()">
	        <div id="Ticket-error" class="error"></div>
	      </div>
	      <div class="form-group">
	        <label for="Train Id">Train ID</label>
	        <input type="number" id="tid" name="tname"placeholder="Train Id">
	        <div id="Ticket-error" class="error"></div>
	      </div>
	    </div>
	    <div class="image-section">
	      <img src="Formcont/www.jpeg" alt="Train Registration">
	      <div class="buttons">
	        <button type="button">Back</button>
	        <button type="submit">Register</button>
	      </div>
	    </div>
   </form>
  </div>
  <script src="Formcont/validate.js"></script>
</body>
</html>
