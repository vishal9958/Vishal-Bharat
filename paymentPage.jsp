<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.DecimalFormat" %>
<%
    DecimalFormat df = new DecimalFormat("0.00");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vishal Bharat</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #e0f7fa, #80deea);
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 700px;
            margin: 80px auto;
            background: #fff;
            padding: 40px 50px;
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
        }
        h1 {
            color: #00796b;
            font-size: 32px;
            margin-bottom: 20px;
        }
        p {
            font-size: 18px;
            margin: 15px 0;
        }
        .info-box {
            background: #f1fdfc;
            border-left: 5px solid #26a69a;
            padding: 20px;
            border-radius: 8px;
            margin: 20px 0;
        }
        .btn-group {
            margin-top: 30px;
            display: flex;
            gap: 20px;
        }
        .btn {
            padding: 12px 24px;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            text-decoration: none;
            transition: background 0.3s ease;
        }
        .btn-pay {
            background-color: #00796b;
            color: white;
        }
        .btn-pay:hover {
            background-color: #004d40;
        }
        .btn-cancel {
            background-color: #ff5252;
            color: white;
        }
        .btn-cancel:hover {
            background-color: #c62828;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Almost Done! Complete Your Payment</h1>

    <div class="info-box">
        <p><strong>Destination:</strong> <%= session.getAttribute("destinationName") %></p>
        <p><strong>Location:</strong> <%= session.getAttribute("location") %></p>
        <p><strong>Travel Date:</strong> <%= session.getAttribute("travelDate") %></p>
        <p><strong>People:</strong> <%= session.getAttribute("peopleCount") %></p>
        <p><strong>Package Type:</strong> <%= session.getAttribute("packageType") %></p>
        <p><strong>Ticket Price:</strong> ₹<%= df.format(session.getAttribute("ticketPrice")) %></p>
        <p><strong>Total Amount:</strong> ₹<%= df.format(session.getAttribute("totalCost")) %></p>
    </div>

    <p>To confirm your trip, please proceed with the payment now.</p>

    <div class="btn-group">
        <a href="processPayment.jsp" class="btn btn-pay">Pay Now</a>
        <a href="cancelTrip.jsp" class="btn btn-cancel">Cancel Trip</a>
    </div>
</div>
</body>
</html>
