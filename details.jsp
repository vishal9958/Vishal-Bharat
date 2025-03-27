<!-- details.jsp -->
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Vishal Bharat</title>
    <style>
        body { font-family: Arial; background: #f2f2f2; }
        .container { width: 80%; margin: 50px auto; background: #fff; padding: 40px; border-radius: 10px; }
        h2 { color: #333; }
        p { line-height: 1.6; margin-bottom: 15px; }
        .btn { padding: 12px 20px; background: #00c2ff; color: white; text-decoration: none; border-radius: 6px; display: inline-block; }
        .btn:hover { background: #00a5d9; }
    </style>
</head>
<body>
    <div class="container">
        <h2><%= request.getParameter("title") %></h2>
        <img src="<%= request.getParameter("img") %>" width="100%" style="border-radius:10px; margin-bottom:20px;">
        <p><b>Price:</b> ₹<%= request.getParameter("price") %></p>
        <p><b>Package Details:</b></p>
        <p>This travel package includes sightseeing, hotel stay, food, guide, and much more for <%= request.getParameter("title") %>.</p>
        <form action="bookTrip.jsp" method="post">
            <input type="hidden" name="title" value="<%= request.getParameter("title") %>">
            <input type="hidden" name="price" value="<%= request.getParameter("price") %>">
            <input type="hidden" name="img" value="<%= request.getParameter("img") %>">
            <button class="btn" type="submit">Book Now</button>
        </form>
    </div>
</body>
</html>
