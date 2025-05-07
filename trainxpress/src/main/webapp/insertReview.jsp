<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Review</title>
    <link
    href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <link href="CSS/ReviewCss/reviewCss.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar">
        <a href="#" class="home-link"><!--<img src="LOGO.png" alt="Logo">--> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
            <path d="M18 3.39996H6C4.89543 3.39996 4 4.29539 4 5.39996V17.4C4 18.5045 4.89543 19.4 6 19.4H18C19.1046 19.4 20 18.5045 20 17.4V5.39996C20 4.29539 19.1046 3.39996 18 3.39996Z" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M4 11.4H20" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M12 3.39996V11.4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M8 19.4L6 22.4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M18 22.4L16 19.4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M8 15.4H8.01" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M16 15.4H16.01" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>RailXpress</a>
        
        <div class="nav-right">
          <a href="#">About</a>
          <a href="#">Services</a>
          <a href="#">Contact</a>
          <a href="#">Review</a>
          <button class="btn login-btn">Login</button>
          <button class="btn signup-btn" style="margin-right:8px">Sign Up</button>
        </div>
      </nav>
    
      <div class="maincontainer">
            <div class="submaincontainers1">
                
                <div class="title">
                    <h3>Tell us how we did — your review makes a difference!</h3>
                    <P>Your insights guide us toward creating the best possible experience.</P>
                </div>
                <div class="imgdiv"></div>
            </div>
                
            <div class="submaincontainers2">
               
                
                <div style="width:692px;max-height:350px ;padding:20px;background-color: #ffffff; ">
                    
                    <form action="insertReview" method="POST">
                        <h3>Add Review</h3>
                        <label for="name">Name:</label>
                        <input type="text" id="name" name="name">
                        <label for="message">Message:</label>
                        <textarea id="message" name="message">Message Goes Here</textarea>
                        <label for="rating">Ratings:</label>
                            <select name="rating" name="rating" id="rating">
                                <option value="1">1-VeryPoor</option>
                                <option value="2">2-Poor</option>
                                <option value="3">3-Average</option>
                                <option value="4">4-Very Good</option>
                                <option value="5">5-Excellent</option>
                            </select>
                        <input type="submit" id="submitbtn" name="submit" value="Submit" >
                    </form>
                </div>
                <div class="review-slider">
                    <div class="review-container">
		                  <% int count=0; %>
			            <c:forEach var="rev" items="${review}">
			                <div class="review-card">
			                    <img src="homecont/re (<%=++count %>).jpg" alt="User 1">
			                    <div class="review-content">
			                        <h3>${rev.name}</h3>
			                        <div class="stars">
			                            <c:choose>
						                    <c:when test="${rev.rating == 1}">
						                        &#9733;&#9734;&#9734;&#9734;&#9734;
						                    </c:when>
						                    <c:when test="${rev.rating == 2}">
						                        &#9733;&#9733;&#9734;&#9734;&#9734;
						                    </c:when>
						                    <c:when test="${rev.rating == 3}">
						                        &#9733;&#9733;&#9733;&#9734;&#9734;
						                    </c:when>
						                      <c:when test="${rev.rating == 4}">
				                       			 &#9733;&#9733;&#9733;&#9733;&#9734;
						                    </c:when>
						                    <c:otherwise>
						                        &#9733;&#9733;&#9733;&#9733;&#9733;
						                    </c:otherwise>
						                </c:choose>
			                        </div>
			                        <p>${rev.message}</p>
			                    </div>
			                </div>
			                <% if(count==3){count=0;} %>
			             </c:forEach>
                    </div>
                    
                </div>
            </div>
            
           

            <div class="submaincontainers">
                <div class="footer" style="background-color: #16A34A;">
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
            </div>
            
       
       
        
      </div>
	<script src="JS/reviewJs/script.js"></script>

</body>
</html>