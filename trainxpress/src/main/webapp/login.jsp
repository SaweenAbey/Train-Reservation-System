<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="CSS/TrainCrudCss/loginStyle.css">
    <title>Login Page</title>
    <script>
    <%
        int ck = 1; // default value
        String checkParam = request.getParameter("check");
        if (checkParam != null) {
            try {
                ck = Integer.parseInt(checkParam);
            } catch (NumberFormatException e) {
                ck = 1; // fallback in case of bad input
            }
        }
    %>
    if (<%= ck %> == 0) {
        alert("Username Already Taken,Try Another");
    }
    if(<%=request.getParameter("loggin")%>!=null && <%=request.getParameter("loggin")%>==0){
    	 alert("You have to log in first");
    }
</script>
</head>

<body>

    <div class="container" id="container">
        <div class="form-container sign-up">
            <form method="post" action="Register" onsubmit="return validateRegisterForm()">
                <h1>Create Account</h1>
                
                <label>use your email for registration</label>
                <input type="text" placeholder="Name" name="name" required >
                <input type="email" placeholder="Email" name="email" required>
                <input type="text" placeholder="User-Name" name="username" required>
                <input type="text" placeholder="Password" name="password" id="password" required>
                <input type="text" placeholder="Re- Enter Password" name="re-password" id="re-password" required>
                <button>Sign Up</button>
            </form>
        </div>
        <div class="form-container sign-in">
            <form method="post" action="Login">
                <h1>Sign In</h1>
                <label>Use Your Email and Password</label>
                <br><br>
                <input type="text" placeholder="UserName" name="username">
                <input type="password" placeholder="Password" name="password">
                <a href="adminLogin.jsp" style="color:red;">Login as an Admin</a>
                <button>Sign In</button>
                <br>
                
            </form>
        </div>
        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-left">
                    <h1>Welcome Back!</h1>
                    <p>Enter your personal details to use all of site features</p>
                    <button class="hidden" id="login">Sign In</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <h1>Hello, Friend!</h1>
                    <p>Register with your personal details to use all of site features</p>
                    <button class="hidden" id="register">Sign Up</button>
                </div>
            </div>
        </div>
    </div>

    <script>
    const container = document.getElementById('container');
    const registerBtn = document.getElementById('register');
    const loginBtn = document.getElementById('login');

    registerBtn.addEventListener('click', (e) => {
        e.preventDefault();
        container.classList.add("active");
    });

    loginBtn.addEventListener('click', (e) => {
        e.preventDefault();
        container.classList.remove("active");
    });

    function validateRegisterForm() {
        const password = document.getElementById("password").value;
        const confirmPassword = document.getElementById("re-password").value;

        if (password.length < 8) {
            alert("Password must be at least 8 characters long.");
            return false;
        }

        if (password !== confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }

        return true;
    }
    </script>
</body>

</html>