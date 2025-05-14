<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./CSS/Routetable.css">
<meta charset="UTF-8">
<title>Train Details </title>
</head>
<body>
		<c:import url="header.jsp" />
    <h3>Route details</h3>
    
    <div class="container">
        <table id="routeTable">
            <thead>
                <tr>
                    <th>Starting Station</th>
                    <th>Ending Station</th>
                    <th>Departure time</th>
                    <th>Arrive Price</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="alsearch" items="${allT}" >
                <tr>
                    <td>${alsearch.sstation}</td>
                    <td>${alsearch.estation}</td>
                    <td>${alsearch.depTime}</td>
                    <td>${alsearch.arrTime}</td>

                </tr>
                </c:forEach>
            </tbody>
        </table>
        <div id="pagination" class="pagination"></div>
        
		<div class="container4" style="background-color: #16A34A; margin-top:590px;" >
		    <footer style="text-align:center; padding: 20px; font-family: Inter; color:#ffffff;display:flex;justify-content: space-between;">
		        <a href="index" class="home-link"><!--<img src="LOGO.png" alt="Logo">--> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
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
    </div>

    <script src="./CSS/pagination.js"></script>
</body>
</html>