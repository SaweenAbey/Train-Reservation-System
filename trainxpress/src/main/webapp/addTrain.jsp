<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add New Train</title>
  <style>
    * {
      box-sizing: border-box;
      font-family: 'Segoe UI', sans-serif;
    }

    body {
      margin: 0;
      padding: 0;
      height: 100vh;
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

    .form-group input, .form-group select {
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
      <U><h2>Add New Train</h2></U>
      <form action="AddTrain" method="post" id="trainForm">
        
        <div class="form-group">
          <label>Train Name:</label><span id="tnameError" class="error"></span>
          <input type="text" class="form-control" name="tname" id="trainName">
        </div>
        
        <div class="form-group">
          <label>Engine Number:</label><span id="engineNumError" class="error"></span>
          <input type="text" class="form-control" name="tenginenum" id="engineNum">
        </div>
        
        <div class="form-group">
          <label>Type:</label><span id="typeError" class="error"></span>
          <select class="form-control" name="ttype" id="trainType">
            <option value="">-- Select Type --</option>
            <option value="Normal">Normal</option>
            <option value="Express">Express</option>
          </select>
        </div>
        
        <div class="form-group">
          <label>Seat Count:</label><span id="seatCountError" class="error"></span>
          <input type="number" class="form-control" name="tseatcount" id="seatCount">
        </div>
        
        <div class="form-group">
          <label>Number of Wagons:</label><span id="wagonsError" class="error"></span>
          <input type="number" class="form-control" name="noofwagons" id="noOfWagons">
        </div>
        
        <div class="buttons">
          <button type="submit">Submit</button>
           <button type="button" class="back-button" onclick="window.location.href='admindashboard'">← Back</button>
        </div>
      </form>
    </div>
    
    <div class="image-section">
      <img src="CSS/TrainCrudCss/TrainDP.jpeg" alt="Train Registration">
    </div>
  </div>
  
  
  <div class="container4" style="background-color: #16A34A;">
    <footer style="text-align:center; padding: 20px; font-family: Inter; color:#ffffff;display:flex;justify-content: space-between;">
        <a href="index" class="home-link"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
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
    const trainName = document.getElementById("trainName");
    const engineNum = document.getElementById("engineNum");
    const trainType = document.getElementById("trainType");
    const seatCount = document.getElementById("seatCount");
    const noOfWagons = document.getElementById("noOfWagons");
    
    const tnameError = document.getElementById("tnameError");
    const engineNumError = document.getElementById("engineNumError");
    const typeError = document.getElementById("typeError");
    const seatCountError = document.getElementById("seatCountError");
    const wagonsError = document.getElementById("wagonsError");
    
    let validity1 = true;
    let validity2 = true;
    let validity3 = true;
    let validity4 = true;
    let validity5 = true;
    
    // Train Name validation
    trainName.addEventListener("input", function() {
      if (trainName.value.trim() === "") {
        tnameError.textContent = "Train Name is required.";
        trainName.style.border = "solid red 3px";
        validity1 = false;
      } else {
        tnameError.textContent = "";
        trainName.style.border = "solid greenyellow 3px";
        validity1 = true;
      }
    });
    
    // Engine Number validation
    const engineNumPattern = /^[A-Za-z0-9]{6,12}$/;
    engineNum.addEventListener("input", function() {
      if (engineNum.value.trim() === "") {
        engineNumError.textContent = "Engine Number is required.";
        engineNum.style.border = "solid red 3px";
        validity2 = false;
      } else if (!engineNumPattern.test(engineNum.value.trim())) {
        engineNumError.textContent = "Engine Number must be 6-12 alphanumeric characters.";
        engineNum.style.border = "solid red 3px";
        validity2 = false;
      } else {
        engineNumError.textContent = "";
        engineNum.style.border = "solid greenyellow 3px";
        validity2 = true;
      }
    });
    
    // Train Type validation
    trainType.addEventListener("change", function() {
      if (trainType.value === "") {
        typeError.textContent = "Train Type is required.";
        trainType.style.border = "solid red 3px";
        validity3 = false;
      } else {
        typeError.textContent = "";
        trainType.style.border = "solid greenyellow 3px";
        validity3 = true;
      }
    });
    
    // Seat Count validation
    seatCount.addEventListener("input", function() {
      if (seatCount.value.trim() === "") {
        seatCountError.textContent = "Seat Count is required.";
        seatCount.style.border = "solid red 3px";
        validity4 = false;
      } else if (parseInt(seatCount.value) <= 0) {
        seatCountError.textContent = "Seat Count must be greater than 0.";
        seatCount.style.border = "solid red 3px";
        validity4 = false;
      } else {
        seatCountError.textContent = "";
        seatCount.style.border = "solid greenyellow 3px";
        validity4 = true;
      }
    });
    
    // Number of Wagons validation
    noOfWagons.addEventListener("input", function() {
      if (noOfWagons.value.trim() === "") {
        wagonsError.textContent = "Number of Wagons is required.";
        noOfWagons.style.border = "solid red 3px";
        validity5 = false;
      } else if (parseInt(noOfWagons.value) <= 0) {
        wagonsError.textContent = "Number of Wagons must be greater than 0.";
        noOfWagons.style.border = "solid red 3px";
        validity5 = false;
      } else {
        wagonsError.textContent = "";
        noOfWagons.style.border = "solid greenyellow 3px";
        validity5 = true;
      }
    });
    
    // Form submission validation
    document.getElementById("trainForm").addEventListener("submit", function(event) {
      // Force to trigger all validation
      trainName.dispatchEvent(new Event("input"));
      engineNum.dispatchEvent(new Event("input"));
      trainType.dispatchEvent(new Event("change"));
      seatCount.dispatchEvent(new Event("input"));
      noOfWagons.dispatchEvent(new Event("input"));
      
      if (!validity1 || !validity2 || !validity3 || !validity4 || !validity5) {
        event.preventDefault();
        alert("Please correct the errors before submitting.");
      }
    });
  </script>
</body>
</html>