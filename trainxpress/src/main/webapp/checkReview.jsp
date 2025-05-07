<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Review</title>
    <link
    href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
	<style>
            @import url('https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap');
			*{
			    margin: 0;
			    padding: 0;
			    box-sizing: border-box;
                font-family: inter;
			}
			html, body {
			  height: 100vh;
			}
			
			.navbar {
                font-family: inter;
                display: flex;
                justify-content: space-between;  
                background-color: #388e3c;
                height: 60px;
            }

            .navbar a {
            display: flex;
            align-items: center;
            height: 100%;
            padding: 0 20px;
            color: white;
            text-decoration: none;
            }

            .home-link {
                color: white;
                text-decoration: none;
                padding: 0 15px;
                height: 100%;
                display: flex;
                align-items: center;
            }

            .home-link:hover {
            background-color: #292929 ;
            }

            /* Nav right section */
            .nav-right {
            display: flex;
            align-items: center;
            gap: 10px;
            }

            .nav-right a {
            color: white;
            text-decoration: none;
            padding: 0 10px;
            height: 100%;
            display: flex;
            align-items: center;
            }

            .nav-right a:hover {
            background-color: #292929;
            }

            .btn {
            padding: 8px 14px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            border-radius: 4px;
            }

            .login-btn {
            background-color: #007bff;
            color: white;
            }

            .signup-btn {
            background-color: #007bff;
            color: white;
            }

            .login-btn:hover {
            background-color: #0056b3;
            }

            .signup-btn:hover {
            background-color: #0056b3;
            }

            /* Responsive Styles */
            @media (max-width: 768px) {
            .nav-right {
                flex-direction: column;
                gap: 5px;
                width: 100%;
                align-items: flex-start;
                padding-top: 10px;
            }
            }
           
            .maincontainer{
                display:flex;
                height:100vh;
                flex-wrap: wrap;
                padding:0;
                background-color: #ebfff24a;
                
            }
            .submaincontainers, .submaincontainers1{
                width:100%;
               
            }
            .submaincontainers1{
                display:flex;
                justify-content: center;
                align-items: center;
                padding:40px;
                gap:10px;
            }
            
            .submaincontainers1 .imgdiv{
              background-image: url(CSS/ReviewCss/Review.jpg);
              width:809px;
              height:370px;
              background-size: cover;
              border-radius: 8px;
            }
            .submaincontainers1 .title{
              
              display:flex;
              flex-direction: column;
              align-items: center;
              justify-content: center;
              background-color: #ffffff;
              height:50px;
              width:809px;
              height:200px;
              border-radius: 10px;
              line-height: 25px;
              
            }
            .submaincontainers1 .title h3{
                font-size: 25px;
            }
            .submaincontainers1 .title p{
                font-size: 18px;
            }
            .submaincontainers2{
                display:flex;
                justify-content: center;
                align-items: center;
                padding:40px;
                gap:10px;
            }
            form{
                padding:10px;
                display:flex;
                flex-direction: column;
                gap:8px;
            }
            form input,option,textarea,select{
                height:40px;
            }
            form label{
                font-family: Inter;
                font-weight: 500;
                line-height: 30px;;
            }
            #submitbtn{
               background-color: #16A34A;
               border:none;
               border-radius: 8px;
               flex-shrink: 0;
               margin-top: 10px;;
            }
            
     
            .review-slider {
            position: relative;
            max-width: 100%;
            margin: auto;
            overflow: hidden;
            }

            .review-container {
            display: flex;
            transition: transform 0.5s ease-in-out;
            }

            .review-card {
            min-width: 100%;
            box-sizing: border-box;
            padding: 20px;
            text-align: center;
            }

            .review-card img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            }

            .review-content {
            margin-top: 10px;
            }

            .stars {
            color: gold;
            margin: 10px 0;
            }
      
        
 
	</style>
    
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
                        <input type="text" id="name">
                        <label for="message">Message:</label>
                        <textarea id="message">Message Goes Here</textarea>
                        <label for="rating">Ratings:</label>
                            <select name="rating" id="rating">
                                <option value="1">1-VeryPoor</option>
                                <option value="2">2-Poor</option>
                                <option value="3">3-Average</option>
                                <option value="4">3-Very Good</option>
                                <option value="5">3-Excellent</option>
                            </select>
                        <input type="button" id="submitbtn" name="submit" value="Submit" >
                    </form>
                </div>
                <div class="review-slider">
                    <div class="review-container">
                        <div class="review-card">
                            <img src="CSS/ReviewCss/re (1).jpg" alt="User 1">
                            <div class="review-content">
                                <h3>Sandeep</h3>
                                <div class="stars">
                                    &#9733;&#9733;&#9733;&#9733;&#9734;
                                </div>
                                <p>Great experience! Highly recommend.</p>
                            </div>
                        </div>
                        <div class="review-card">
                            <img src="CSS/ReviewCss/re (1).jpg" alt="User 2">
                            <div class="review-content">
                                <h3>Sadeepa</h3>
                                <div class="stars">
                                    &#9733;&#9733;&#9733;&#9733;&#9733;
                                </div>
                                <p>Amazing service and beautiful places.</p>
                            </div>
                        </div>
                        <div class="review-card">
                            <img src="CSS/ReviewCss/re (1).jpg" alt="User 3">
                            <div class="review-content">
                                <h3>Wasika</h3>
                                <div class="stars">
                                    &#9733;&#9733;&#9733;&#9733;&#9732;
                                </div>
                                <p>Had a wonderful time, will come back again!</p>
                            </div>
                        </div>
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
      
       <script src="JS/script.js"></script>


</body>
</html>