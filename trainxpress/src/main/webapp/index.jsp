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
    <title>TrainXpress</title>
<%@ include file="header.jsp" %>
</head>

<body>

    <div id="scroll-indicator"></div>
    <section class="showcase">
        <header>
          <h2 class="logo">Welcome to TrainXpress..</h2>
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
          <li><a href="#"><i class="ri-github-fill"></i></a></li>
          <li><a href="#"><i class="ri-youtube-fill"></i></a></li>
          
        </ul>
        
        <!-- Search Tab -->
        
        <div class="search-tab">
            <form  action="SearchTrout" method="post">
                <input type="text" id="from" name="tfrom"placeholder="From" required>
                <input type="text" id="to" name="tto"placeholder="To" required>
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
                        <a href="routeDetail.html" class="card-btn">View Details</a>
                    </div>
                </div>
                <div class="Route-card">
                    <img src="homecont/pexels-chathura-anuradha-subasinghe-599124-12781427.jpg" alt="Colombo">
                    <div class="card-cont">
                        <h1>Colombo</h1>
                        <p>Colombo to Beliatta</p>
                        <a href="routeDetail.html" class="card-btn">View Details</a>
                    </div>
                </div>
                <div class="Route-card">
                    <img src="homecont/pexels-kseniya-buraya-124360874-10610919.jpg" alt="Mirissa">
                    <div class="card-cont">
                        <h1>Mirissa</h1>
                        <p>Mirissa to Kandy</p>
                        <a href="routeDetail.html" class="card-btn">View Details</a>
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
    <div class="container4" style="background-color: #16A34A;">
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
    <script src="./homecont/script.js"></script>
</body>
</html>