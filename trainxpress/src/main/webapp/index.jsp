<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./homecont/styles.css">

    <link
    href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <title>RailXpress</title>
<%@ include file="header.jsp" %>
</head>

<body>

    <div id="scroll-indicator"></div>
    <section class="showcase">
        <header>
          <h2 class="logo">Welcome to RailXpress..</h2>
        </header>
        <video src="./homecont/video.mp4" muted loop autoplay></video>
        <div class="overlay"></div>
        <div class="text">
          <h2>Never Stop To </h2> 
          <h3>Exploring The World</h3>
          <p>Plan your journey, reserve your seats, and explore Sri Lanka with comfort and convenience. 
          RailXpress brings you a modern, reliable, and hassle-free online train reservation experience—anywhere, anytime.</p>
          <a href="Booking">Book Ticket</a>
        </div>
        <ul class="social">
        
          <li><a href="#"><i class="ri-facebook-circle-fill"></i></a></li>
          <li><a href="https://github.com/SaweenAbey/Train-Reservation-System"><i class="ri-github-fill"></i></a></li>
          <li><a href="#"><i class="ri-youtube-fill"></i></a></li>
          
        </ul>
        
        <!-- Search Tab -->
        
        <div class="search-tab">
            <form  action="SearchTrout" method="post">
                <input type="text" id="from" name="tfrom"placeholder="From" required>
                <input type="text" id="to" name="tto"placeholder="To" required>
                <button type="submit" id="btn">View Details</button>
            </form>
        </div>
    </section>

    <div class="testimonials">
        <div class="inner">
            <h1>Popular Route</h1> 
            <div class="border"></div>
            <div class="card">
                <div class="Route-card">
                    <img src="homecont/pexels-roman-odintsov-4555320.jpg" alt="Hatton">
                    <div class="card-cont">
                        <h1>Hatton</h1>
                        <p>Hatton to Kandy</p>
                        <a href="route-infofont.jsp" class="card-btn">View Details</a>
                    </div>
                </div>
                <div class="Route-card">
                    <img src="homecont/pexels-chathura-anuradha-subasinghe-599124-12781427.jpg" alt="Colombo">
                    <div class="card-cont">
                        <h1>Colombo</h1>
                        <p>Colombo to Beliatta</p>
                        <a href="route-infofont.jsp" class="card-btn">View Details</a>
                    </div>
                </div>
                <div class="Route-card">
                    <img src="homecont/pexels-kseniya-buraya-124360874-10610919.jpg" alt="Mirissa">
                    <div class="card-cont">
                        <h1>Mirissa</h1>
                        <p>Mirissa to Kandy</p>
                        <a href="route-infofont.jsp" class="card-btn">View Details</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="testimonials">     
        <div class="inner">
          <h1>Our Services</h1>
          <div class="border"></div>
    <div class="cont_t">
        <div class="cont">
            <ul>
                <li>
                    <h3 class="heading">Personalized Service</h3>
                    <p>Experience a journey where every detail is tailor-made for you. Onboard are attentive staff ready to cater to your preferences. 
                        We ensure that your journey is as unique and comfortable as possible. Enjoy an exclusive travel experience where your comfort and satisfaction are our top priorities.</p>
                    <a href="#">Read More ></a>
                    <span class="circle"></span>
                </li>
                <li>
                    <h3 class="heading">Magnificent Scenery</h3>
                    <p>Prepare to be captivated by breathtaking views as you travel through the Tsavo National Park. Our route is designed to showcase stunning scenery, and every window offers exciting views. </p>
                    <a href="#">Read More ></a>
                    <span class="circle"></span>
                </li>
                <li>
                    <h3 class="heading">Destination</h3>
                    <p>Embark on a voyage that takes you to a diverse range of destinations,
                        each offering its own charm and allure. Our extensive network of routes
                        covers Jaffna,Nuwara Eliya,Ella,Colombo,Mirissa,Galle,Hatton,
                        Trincomalee, and Kaluthara. Our train provides an expansive journey across
                        a wide array of locations, making every trip a new adventure.</p>
                    <a href="#">Read More ></a>
                    <span class="circle"></span>
                </li>
                <li>
                    <h3 class="heading">Enjoy Special Moments</h3>
                    <p>Delight in splendid moments that transform your journey into a memorable
                        experience. Whether it's an exceptional meal or celebrating a birthday or
                        anniversary, aboard the TrailXpress, you can enjoy the little things
                        that truly make every moment unforgettable. </p>
                    <a href="#">Read More ></a>
                    <span class="circle"></span>
                </li>
            </ul>
        </div>
        </div>
        </div>
    </div>
    <div class="testimonials">
        <div class="inner">
            <h1>Best of Memory</h1>
            <div class="border"></div>
        </div>
        <div class="card-slider">
            <div class="slider-container">
                <div class="small-box" onclick="showSlide(0)">
                    <img src="homecont/pic (1).jpg" alt="Image 1">
                </div>
                <div class="small-box" onclick="showSlide(1)">
                    <img src="homecont/pic (2).jpg" alt="Image 2">
                </div>
                <div class="small-box" onclick="showSlide(2)">
                    <img src="homecont/pic (4).jpg" alt="Image 3">
                </div>
            </div>
            <div class="main-display">
                <img id="main-image" src="homecont/pic (4).jpg" alt="Main Image">
                <div class="main-content">
                    <h3 id="main-title">Nine Arch Bridge</h3>
                    <p id="main-description"> Demodara, between Ella and Demodara railway stations.</p>
                </div>
            </div>
        </div>
    </div>
    <div class="testimonials">    
        <div class="inner">
          <h1>Passenger Feedback</h1>
          <div class="border"></div>
        </div>
        <div class="review-slider">
            <button class="prev" onclick="moveReviewSlide(-1)"><i class="ri-arrow-left-circle-fill"></i></button>
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
            <button class="next" onclick="moveReviewSlide(1)"><i class="ri-arrow-right-circle-fill"></i></button>
        </div>
    </div>
     <footer>
        <div class="container">
            <div class="footer-content">
            	<div class="footer-column">
                    <h3>RailXpress</h3>
                    <p>Your trusted partner for comfortable and reliable train travel across the country.</p>
                </div>
                <div class="footer-column">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="index">Home</a></li>
                        <li><a href="TrainList">Trains</a></li>
                        <li><a href="Booking">Bookings</a></li>
                        <li><a href="ContactUs.jsp">Contact</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Support</h3>
                    <ul>
                        <li><a href="Terms@cont.jsp">FAQs</a></li>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="Terms@cont.jsp">Terms & Conditions</a></li>
                        <li><a href="RefundPolicy.jsp">Refund Policy</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Contact Us</h3>
                    <ul>
                        <li><i class="fas fa-map-marker-alt"></i>EH Cooray Building, No.24: 5th Floor, E.H.Cooray Tower, B535, Matara</li>
                        <li><i class="fas fa-phone"></i> (+94)0704596989</li>
                        <li><i class="fas fa-envelope"></i> supporto@railxpress.me</li>
                    </ul>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2025 RailXpress. All rights reserved.</p>
            </div>
        </div>
    </footer>
    <script src="./homecont/script.js"></script>
</body>
</html>