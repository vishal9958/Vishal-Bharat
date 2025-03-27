<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tourism.model.Festival" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Festival Search Results</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #ffecd2, #fcb69f);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
            font-size: 36px;
            margin-bottom: 30px;
        }

        .back-btn {
            display: inline-block;
            margin-bottom: 20px;
            background-color: #ff6b6b;
            color: white;
            padding: 10px 18px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
            transition: background 0.3s;
        }

        .back-btn:hover {
            background-color: #e74c3c;
        }

        .festival-card {
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.15);
            overflow: hidden;
            margin-bottom: 30px;
            transition: transform 0.3s;
        }

        .festival-card:hover {
            transform: scale(1.02);
        }

        .festival-card img {
            width: 100%;
            height: 280px;
            object-fit: cover;
        }

        .festival-info {
            padding: 20px;
        }

        .festival-info h3 {
            margin: 0 0 10px;
            font-size: 28px;
            color: #333;
        }

        .festival-info p {
            margin: 6px 0;
            color: #555;
            font-size: 16px;
        }

        .festival-info a.book-now {
            display: inline-block;
            margin-top: 15px;
            background-color: #27ae60;
            color: white;
            padding: 10px 16px;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .festival-info a.book-now:hover {
            background-color: #219150;
        }

        .no-data {
            text-align: center;
            font-size: 24px;
            color: #777;
            padding: 60px 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <a href="destination.jsp" class="back-btn">&larr; Back to Home</a>
    <h1>Festival Search Results</h1>

    <%
        List<Festival> festivals = (List<Festival>) request.getAttribute("festivals");

        if (festivals != null && !festivals.isEmpty()) {
            for (Festival fest : festivals) {
    %>
        <div class="festival-card">
            <img src="<%= request.getContextPath() + "/" + (fest.getImageUrl() != null ? fest.getImageUrl() : "images/default.webp") %>" alt="<%= fest.getFestivalName() %> Image">
            <div class="festival-info">
                <h3><%= fest.getFestivalName() %></h3>
                <p><strong>Month:</strong> <%= fest.getMonth() %></p>
                <p><strong>State:</strong> <%= fest.getState() %></p>
                <p><strong>Description:</strong> <%= fest.getDescription() %></p>
                <p><strong>Package Price:</strong> ₹<%= fest.getPrice() %></p>
                <a class="book-now" href="bookTrip.jsp?festivalId=<%= fest.getId() %>">Book Now</a>
            </div>
        </div>
    <%
            }
        } else {
    %>
        <div class="no-data">No festivals found for your search.</div>
    <%
        }
    %>
</div>

</body>
</html>
