<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
            @import url('https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap');
			*{
			    margin: 0;
			    padding: 0;
			    box-sizing: border-box;
                
			}
			html, body {
			  height: 100%;
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
          <button class="btn login-btn">Login</button>
          <button class="btn signup-btn" style="margin-right:8px">Sign Up</button>
        </div>
      </nav>
</body>
</html>