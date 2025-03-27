<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vishal Bharat</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: #f0f4f8;
        }

        .container {
            max-width: 1000px;
            margin: 60px auto;
            background: #fff;
            padding: 40px 60px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
        }

        h1 {
            font-size: 36px;
            margin-bottom: 10px;
            color: #333;
        }

        .details {
            margin-top: 20px;
            font-size: 18px;
            line-height: 1.6;
        }

        .details strong {
            color: #0077cc;
        }

        form {
            margin-top: 30px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #333;
        }

        input, select, textarea {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 20px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #0077cc;
            color: white;
            cursor: pointer;
            border: none;
            transition: background 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #005fa3;
        }

        .back-btn {
            display: inline-block;
            margin-top: 20px;
            color: #0077cc;
            text-decoration: none;
            font-weight: bold;
        }

        .back-btn:hover {
            text-decoration: underline;
        }

        .destination-img {
            width: 100%;
            max-height: 300px;
            object-fit: cover;
            border-radius: 10px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<div class="container">
<%
    String name = request.getParameter("name") != null ? URLDecoder.decode(request.getParameter("name"), "UTF-8") : "Unknown";
    String location = request.getParameter("location") != null ? URLDecoder.decode(request.getParameter("location"), "UTF-8") : "Unknown";
    String travelDate = request.getParameter("travelDate") != null ? URLDecoder.decode(request.getParameter("travelDate"), "UTF-8") : "N/A";
    String peopleCount = request.getParameter("peopleCount") != null ? request.getParameter("peopleCount") : "1";
    String price = request.getParameter("price") != null ? request.getParameter("price") : "N/A";
    String imageName = name.toLowerCase().replaceAll("\\s+", "_");
    String img = "pics/" + imageName + ".webp";
%>

    <h1>Book Your Trip to <%= name %></h1>

<img src="<%= img %>" alt="Destination Image" class="destination-img">

    <div class="details">
        <p><strong>Location:</strong> <%= location %></p>
        <p><strong>Travel Date:</strong> <%= travelDate %></p>
        <p><strong>People:</strong> <%= peopleCount %></p>
        <p><strong>Package Price:</strong> ₹<%= price %></p>
    </div>

    <form action="ConfirmBookingServlet" method="post">
        <!-- Hidden fields for servlet -->
        <input type="hidden" name="name" value="<%= name %>">
        <input type="hidden" name="location" value="<%= location %>">
        <input type="hidden" name="travelDate" value="<%= travelDate %>">
        <input type="hidden" name="peopleCount" value="<%= peopleCount %>">
        <input type="hidden" name="price" value="<%= price %>">
        <input type="hidden" name="img" value="<%= img %>">

        <!-- User Booking Info -->
        <label for="fullName">Your Full Name:</label>
        <input type="text" name="fullName" id="fullName" required>

        <label for="email">Email Address:</label>
        <input type="email" name="email" id="email" required>

        <label for="phone">Phone Number:</label>
        <input type="text" name="phone" id="phone" required>

        <label for="notes">Additional Notes:</label>
        <textarea name="notes" id="notes" rows="4" placeholder="Any preferences or comments..."></textarea>

        <input type="submit" value="Confirm Booking">
    </form>

    <a href="searchResult.jsp?location=<%= location %>&travelDate=<%= travelDate %>&peopleCount=<%= peopleCount %>" class="back-btn">Back to Search Results</a>
    <a href="index.jsp" class="back-btn"> Back to HOME</a>
    
</div>

</body>
</html>
