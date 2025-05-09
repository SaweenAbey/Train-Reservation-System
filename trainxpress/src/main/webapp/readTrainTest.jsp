<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="CSS/TrainCrud/adminStyle.css">
    <link rel="stylesheet" href="CSS/TrainCrud/trainManageStyle2.css">
</head>
<body>
    <div class="dashboard">
        <div class="header">
            <h2>Admin Dashboard</h2>
        </div>
        <div class="sidebar">
            <div class="profile">
                <img src="css/avatar.png" alt="Admin Profile">
                <span>John Doe</span>
            </div>
            <div class="menu">
                <button class="btn" onclick="redirectTo('page1.html')">Manage Users</button>
                <button class="btn" onclick="redirectTo('page2.html')">Manage Routes</button>
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

            <div class="dashboard-info">
                
				<h3>Train Details</h3>
    <!-- From Uiverse.io by adamgiebl --> 
<div class="button-container">
        <a href="addTrain.jsp">
            <button class="cssbuttons-io-button">
                <i class="ri-user-add-line"></i> Add Train
            </button>
        </a>
    </div>
    
    <div class="container">
        <table id="routeTable">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Train Name</th>
                    <th>Engine Number</th>
                    <th>Train Type</th>
                    <th>Seat Count</th>
                    <th>no. Of Wagons</th>
                    <th>Options</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="trn" items="${admin}" >
                <tr>
                    <td>${trn.tid}</td>
  					<td>${trn.tname}</td>
  					<td>${trn.tenginenum}</td>
  					<td>${trn.ttype}</td>
  					<td>${trn.seatcount}</td>
  					<td>${trn.noofwagons}</td>
                    <td>
                        <div class="action-buttons">
                            <form action="updateTrain.jsp" method="post" style="display: inline;">
                                <input type="hidden" name="tid" value="${trn.tid}">
                                <input type="hidden" name="tname" value="${trn.tname}">
                                <input type="hidden" name="tenginenum" value="${trn.tenginenum}">
                                <input type="hidden" name="ttype" value="${trn.ttype}">
                                <input type="hidden" name="tseatcount" value="${trn.seatcount}">
                                <input type="hidden" name="tnoofwagons" value="${trn.noofwagons}">
                                <button type="submit" class="action-button update-button">
                                    <i class="ri-file-edit-line"></i> Update
                                </button>
                            </form>
                            
                            <form method='post' action='Tdelete' style="display: inline;">
  								<input type='hidden' name='tdelete' value='${trn.tid}'>
  								<button class="action-button delete-button" type="submit">
  								<i class="ri-delete-bin-2-line"></i>Delete</button>
  							</form>
                            
                        </div>
                        
                    </td>
                    
                </tr>
                </c:forEach>
            </tbody>
        </table>
        <div id="pagination" class="pagination"></div>
    </div>
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        const rowsPerPage = 20;
        const table = document.getElementById('routeTable');
        const pagination = document.getElementById('pagination');
        const rows = table.querySelectorAll('tbody tr');
        const rowCount = rows.length;
        const pageCount = Math.ceil(rowCount / rowsPerPage);
        let currentPage = 1;

        function displayRows(startIndex, endIndex) {
            rows.forEach((row, index) => {
                row.style.display = (index >= startIndex && index < endIndex) ? '' : 'none';
            });
        }

        function createPagination() {
            pagination.innerHTML = '';

            const prevButton = document.createElement('button');
            prevButton.textContent = 'Previous';
            prevButton.classList.add('prev');
            prevButton.disabled = currentPage === 1;
            prevButton.addEventListener('click', () => {
                if (currentPage > 1) {
                    currentPage--;
                    updateTable();
                }
            });
            pagination.appendChild(prevButton);

            for (let i = 1; i <= pageCount; i++) {
                const pageButton = document.createElement('button');
                pageButton.textContent = i;
                pageButton.classList.add('page');
                if (i === currentPage) {
                    pageButton.classList.add('active');
                }
                pageButton.addEventListener('click', () => {
                    currentPage = i;
                    updateTable();
                });
                pagination.appendChild(pageButton);
            }

            const nextButton = document.createElement('button');
            nextButton.textContent = 'Next';
            nextButton.classList.add('next');
            nextButton.disabled = currentPage === pageCount;
            nextButton.addEventListener('click', () => {
                if (currentPage < pageCount) {
                    currentPage++;
                    updateTable();
                }
            });
            pagination.appendChild(nextButton);
        }

        function updateTable() {
            const startIndex = (currentPage - 1) * rowsPerPage;
            const endIndex = startIndex + rowsPerPage;
            displayRows(startIndex, endIndex);
            createPagination();
        }

        updateTable();
    });
    </script>

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
