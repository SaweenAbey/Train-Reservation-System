<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="CSS/TrainCrudCss/adminStyle.css">
</head>
<body>
    <div class="dashboard">
        <div class="header">
            <h2>Admin Dashboard</h2>
        </div>
        <div class="sidebar">
            <div class="profile">
                <img src="CSS/TrainCrudCss/avatar.png" alt="Admin Profile">
                <span>John Doe</span>
            </div>
            <div class="menu">
                <button class="btn" onclick="redirectTo('page1.html')">Manage Users</button>
                
                <form method="post" action="ReadAllRoute">
                <button type="submit"class="btn">Manage Routes</button>
                </form>
                
                <form method="post" action="TrainList">
                <button type="submit" class="btn">Manage Trains</button>
                </form>
                
                <button class="btn" onclick="redirectTo('page4.html')">Settings</button>
                <button class="btn" onclick="redirectTo('page5.html')">Reports</button>
            </div>
            <div class="logoutSec">
            <button class="btn logout" onclick="logout()">Logout</button>
        	</div>
        </div>
        <div class="content">
            <div class="dashboard-info">
                
                
                
            </div>
        </div>
    </div>

    <script>
        function logout() {
            alert("Logging out...");
            window.location.href = 'home.jsp';
        }
    </script>
</body>
</html>
