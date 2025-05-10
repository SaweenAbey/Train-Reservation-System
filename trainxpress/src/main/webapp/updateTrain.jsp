<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RailXpress - Train Update</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background-color: #ffffff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 400px;
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555555;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            font-size: 14px;
        }
        .form-group input:focus {
            border-color: #007bff;
            outline: none;
        }
        .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        .form-group button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Update Train Details</h2>
        <form action="Tupdate" method="post">
        		<input type="hidden" name="tid" value="${param.tid }">
            <div class="form-group">
                <label for="trainName">Train Name</label>
                <input type="text" id="trainName" name="tname" value="${param.tname }">
            </div>
            <div class="form-group">
                <label for="engineNum">Engine Number</label>
                <input type="text" id="engineNum" name="tenginenum"  value="${param.tenginenum }">
            </div>
            <div class="form-group">
                <label for="type">Type</label>
                <input type="text" id="type" name="ttype" value="${param.ttype }">
            </div>
            <div class="form-group">
                <label for="seatCount">Seat Count</label>
                <input type="text" id="seatCount" name="tseatcount" value="${param.tseatcount }">
            </div>
            <div class="form-group">
                <label for="wagons">Number of Wagons</label>
                <input type="text" id="wagons" name="tnoofwagons" value="${param.tnoofwagons }">
            </div>
            <div class="form-group">
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>