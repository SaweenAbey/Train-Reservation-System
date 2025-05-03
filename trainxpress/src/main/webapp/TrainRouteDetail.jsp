<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./CSS/Routetable.css">
<link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
<meta charset="UTF-8">
<title>Train Details </title>
</head>
<body>
    <h3>Route Details</h3>
    <!-- From Uiverse.io by adamgiebl --> 
<div class="button-container">
        <a href="RrouteReg.jsp">
            <button class="cssbuttons-io-button">
                <i class="ri-user-add-line"></i> Reg New Route
            </button>
        </a>
    </div>
    
    <div class="container">
        <table id="routeTable">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Starting Station</th>
                    <th>Ending Station</th>
                    <th>Departure time</th>
                    <th>Arrive Price</th>
                    <th>Ticket Price</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="allTrout" items="${allRoute}" >
                <tr>
                    <td>${allTrout.rid}</td>
                    <td>${allTrout.sstation}</td>
                    <td>${allTrout.estation}</td>
                    <td>${allTrout.depTime}</td>
                    <td>${allTrout.arrTime}</td>
                    <td>${allTrout.tprice}</td>
                    <td>
                        <div class="action-buttons">
                            <form action="Routeupdate.jsp" method="post" style="display: inline;">
                                <input type="hidden" name="rid" value="${allTrout.rid}">
                                <input type="hidden" name="sstation" value="${allTrout.sstation}">
                                <input type="hidden" name="estation" value="${allTrout.estation}">
                                <input type="hidden" name="depTime" value="${allTrout.depTime}">
                                <input type="hidden" name="arrTime" value="${allTrout.arrTime}">
                                <input type="hidden" name="tprice" value="${allTrout.tprice}">
                                <button type="submit" class="action-button update-button">
                                    <i class="ri-file-edit-line"></i> Update
                                </button>
                            </form>
                            <form action="deleteTroute" method="post" style="display: inline;">
                                <input type="hidden" name="rid" value="${allTrout.rid}">
                                <button type="submit" class="action-button delete-button">
                                    <i class="ri-delete-bin-2-line"></i> Delete
                                </button>
                            </form>
                        </div>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        <div id="pagination" class="pagination"></div>
    </div>
    <script src="./CSS/pagination.js"></script>
</body>
</html>