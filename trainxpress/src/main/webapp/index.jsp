<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./homecont/styles.css">

    <link
    href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <title>Travel Express</title>
</head>
<body>
    <div id="scroll-indicator"></div>
    <section class="showcase">
        <header>
          <h2 class="logo">Welcome Travel Express ..</h2>
        </header>
        <video src="./homecont/video.mp4" muted loop autoplay></video>
        <div class="overlay"></div>
        <div class="text">
          <h2>Never Stop To </h2> 
          <h3>Exploring The World</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
          consequat.</p>
          <a href="#">Explore</a>
        </div>
        <ul class="social">
          <li><a href="#"><i class="ri-facebook-circle-fill"></i></a></li>
          <li><a href="#"><i class="ri-github-fill"></i></li>
          <li><a href="#"><i class="ri-youtube-fill"></i></li>
        </ul>
        <!-- Search Tab -->
        <div class="search-tab">
            <form id="searchForm">
                <input type="text" id="from" placeholder="From" required>
                <input type="text" id="to" placeholder="To" required>
                <button type="submit">View Details</button>
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
                    <h3 class="heading">xxxxxxx</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit excepturi accusamus minus
                    totam </p>
                    <a href="#">Read More ></a>
                    <span class="date">xxxxxxx</span>
                    <span class="circle"></span>
                </li>
                <li>
                    <h3 class="heading">xxxxxxx</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit excepturi accusamus minus
                    totam </p>
                    <a href="#">Read More ></a>
                    <span class="date">xxxxxxx</span>
                    <span class="circle"></span>
                </li>
                <li>
                    <h3 class="heading">xxxxxxx</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit excepturi accusamus minus
                    totam </p>
                    <a href="#">Read More ></a>
                    <span class="date">xxxxxxx</span>
                    <span class="circle"></span>
                </li>
                <li>
                    <h3 class="heading">xxxxxxxr</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit excepturi accusamus minus
                    totam </p>
                    <a href="#">Read More ></a>
                    <span class="date">xxxxxxx</span>
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
                <div class="review-card">
                    <img src="homecont/re (1).jpg" alt="User 1">
                    <div class="review-content">
                        <h3>Sandeep</h3>
                        <div class="stars">
                            &#9733;&#9733;&#9733;&#9733;&#9734;
                        </div>
                        <p>Great experience! Highly recommend.</p>
                    </div>
                </div>
                <div class="review-card">
                    <img src="homecont/re (2).jpg" alt="User 2">
                    <div class="review-content">
                        <h3>Sadeepa</h3>
                        <div class="stars">
                            &#9733;&#9733;&#9733;&#9733;&#9733;
                        </div>
                        <p>Amazing service and beautiful places.</p>
                    </div>
                </div>
                <div class="review-card">
                    <img src="homecont/re (3).jpg" alt="User 3">
                    <div class="review-content">
                        <h3>Wasika</h3>
                        <div class="stars">
                            &#9733;&#9733;&#9733;&#9733;&#9732;
                        </div>
                        <p>Had a wonderful time, will come back again!</p>
                    </div>
                </div>
            </div>
            <button class="next" onclick="moveReviewSlide(1)"><i class="ri-arrow-right-circle-fill"></i></button>
        </div>
    </div>
    <footer>
        <div class="footer-container">
            <div class="footer-section about">
                <h2>About Us</h2>
                <p>Travel Express is your go-to platform for booking train tickets and exploring the best routes and services. We aim to provide a seamless and enjoyable travel experience for all our passengers.</p>
            </div>
            <div class="footer-section links">
                <h2>Quick Links</h2>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Routes</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>
            <div class="footer-section contact">
                <h2>Contact Us</h2>
                <ul>
                    <li><i class="ri-map-pin-line"></i> 123 Travel Express Lane, City, Country</li>
                    <li><i class="ri-phone-line"></i> +123 456 7890</li>
                    <li><i class="ri-mail-line"></i> info@travelexpress.com</li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2025 Travel Express. All rights reserved.</p>
        </div>
    </footer>
    <script src="./homecont/script.js"></script>
</body>
</html>