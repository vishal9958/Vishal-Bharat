<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Vishal Bharat 🌍</title>
    <style>
        body { font-family: sans-serif; background: #f5f5f5; padding: 40px; }
        h2 { color: #333; }
        .card { background: white; border-radius: 12px; padding: 20px; margin-top: 20px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        .card h3 { color: #2196f3; margin-bottom: 10px; }
    </style>
</head>
<body>

    <h2>🚆 Available Train Options</h2>
    <div class="card">
        <h3>From: <%= request.getParameter("from") %> ➝ <%= request.getParameter("to") %></h3>
        <p>Date: <%= request.getParameter("date") %></p>
        <p>People: <%= request.getParameter("people") %></p>
        <p>Train: BlueLine Superfast</p>
        <p>Departure Time: 6:30 AM</p>
        <p>Price per Person: ₹599</p>
        <button>Proceed to Book</button>
    </div>

</body>
</html>
