<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Inquiry Status</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f9f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #333;
        }
        
        .container {
            width: 90%;
            max-width: 500px;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border: 1px solid #d4edda;
            text-align: center;
        }
        
        h1 {
            color: #2e7d32;
            margin-bottom: 25px;
            font-size: 24px;
            padding-bottom: 10px;
            border-bottom: 1px solid #e8f5e9;
        }
        
        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #2e7d32;
        }
        
        input[type="email"],
        input[type="text"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #c8e6c9;
            border-radius: 4px;
            font-size: 14px;
            box-sizing: border-box;
        }
        
        input[type="email"]:focus,
        input[type="text"]:focus,
        select:focus {
            border-color: #4caf50;
            outline: none;
            box-shadow: 0 0 0 2px rgba(76, 175, 80, 0.2);
        }
        
        .btn {
            background-color: #4caf50;
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-weight: bold;
            margin-top: 10px;
            transition: background-color 0.3s;
        }
        
        .btn:hover {
            background-color: #3e8e41;
        }
        
        .status-indicator {
            display: inline-block;
            padding: 3px 10px;
            border-radius: 12px;
            font-size: 12px;
            font-weight: bold;
            margin-left: 8px;
        }
        
        .status-pending {
            background-color: #ff9800;
            color: white;
        }
        
        .status-solved {
            background-color: #4caf50;
            color: white;
        }
    </style>
</head>
<body>
<%@ include file="header.jsp" %>
<br><br>
    <div class="container">
        <h1>Update Inquiry Status</h1>
        
        <form method="post" action="InquiryUpdate">
            <input type="hidden" name="inqid" value="${param.inqid}">
            
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" value="${param.email}" readonly>
            </div>
            
            <div class="form-group">
                <label for="message">Inquiry Message</label>
                <input type="text" id="message" name="message" value="${param.message}" readonly>
            </div>
            
            <div class="form-group">
                <label for="status">Current Status: 
                    <span class="status-indicator status-${param.status eq 'Solved' ? 'solved' : 'pending'}">
                        ${param.status}
                    </span>
                </label>
                <select id="status" name="status" required>
                    <option value="Pending" ${param.status == 'Pending' ? 'selected' : ''}>Pending</option>
                    <option value="Solved" ${param.status == 'Solved' ? 'selected' : ''}>Solved</option>
                </select>
            </div>
            
            <button type="submit" class="btn">Update Status</button>
        </form>
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
    
</body>
</html>