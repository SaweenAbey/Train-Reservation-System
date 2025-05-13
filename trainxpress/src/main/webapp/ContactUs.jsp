<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
	<style>
            @import url('https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap');
			* {
		        margin: 0;
		        padding: 0;
		        box-sizing: border-box;
		        font-family: 'Poppins', sans-serif;
		    }
		
		    html, body {
		        height: 100%;
		    }
		
		    .navbar {
		        font-family: 'Inter', sans-serif;
		        display: flex;
		        justify-content: space-between;
		        background-color: rgba(56, 142, 60);
		        height: 60px;
		        position: absolute; 
		        top: 0;
		        left: 0;
		        width: 100%;
		        z-index: 1000;
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
		
		    .homelink {
		        color: white;
		        text-decoration: none;
		        padding: 0 15px;
		        height: 100%;
		        display: flex;
		        align-items: center;
		    }
		
		    .homelink:hover {
		        background-color: #292929;
		    }
		
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
		
		    .login-btn:hover, .signup-btn:hover {
		        background-color: #0056b3;
		    }
		
		    @media (max-width: 768px) {
		        .nav-right {
		            flex-direction: column;
		            gap: 5px;
		            width: 100%;
		            align-items: flex-start;
		            padding-top: 10px;
		        }
		    }

            /*MainConten CSS*/
            .maincontainer{
                font-family: inter;
                height: 75%;
                padding:2% 15% 0 15%;
                display:flex;
                flex-direction:column;
                
                gap: 48px;
            }
            .maincontainerSub{
                font-family: inter;
                height: 75%;
               /* padding:2% 15% 2% 15%;*/
                display:flex;
                flex-direction:column;
                
                gap: 48px;
            }
            .container1{
                text-align: center;
                display:flex;
                flex-direction: column;
               
            }
            #title{
                color: #111827;
                text-align: center;
                font-family: Inter;
                font-size: 30.6px;
                font-style: normal;
                font-weight: 700;
                line-height: 40px; /* 130.719% */
            }
            #titleContent{
                color: #4B5563;
                text-align: center;
                font-family: Inter;
                font-size: 15.3px;
                font-style: normal;
                font-weight: 400;
                line-height: 28px; /* 183.007% */
            }

            .container2{
                
                display:flex;
                justify-content: space-between;
            }
            .icons{
                display:flex;
                justify-content: center;
                align-items: center;
                width: 48px;
                height:48px;
                border-radius: 999px;
                background-color: #DCFCE7;;
            }
            .container2subs{
                background-color: white;
                justify-content: center;
                display:flex;
                flex-direction: column;
                align-items: center;
                /*border: solid rgba(0, 0, 0, 0.614);*/
                border-radius: 10px;
                width: 309.325px;
                height: 196px;
                flex-shrink: 0;
            }
            .subdivtitiles{
                color: #111827;
                text-align: center;
                font-family: Inter;
                font-size: 15.3px;
                font-style: normal;
                font-weight: 600;
                line-height: 28px; /* 183.007% */
            }
            .subdivtitilesLINE1{
                color: #16A34A;
                text-align: center;
                font-family: Inter;
                font-size: 13.6px;
                font-weight: 500;
                line-height: 50px; 
            }
            .subdivtitilesLINE2{
                color: #6d6d6d;
                text-align: center;
                font-family: Inter;
                font-size: 13.6px;
                font-weight: 400;
                line-height: 10px; 
            }
            .container3{
                display:flex;
                background-color: white;
                width:100%;
                margin-bottom: 100px;
                
            }
            .formsection ,.BusinessSection{
                
                width:50%;
                padding:5% 5%;
            }
            .formsection form ,.BusinessSection{
                display:flex;
                flex-direction: column;
                gap:15px;
            }
            .container3mainHeader{
                color: #111827;
                font-family: Inter;
                font-size: 20.4px;
                font-style: normal;
                font-weight: 600;
                line-height: 32px; /* 156.863% */
            }
            .container3headers{
                color: #374151;
                font-family: Inter;
                font-size: 11.9px;
                font-style: normal;
                font-weight: 500;
                line-height: 20px; /* 168.067% */
            }
            #submitbtn{
               background-color: #16A34A;
               border:none;
               border-radius: 8px;
               flex-shrink: 0;
            }
            input{
                height:32px;
            }
            .BusinessSection{
                
            }
            .businessSub{
                display:flex;
                flex-direction: column;
                gap:30px;
            }
            .DayRange{
                display:flex;
                align-items: flex-start;
                gap:3px
            }
            .day{
                color: #111827;
                font-family: Inter;
                font-size: 13.6px;
                font-style: normal;
                font-weight: 500;
                line-height: 24px; /* 176.471% */  
            }
            .time{
                color: #4B5563;
                font-family: Inter;
                font-size: 13.6px;
                font-style: normal;
                font-weight: 400;
                line-height: 24px; /* 176.471% */
            }
           
            @media (max-width: 768px) {
                .container3 {
                    flex-direction: column;
                }
                .formsection, .BusinessSection {
                    width: 100%;
                    padding: 5%;
                }
            }   

	</style>
