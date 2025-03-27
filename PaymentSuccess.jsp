<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Vishal Bharat</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: #f3f9ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .success-container {
            background: white;
            padding: 60px 80px;
            border-radius: 16px;
            text-align: center;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
            max-width: 600px;
        }

        .checkmark-circle {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            background: #e6f9ea;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0 auto 30px;
        }

        .checkmark {
            font-size: 64px;
            color: #28a745;
            animation: pop 0.4s ease-in-out;
        }

        @keyframes pop {
            0% {
                transform: scale(0);
                opacity: 0;
            }
            100% {
                transform: scale(1);
                opacity: 1;
            }
        }

        h1 {
            font-size: 36px;
            color: #333;
            margin-bottom: 10px;
        }

        p {
            font-size: 18px;
            color: #666;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            margin: 10px 15px;
            padding: 14px 28px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            border-radius: 8px;
            text-decoration: none;
            transition: background 0.3s ease;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .booking-id {
            font-size: 20px;
            color: #444;
            margin-top: 10px;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="success-container">
    <div class="checkmark-circle">
        <div class="checkmark">✔</div>
    </div>

    <h1>Payment Successful!</h1>
    <p>Thank you for booking your trip with us. We're excited to make your journey unforgettable!</p>

    <%
        String bookingId = request.getParameter("bookingId");
        if (bookingId != null && !bookingId.trim().isEmpty()) {
    %>
        <div class="booking-id">Booking ID: <%= bookingId %></div>
    <%
        }
    %>

    <div style="margin-top: 40px;">
        <a href="index.jsp" class="btn">🏠 Go to Homepage</a>
    </div>
</div>

</body>
</html>
