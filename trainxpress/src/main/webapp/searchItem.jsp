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
    </div>
    <script src="./CSS/pagination.js"></script>
</body>
</html>