</head>
<body>
	<nav class="navbar">
        <a href="index" class="homelink"><!--<img src="LOGO.png" alt="Logo">--> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
            <path d="M18 3.39996H6C4.89543 3.39996 4 4.29539 4 5.39996V17.4C4 18.5045 4.89543 19.4 6 19.4H18C19.1046 19.4 20 18.5045 20 17.4V5.39996C20 4.29539 19.1046 3.39996 18 3.39996Z" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M4 11.4H20" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M12 3.39996V11.4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M8 19.4L6 22.4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M18 22.4L16 19.4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M8 15.4H8.01" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M16 15.4H16.01" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>RailXpress</a>
        
        <div class="nav-right">
          <a href="Booking">Booking</a>
            <a href="insertReview">Review</a>
            <a href="ContactUs.jsp">Contact</a>
            
            <% 
            if (session != null && session.getAttribute("cid") != null && (int) session.getAttribute("cid") != 0 && session.getAttribute("id")==null) {%>
            	 
	            <a href="UserDashboard">Dashboard</a>
	            
	            <button class="btn login-btn" onclick="location.href='LogOut'">LogOut</button>
            <%}else{%>
			            <% 
			            if (session != null && session.getAttribute("id") != null && (int) session.getAttribute("id") != 0 && session.getAttribute("cid")==null) {%>
			            	 
				            <a href="admindashboard">Dashboard</a>

				            <button class="btn login-btn" onclick="location.href='LogOut'">LogOut</button>
			            <%}else{%>
			            <button class="btn login-btn" onclick="location.href='login.jsp'">Login</button><%} }%>
        </div>
      </nav>
    <div style="display: flex;flex-direction: column;">
    <div class="maincontainer">
        <div class="container1"><br><br>
            <label id="title">Get in Touch</label><br>
            <label id="titleContent">Have questions about our train booking services? We're here to help and would love <br>
                to hear from you.</label>
        </div>
    
        <div class="container2">
            
            <div class="container2subs">
                <div class="icons">
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25" fill="none">
                    <path d="M22.6625 17.32V20.32C22.6636 20.5985 22.6066 20.8741 22.495 21.1293C22.3834 21.3845 22.2198 21.6136 22.0146 21.8018C21.8094 21.9901 21.5671 22.1335 21.3032 22.2227C21.0394 22.3119 20.7599 22.345 20.4825 22.32C17.4053 21.9856 14.4495 20.9341 11.8525 19.25C9.43633 17.7146 7.38784 15.6661 5.8525 13.25C4.16248 10.6412 3.11074 7.67096 2.7825 4.57997C2.75751 4.30344 2.79038 4.02473 2.879 3.76159C2.96763 3.49846 3.11007 3.25666 3.29727 3.05159C3.48446 2.84652 3.71231 2.68268 3.96629 2.57049C4.22028 2.4583 4.49484 2.40023 4.7725 2.39997H7.7725C8.25781 2.39519 8.72829 2.56705 9.09626 2.8835C9.46423 3.19996 9.70458 3.63942 9.7725 4.11997C9.89912 5.08004 10.134 6.0227 10.4725 6.92997C10.607 7.28789 10.6362 7.67688 10.5564 8.05085C10.4767 8.42481 10.2914 8.76808 10.0225 9.03997L8.7525 10.31C10.1761 12.8135 12.249 14.8864 14.7525 16.31L16.0225 15.04C16.2944 14.7711 16.6377 14.5858 17.0116 14.5061C17.3856 14.4263 17.7746 14.4554 18.1325 14.59C19.0398 14.9285 19.9824 15.1633 20.9425 15.29C21.4283 15.3585 21.8719 15.6032 22.189 15.9775C22.5062 16.3518 22.6747 16.8295 22.6625 17.32Z" stroke="#16A34A" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </div>
               <label class="subdivtitiles">    Call Us   </label>
               <label class="subdivtitilesLINE1">(+94)070 3376901</label>
               <label class="subdivtitilesLINE2">Mon-Sun from 8am to 5pm</label>
            </div>
            <div class="container2subs">
                <div class="icons">
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25" fill="none">
                        <path d="M20.9875 4.39996H4.98749C3.88292 4.39996 2.98749 5.29539 2.98749 6.39996V18.4C2.98749 19.5045 3.88292 20.4 4.98749 20.4H20.9875C22.0921 20.4 22.9875 19.5045 22.9875 18.4V6.39996C22.9875 5.29539 22.0921 4.39996 20.9875 4.39996Z" stroke="#16A34A" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M22.9875 7.39996L14.0175 13.1C13.7088 13.2934 13.3518 13.396 12.9875 13.396C12.6232 13.396 12.2662 13.2934 11.9575 13.1L2.98749 7.39996" stroke="#16A34A" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </div>
                
                <label class="subdivtitiles">    Email Us</label>
                <label class="subdivtitilesLINE1">support@railxpress@gmail.lk</label>
                <label class="subdivtitilesLINE2">We'll respond within 24 hours</label>
            </div>
            <div class="container2subs">
                <div class="icons">
                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25" fill="none">
                        <path d="M20.325 10.4C20.325 15.393 14.786 20.593 12.926 22.199C12.7527 22.3293 12.5418 22.3997 12.325 22.3997C12.1082 22.3997 11.8973 22.3293 11.724 22.199C9.86401 20.593 4.32501 15.393 4.32501 10.4C4.32501 8.27823 5.16787 6.2434 6.66816 4.74311C8.16845 3.24282 10.2033 2.39996 12.325 2.39996C14.4467 2.39996 16.4816 3.24282 17.9819 4.74311C19.4822 6.2434 20.325 8.27823 20.325 10.4Z" stroke="#16A34A" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M12.325 13.4C13.9819 13.4 15.325 12.0568 15.325 10.4C15.325 8.74311 13.9819 7.39996 12.325 7.39996C10.6682 7.39996 9.32501 8.74311 9.32501 10.4C9.32501 12.0568 10.6682 13.4 12.325 13.4Z" stroke="#16A34A" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                </div>
                <label class="subdivtitiles">    Visit Us   </label>
                <label class="subdivtitilesLINE1">SLIIT</label>
                <label class="subdivtitilesLINE2">Galle Road,Matara</label>
            </div>
        </div>
        <div class="container3">
            <div class="formsection">
                <form method="post" action="AddInquiry">
                    <label class="container3mainHeader">Send us a Message</label>
                    <label for="email" class="container3headers">Email</label>
                    <input type="email" id="email" name="email">
                    <label for="msg" class="container3headers">Message</label>
                    <textarea style="height:130px;" id="msg" name="message"></textarea>
                    <label class="container3mainHeader"></label>
                    <input type="submit" id="submitbtn" name="submit" value="Submit">
                </form>
            </div>

            <div class="BusinessSection">
                <label class="container3mainHeader">Business Hours</label>
                <div class="businessSub">
                    <label class="DayRange">
                        <span><svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21" fill="none">
                            <g clip-path="url(#clip0_1_97)">
                            <path d="M10.8 18.7333C15.4024 18.7333 19.1333 15.0023 19.1333 10.4C19.1333 5.79759 15.4024 2.06663 10.8 2.06663C6.19762 2.06663 2.46666 5.79759 2.46666 10.4C2.46666 15.0023 6.19762 18.7333 10.8 18.7333Z" stroke="#16A34A" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M10.8 5.39996V10.4L14.1333 12.0666" stroke="#16A34A" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </g>
                            <defs>
                            <clipPath id="clip0_1_97">
                            <rect width="20" height="20" fill="white" transform="translate(0.799988 0.399963)"/>
                            </clipPath>
                            </defs>
                            </svg></span>
                            <label style="display:flex;flex-direction: column;gap:2px;">
                                <label class="day">Monday-Friday</label>
                                <label class="time">9:00 AM - 6:00 PM</label>
                            </label>
                            

                    </label>
                    <label class="DayRange">
                        <span><svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21" fill="none">
                            <g clip-path="url(#clip0_1_97)">
                            <path d="M10.8 18.7333C15.4024 18.7333 19.1333 15.0023 19.1333 10.4C19.1333 5.79759 15.4024 2.06663 10.8 2.06663C6.19762 2.06663 2.46666 5.79759 2.46666 10.4C2.46666 15.0023 6.19762 18.7333 10.8 18.7333Z" stroke="#16A34A" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M10.8 5.39996V10.4L14.1333 12.0666" stroke="#16A34A" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </g>
                            <defs>
                            <clipPath id="clip0_1_97">
                            <rect width="20" height="20" fill="white" transform="translate(0.799988 0.399963)"/>
                            </clipPath>
                            </defs>
                            </svg></span>
                            <label style="display:flex;flex-direction: column;gap:2px;">
                                <label class="day">Monday-Friday</label>
                                <label class="time">10:00 AM - 4:00 PM</label>
                            </label>
                            

                    </label>
                    <label class="DayRange">
                        <span><svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21" fill="none">
                            <g clip-path="url(#clip0_1_97)">
                            <path d="M10.8 18.7333C15.4024 18.7333 19.1333 15.0023 19.1333 10.4C19.1333 5.79759 15.4024 2.06663 10.8 2.06663C6.19762 2.06663 2.46666 5.79759 2.46666 10.4C2.46666 15.0023 6.19762 18.7333 10.8 18.7333Z" stroke="#16A34A" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M10.8 5.39996V10.4L14.1333 12.0666" stroke="#16A34A" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </g>
                            <defs>
                            <clipPath id="clip0_1_97">
                            <rect width="20" height="20" fill="white" transform="translate(0.799988 0.399963)"/>
                            </clipPath>
                            </defs>
                            </svg></span>
                            <label style="display:flex;flex-direction: column;gap:2px;">
                                <label class="day">Monday-Friday</label>
                                <label class="time">Closed</label>
                            </label>
                            

                    </label>

                    <div  style="padding:25px;border-radius: 8px;display:flex;flex-direction: column;gap:10px;background-color: #DCFCE7;">
                        <div class="text" style="color:#166534">Customer Support</div>
                        <div class="text" style="font-size: 10px;line-height: 10px;">Our support team is available during business hours to assist you with any inquiries.</div>
                    </div>
                </div>
                
            </div>
    
        </div>
        
    </div>
    </div>
    <div class="container4" style="background-color: #16A34A;margin-top:0px;">
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
    
	
    
</body>
</html>