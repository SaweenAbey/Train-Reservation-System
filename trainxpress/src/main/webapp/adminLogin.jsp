<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap');

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Montserrat', sans-serif;
}


body{

    background-image: url("css/tLog.jpg");
    background-size: cover;
    backdrop-filter: blur(10px);
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    height: 100vh;
}

.container{
	background-color: #fff;
    border-radius: 20px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.35);
    position: relative;
    overflow: hidden;
    width: 400px;
    max-width: 100%;
    min-height: 480px;
}

.container p{
    font-size: 14px;
    line-height: 20px;
    letter-spacing: 0.3px;
    margin: 20px 0;
}

.container label{
    font-size : 12px;
    color : black;
}

.container a{
    color: #333;
    font-size: 13px;
    text-decoration:none;
    margin: 15px 0 10px;
}

.container button{
    background-color: #4CAF50;
    color: #fff;
    font-size: 12px;
    padding: 10px 45px;
    border: 1px solid transparent;
    border-radius: 8px;
    font-weight: 600;
    letter-spacing: 0.5px;
    text-transform: uppercase;
    margin-top: 10px;
    cursor: pointer;
}

.container form{
    background-color: rgba(255, 255, 255, 0.20);
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    padding: 0 40px;
    height: 100%;
}

.container input{
    background-color: #eee;
    border: none;
    margin: 8px 0;
    padding: 10px 15px;
    font-size: 13px;
    border-radius: 8px;
    width: 90%;
    outline: none;
}
    </style>
<meta charset="UTF-8">
<title>Admin-Login</title>
</head>
<body>
	<div class="container">
            <form method="post" action="AdminLogin">
                <h1 style="color:black;">Sign In</h1>
                <label>Use Use-Name and Password</label>
                <br><br>
                <input type="text" placeholder="adminUserName" name="adminUserName">
                <input type="password" placeholder="Password" name="password">
                <button>Sign In</button>
                <br>
                <a href="login.jsp" style="color:#4CAF50;margin-top:40px">Login as a User</a>
            </form>
        </div>
</body>
</html>