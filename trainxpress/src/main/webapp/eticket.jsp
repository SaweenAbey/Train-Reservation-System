<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Train E-Ticket</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image: url('./homecont/pexels-genine-alyssa-pedreno-andrada-1263127-2403209.jpg');
            background-size: cover;
            background-position: center;
            color: #333;
        }
        .ticket {
            width: 320px;
            border: 1px solid #ddd;
            border-radius: 12px;
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            position: relative;
        }
        .ticket h2 {
            font-size: 24px;
            margin-bottom: 15px;
        }
        .ticket p {
            font-size: 14px;
            margin: 8px 0;
            color: #555;
        }
        .qr-code-container {
            margin: 20px 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .qr-code {
            width: 150px;
            height: 150px;
            display: flex;
            justify-content: center;
            align-items: center;
            background: white;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #eee;
        }
        .qr-code img {
            max-width: 100%;
            max-height: 100%;
        }
        .download-btn {
            margin-top: 20px;
        }
        #notification {
            position: fixed;
            top: 20px;
            right: 20px;
            background-color: #10b981;
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            display: none;
            z-index: 999;
        }
        #ticket-content {
            /* This is the part that will be captured */
        }
    </style>
</head>
<body onload="getready()">
    
    <!-- Notification -->
    <div id="notification">🎉 E-Ticket image is ready. Download started!</div>

    <div class="ticket">
        <div id="ticket-content">
            <h2>Train E-Ticket</h2>
            <p><strong>Station:</strong> <%= session.getAttribute("source") %></p>
            <p><strong>Destination:</strong> <%= session.getAttribute("des") %></p>
            <p><strong>Num of Booking Ticket:</strong><%= session.getAttribute("ticket") %></p>

            <div class="qr-code-container">
                <div class="qr-code">
                    <img id="qrCode" src="" alt="QR Code">
                </div>
            </div>
        </div>
        
        <div class="download-btn">
            <button onclick="downloadTicket()" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">
                <i class="ri-download-2-fill"></i> Download Receipt
            </button>
        </div>
    </div>

    <script>
    async function getready() {
        const sid = "<%= session.getAttribute("source") %>";
        const did = "<%= session.getAttribute("des") %>";
        const tid = "<%= session.getAttribute("ticket") %>";
        const qrData = sid + " to " + did + " - Num of tickets." + tid;

        const qrCode = document.getElementById('qrCode');

        // Fetch QR code as Blob and convert to Base64
        const response = await fetch("https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=" + encodeURIComponent(qrData), {
            mode: 'cors'
        });
        const blob = await response.blob();

        const reader = new FileReader();
        reader.onloadend = function () {
            qrCode.src = reader.result;
        };
        reader.readAsDataURL(blob);
    }

    function downloadTicket() {
        const ticketContent = document.getElementById("ticket-content");
        const downloadBtn = document.querySelector(".download-btn");

        // Hide the download button temporarily
        downloadBtn.style.display = "none";

        // Ensure image is fully loaded
        const qrImage = document.getElementById('qrCode');
        if (!qrImage.complete || qrImage.naturalHeight === 0) {
            qrImage.onload = () => captureTicket(ticketContent, downloadBtn);
        } else {
            captureTicket(ticketContent, downloadBtn);
        }
    }

    function captureTicket(contentElement, buttonElement) {
        html2canvas(contentElement).then(canvas => {
            const link = document.createElement("a");
            link.download = "Train_E-Ticket.png";
            link.href = canvas.toDataURL();
            link.click();

            // Show the button again
            buttonElement.style.display = "block";

            const note = document.getElementById("notification");
            note.style.display = "block";
            setTimeout(() => {
                note.style.display = "none";
            }, 3000);
        });
    }
    </script>
</body>
</html>