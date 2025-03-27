
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vishal Bharat</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f4f8;
            overflow-x: hidden;
        }

        .hero {
    position: relative;
    height: 100vh; 
    background: url('pics/<%= request.getAttribute("location") != null ? request.getAttribute("location").toString().toLowerCase() : "default" %>.webp') no-repeat center center;
    background-size:cover;
    color: white;
    display: flex;
    align-items: flex-start;
    justify-content: flex-start;
    padding-left: 60px;
    padding-top: 100px;
    text-shadow: 2px 2px 8px rgba(0,0,0,0.5);
}


        .hero-text {
            max-width: 600px;
        }

        .hero-text h1 {
            font-size: 80px;
            margin: 0;
            letter-spacing: 8px;
            text-align: left;
        }

        .hero-text p {
            font-size: 18px;
            margin-top: 20px;
            text-align: left;
        }
      
        

        .destination-wrapper {
            position: relative;
            z-index: 10;
            margin-top: -274px;
            padding: 0 40px 60px;
        }

        .destination-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
            animation: fadeIn 1s ease-in-out;
            margin-top: -421px;
            
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .card {
            backdrop-filter: blur(12px);
            background: rgba(255, 255, 255, 0.15);
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            width: 260px;
            transition: transform 0.3s ease, background 0.3s ease;
            overflow: hidden;
            border: 1px solid rgba(255,255,255,0.3);
        }

        .card:hover {
            transform: translateY(-10px);
            background: rgba(255, 255, 255, 0.25);
        }

        .card img {
            width: 100%;
            height: 160px;
            object-fit: cover;
        }

        .card-content {
            padding: 18px;
            color: #fff;
        }

        .card-content h3 {
            margin: 0 0 10px;
            color: #fff;
            font-size: 20px;
        }

        .card-content p {
            font-size: 14px;
            margin: 4px 0;
        }

        .card-content a {
            display: inline-block;
            margin-top: 10px;
            color: #00d4ff;
            text-decoration: none;
            font-weight: bold;
        }

        .error-msg {
            text-align: center;
            color: red;
            font-size: 18px;
            margin-top: 50px;
        }
        .booking-modal {
            display: none;
            position: fixed;
            z-index: 9999;
            left: 0; top: 0;
            width: 100%; height: 100%;
            background: rgba(0, 0, 0, 0.6);
        }
       
        /* Responsive for mobile */
        @media screen and (max-width: 768px) {
            .hero {
                padding-left: 30px;
                padding-top: 60px;
                height: 400px;
                text-align: left;
            }

            .hero-text h1 {
                font-size: 48px;
            }

            .hero-text p {
                font-size: 16px;
            }

            .card {
                width: 90%;
            }

            .destination-wrapper {
                margin-top: -120px;
                padding: 0 20px 40px;
            }
        }
    </style>
</head>
<body>

<div class="hero">
    <div class="hero-text">
        <h1><%= request.getAttribute("location") != null ? request.getAttribute("location").toString().toUpperCase() : "DESTINATION" %></h1>
        <p>The one of oldest cities that reflects cultural influences of the many empires. Plan your trip now!</p>
    </div>
</div>

<div class="destination-wrapper">
<%
String location = request.getParameter("location");
String travelDate = request.getParameter("travelDate");
String peopleCountStr = request.getParameter("peopleCount");

    if (location != null && travelDate != null && peopleCountStr != null) {
        try {
            int peopleCount = Integer.parseInt(peopleCountStr);
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism", "root", "vishalbiswas00");

            PreparedStatement ps = conn.prepareStatement("SELECT * FROM destinations WHERE location = ?");
            ps.setString(1, location);
            ResultSet rs = ps.executeQuery();

            boolean hasResults = false;
%>
    <div class="destination-container">
<%
            while (rs.next()) {
                hasResults = true;
                String name = rs.getString("name");
                String description = rs.getString("description");
                double price = rs.getDouble("ticket_price");
                String packageType = rs.getString("package_type");
%>
        <div class="card">
            <img src="pics/<%= name.toLowerCase().replace(" ", "_") %>.webp" alt="<%= name %>">
            <div class="card-content">
                <h3><%= name %></h3>
                <p><%= description %></p>
                <p><strong>Travel Date:</strong> <%= travelDate %></p>
                <p><strong>Price:</strong> ₹<%= price %></p>
                <p><strong>Package:</strong> <%= packageType %></p>
                <p><strong>People:</strong> <%= peopleCount %></p>
                <p><strong>Cost:</strong> ₹<%= (price * peopleCount) %></p>
            <a href="bookTrip.jsp?name=<%= java.net.URLEncoder.encode(name, "UTF-8") %>&location=<%= java.net.URLEncoder.encode(location, "UTF-8") %>&travelDate=<%= java.net.URLEncoder.encode(travelDate, "UTF-8") %>&peopleCount=<%= peopleCount %>">Check more →</a>

            </div>
        </div>
<%
            }
%>
    </div>
<%
            if (!hasResults) {
%>
        <p class="error-msg">No destinations found for "<%= location %>".</p>
<%
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
%>
        <p class="error-msg">Something went wrong while fetching destinations.</p>
<%
        }
    } else {
%>
    <p class="error-msg">Invalid search input. Please go back and try again.</p>
<%
    }
%>

</div>

</body>
</html>
