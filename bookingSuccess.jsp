<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Vishal Bharat</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f7f9fc;
            padding: 50px;
        }
        .card {
            background: #fff;
            padding: 40px;
            max-width: 800px;
            margin: auto;
            border-radius: 12px;
            box-shadow: 0 12px 30px rgba(0,0,0,0.1);
        }
        h1 {
            color: #0077cc;
            margin-bottom: 20px;
        }
        .details p {
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 10px;
        }
        .details strong {
            color: #333;
        }
        .btn-group {
            margin-top: 30px;
        }
        .btn {
            padding: 12px 24px;
            font-size: 16px;
            margin-right: 15px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            text-decoration: none;
        }
        .pay-btn {
            background-color: #28a745;
            color: white;
        }
        .cancel-btn {
            background-color: #dc3545;
            color: white;
        }
        .pay-btn:hover { background: #218838; }
        .cancel-btn:hover { background: #c82333; }
    </style>
</head>
<body>

<div class="card">
    <h1>Trip Booked Successfully!</h1>

    <div class="details">
        <p><strong>Destination:</strong> <%= request.getAttribute("destinationName") %></p>
        <p><strong>Location:</strong> <%= request.getAttribute("location") %></p>
        <p><strong>Travel Date:</strong> <%= request.getAttribute("travelDate") %></p>
        <p><strong>People:</strong> <%= request.getAttribute("peopleCount") %></p>
        <p><strong>Package Type:</strong> <%= request.getAttribute("packageType") %></p>
        <p><strong>Ticket Price (per person):</strong> ₹<%= request.getAttribute("ticketPrice") %></p>
        <p><strong>Total Cost:</strong> ₹<%= request.getAttribute("totalCost") %></p>

        <hr style="margin: 20px 0;">

        <p><strong>Booked By:</strong> <%= request.getAttribute("fullName") %></p>
        <p><strong>Email:</strong> <%= request.getAttribute("email") %></p>
        <p><strong>Phone:</strong> <%= request.getAttribute("phone") %></p>
    </div>

    <div class="btn-group">
        <a href="paymentPage.jsp" class="btn pay-btn">Proceed to Payment</a>
        <a href="cancelTrip.jsp" class="btn cancel-btn">Cancel Trip</a>
    </div>
</div>

</body>
</html>
