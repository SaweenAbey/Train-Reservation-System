<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Refund Policy | RailXpress</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,100..900;1,100..900&display=swap');

        :root {
            --primary: #388E3C;
            --primary-dark: #2E7D32;
            --primary-light: #4CAF50;
            --secondary: #8BC34A;
            --danger: #F44336;
            --success: #4CAF50;
            --warning: #FFC107;
            --dark: #1A1A1A;
            --light: #F5F5F5;
            --gray: #757575;
            --light-gray: #E0E0E0;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', sans-serif;
        }

        body {
            background-color: #F5F5F5;
            color: var(--dark);
            line-height: 1.6;
        }

        /* Header Styles */
        .navbar {
            font-family: 'Inter', sans-serif;
            display: flex;
            justify-content: space-between;
            background-color: rgba(56, 142, 60, 0.85);
            height: 60px;
            position: fixed;
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

        .home-link:hover {
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

        /* Main Content Styles */
        .container {
            max-width: 1200px;
            margin: 80px auto 20px;
            padding: 0 20px;
        }

        .refund-policy {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
            padding: 2rem;
            margin: 2rem 0;
        }

        h1 {
            color: var(--primary);
            margin-bottom: 1.5rem;
            font-size: 2rem;
        }

        h2 {
            color: var(--primary-dark);
            margin: 1.5rem 0 1rem;
            font-size: 1.5rem;
            position: relative;
            padding-left: 15px;
        }

        h2::before {
            content: '';
            position: absolute;
            left: 0;
            top: 5px;
            height: 80%;
            width: 4px;
            background-color: var(--primary);
            border-radius: 2px;
        }

        p {
            margin-bottom: 1rem;
            color: #555;
        }

        ul, ol {
            margin-bottom: 1.5rem;
            padding-left: 1.5rem;
        }

        li {
            margin-bottom: 0.5rem;
        }

        .highlight {
            background-color: rgba(56, 142, 60, 0.1);
            padding: 1.5rem;
            border-radius: 8px;
            margin: 1.5rem 0;
            border-left: 4px solid var(--primary);
        }

        .highlight p {
            margin-bottom: 0;
            font-weight: 500;
        }

        .note {
            background-color: rgba(255, 193, 7, 0.1);
            padding: 1rem;
            border-radius: 8px;
            margin: 1rem 0;
            border-left: 4px solid var(--warning);
            display: flex;
        }

        .note i {
            color: var(--warning);
            margin-right: 10px;
            font-size: 1.2rem;
        }

        .table-container {
            overflow-x: auto;
            margin: 1.5rem 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 1rem 0;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid var(--light-gray);
        }

        th {
            background-color: var(--primary);
            color: white;
            font-weight: 600;
        }

        tr:nth-child(even) {
            background-color: rgba(0, 0, 0, 0.02);
        }

        tr:hover {
            background-color: rgba(0, 0, 0, 0.05);
        }

        .badge {
            display: inline-block;
            padding: 4px 8px;
            border-radius: 4px;
            font-size: 0.8rem;
            font-weight: 600;
        }

        .badge-success {
            background-color: rgba(76, 175, 80, 0.2);
            color: var(--success);
        }

        .badge-warning {
            background-color: rgba(255, 193, 7, 0.2);
            color: var(--warning);
        }

        .badge-danger {
            background-color: rgba(244, 67, 54, 0.2);
            color: var(--danger);
        }

        .contact-info {
            margin-top: 2rem;
            padding-top: 1.5rem;
            border-top: 1px dashed var(--gray);
        }

        .contact-info p {
            display: flex;
            align-items: center;
            margin-bottom: 0.5rem;
        }

        .contact-info i {
            margin-right: 10px;
            color: var(--primary);
        }

        .back-btn {
            background-color: var(--primary);
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 4px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            margin-bottom: 1rem;
        }

        .back-btn:hover {
            background-color: var(--primary-dark);
            transform: translateY(-2px);
        }

        .back-btn i {
            margin-right: 5px;
        }

        /* Footer Styles */
        .footer-container {
            background-color: #16A34A;
            text-align: center;
            padding: 20px;
            font-family: Inter;
            color: #ffffff;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .footer-container a {
            color: white;
            text-decoration: none;
            display: flex;
            align-items: center;
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

            .refund-policy {
                padding: 1.5rem;
            }

            h1 {
                font-size: 1.8rem;
            }

            h2 {
                font-size: 1.3rem;
            }

            .footer-container {
                flex-direction: column;
                gap: 10px;
            }
        }

        /* Animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .refund-policy {
            animation: fadeIn 0.6s ease-out;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <nav class="navbar">
        <a href="#" class="home-link">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
                <path d="M18 3.39996H6C4.89543 3.39996 4 4.29539 4 5.39996V17.4C4 18.5045 4.89543 19.4 6 19.4H18C19.1046 19.4 20 18.5045 20 17.4V5.39996C20 4.29539 19.1046 3.39996 18 3.39996Z" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M4 11.4H20" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M12 3.39996V11.4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M8 19.4L6 22.4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M18 22.4L16 19.4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M8 15.4H8.01" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M16 15.4H16.01" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            RailXpress
        </a>

        <div class="nav-right">
            <a href="#">Booking</a>
            <a href="insertReview">Review</a>
            <a href="ContactUs.jsp">Contact</a>
            
            <button class="btn login-btn" onclick="location.href='login.jsp'">Login</button>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="container">
        <button class="back-btn" id="backBtn" onclick="window.history.back()">
            <i class="fas fa-arrow-left"></i>
            Back to Previous Page
        </button>
        
        <section class="refund-policy">
            <h1>Refund Policy</h1>
            <p>Last updated: May 15, 2025</p>
            
            <p>At RailXpress, we understand that plans can change. Our refund policy is designed to be fair to both our customers and our business. Please read this policy carefully before booking your tickets.</p>
            
            <div class="highlight">
                <p><strong>Important:</strong> Refund eligibility and amounts depend on when you cancel your ticket and the type of ticket you've purchased. Some promotional tickets may have different refund rules.</p>
            </div>
            
            <h2>1. General Refund Rules</h2>
            <p>Our standard refund rules apply to most ticket types unless otherwise specified:</p>
            <ul>
                <li>Refunds are processed to the original payment method used for booking</li>
                <li>Processing may take 7-10 business days to reflect in your account</li>
                <li>Partial journeys are not eligible for partial refunds</li>
                <li>Refund requests must be made before the scheduled departure time</li>
            </ul>
            
            <h2>2. Cancellation Timeframes</h2>
            <p>The amount refunded depends on when you cancel your ticket:</p>
            
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>Cancellation Period</th>
                            <th>Refund Amount</th>
                            <th>Conditions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>More than 48 hours before departure</td>
                            <td><span class="badge badge-success">90% of fare</span></td>
                            <td>Minus any non-refundable fees</td>
                        </tr>
                        <tr>
                            <td>24-48 hours before departure</td>
                            <td><span class="badge badge-warning">75% of fare</span></td>
                            <td>Minus any non-refundable fees</td>
                        </tr>
                        <tr>
                            <td>12-24 hours before departure</td>
                            <td><span class="badge badge-warning">50% of fare</span></td>
                            <td>Minus any non-refundable fees</td>
                        </tr>
                        <tr>
                            <td>Less than 12 hours before departure</td>
                            <td><span class="badge badge-danger">No refund</span></td>
                            <td>Except under special circumstances</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <div class="note">
                <i class="fas fa-exclamation-circle"></i>
                <p>Premium and luxury class tickets may have different refund percentages. Please check your ticket details.</p>
            </div>
            
            <h2>3. Special Circumstances</h2>
            <p>We may offer full refunds (minus processing fees) in these situations:</p>
            <ol>
                <li><strong>Train cancellations:</strong> If RailXpress cancels your train</li>
                <li><strong>Medical emergencies:</strong> With valid documentation</li>
                <li><strong>Government orders:</strong> Travel restrictions or lockdowns</li>
                <li><strong>Natural disasters:</strong> Affecting the route or destination</li>
            </ol>
            
            <h2>4. How to Request a Refund</h2>
            <p>To request a refund, please follow these steps:</p>
            <ol>
                <li>Log in to your RailXpress account</li>
                <li>Go to "My Bookings"</li>
                <li>Select the ticket you wish to cancel</li>
                <li>Click "Request Refund"</li>
                <li>Follow the on-screen instructions</li>
            </ol>
            
            <p>For tickets booked at a station counter, please visit any RailXpress ticket counter with your original ticket and ID proof.</p>
            
            <h2>5. Processing Time</h2>
            <p>Refunds are typically processed within:</p>
            <ul>
                <li><strong>Credit/Debit Cards:</strong> 7-10 business days</li>
                <li><strong>Net Banking:</strong> 5-7 business days</li>
                <li><strong>E-Wallets:</strong> 24-48 hours</li>
                <li><strong>Cash Payments:</strong> Must be collected at the station within 30 days</li>
            </ul>
            
            <div class="highlight">
                <p><strong>Tip:</strong> You can track your refund status in your RailXpress account under "Refund Status".</p>
            </div>
            
            <h2>6. Non-Refundable Components</h2>
            <p>The following fees are not refundable under any circumstances:</p>
            <ul>
                <li>Booking/convenience fees</li>
                <li>Insurance premiums (if purchased)</li>
                <li>Meal charges (if purchased)</li>
                <li>Any other ancillary service fees</li>
            </ul>
            
            <div class="contact-info">
                <h2>Need Help?</h2>
                <p><i class="fas fa-phone-alt"></i> Call our customer care: +112-547-8764 </p>
                <p><i class="fas fa-envelope"></i> Email us: refunds@RailXpress.com</p>
                <p><i class="fas fa-clock"></i> Support hours: 7:00 AM - 11:00 PM (All days)</p>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <div class="footer-container">
        <a href="#" class="home-link">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
                <path d="M18 3.39996H6C4.89543 3.39996 4 4.29539 4 5.39996V17.4C4 18.5045 4.89543 19.4 6 19.4H18C19.1046 19.4 20 18.5045 20 17.4V5.39996C20 4.29539 19.1046 3.39996 18 3.39996Z" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M4 11.4H20" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M12 3.39996V11.4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M8 19.4L6 22.4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M18 22.4L16 19.4" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M8 15.4H8.01" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M16 15.4H16.01" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            RailXpress
        </a>
        <div>&copy; 2025 RailXpress. All rights reserved.</div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Add animation to table rows
            const tableRows = document.querySelectorAll('tbody tr');
            tableRows.forEach((row, index) => {
                row.style.opacity = '0';
                row.style.transform = 'translateX(-20px)';
                row.style.transition = `all 0.3s ease ${index * 0.1}s`;
                
                setTimeout(() => {
                    row.style.opacity = '1';
                    row.style.transform = 'translateX(0)';
                }, 100);
            });
            
            // Print functionality (could add a print button)
            function printRefundPolicy() {
                window.print();
            }
        });
    </script>
</body>
</html>
