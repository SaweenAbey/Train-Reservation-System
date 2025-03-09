<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> Train Registration </title>
  <link rel="stylesheet" href="./CSS/train/Style.css">
</head>
<body>
  <div class="container">
    <div class="title">Train -Route Registration</div>
    <div class="content">

      <form action="#">
        <div class="user-details">

          <div class="input-box">
            <span class="details">Starting Location</span>
            <input type="text" placeholder="Enter Train Staring Point"  name="Strtpoint" required>
          </div>

          <div class="input-box">
            <span class="details">Ending Location</span>
            <input type="text" placeholder="Enter Train Ending Point" name="Endpoint" required>
          </div>

          <div class="input-box">
            <span class="details">Depart - Time </span>
            <input type="text" placeholder="Enter Train Depart time" name="Deptime"required>
          </div>
          <div class="input-box">
            <span class="details">Arrive - Time </span>
            <input type="text" placeholder="Enter Train Arrive time" name="Arrivetime"required>
          </div>
          <div class="input-box">
            <span class="details"> Price </span>
            <input type="text" placeholder="Enter Train Ticket" name="Price" required>
          </div>
        </div>
        <div class="button">
          <input type="submit" value="Register">
        </div>
      </form>
    </div>
  </div>
</body>
</html>