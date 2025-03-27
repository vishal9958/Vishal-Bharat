<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Vishal Bharat</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #0f5132, #198754);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .thankyou-card {
            position: relative;
            background: white;
            width: 500px;
            max-width: 90%;
            padding: 40px 30px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .thankyou-card::before {
            content: "";
            position: absolute;
            top: 0;
            right: 0;
            width: 50px;
            height: 50px;
            background: #198754;
            clip-path: polygon(100% 0, 0 0, 100% 100%);
            border-top-right-radius: 10px;
        }

        .thankyou-card h1 {
            font-size: 32px;
            color: #198754;
            margin-bottom: 15px;
        }

        .thankyou-card p {
            color: #333;
            font-size: 16px;
            margin-bottom: 25px;
        }

        .thankyou-card a.button {
            display: inline-block;
            padding: 10px 30px;
            border: 2px solid #198754;
            border-radius: 25px;
            color: #198754;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .thankyou-card a.button:hover {
            background: #198754;
            color: white;
        }

        .social-icons {
            margin-top: 30px;
        }

        .social-icons a {
            margin: 0 8px;
            color: #888;
            font-size: 20px;
            text-decoration: none;
            transition: 0.3s;
        }

        .social-icons a:hover {
            color: #198754;
        }

        .thankyou-image {
            width: 80px;
            height: 80px;
            margin-bottom: 20px;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>

    <div class="thankyou-card">
        <!-- Animated Thank You Image -->
        <img src="https://i.gifer.com/7efs.gif" alt="Thank You" class="thankyou-image">

        <h1>Thank you!</h1>
        <p>For Your Subscripton.
            <strong><%= request.getAttribute("email") != null ? request.getAttribute("email") : "your email" %></strong>.<br>
            .
        </p>

        <a href="index.jsp" class="button">Back to site</a>

        <div class="social-icons">
            <p style="margin: 20px 0 10px; font-weight: 600; color: #555;">FOLLOW US</p>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-youtube"></i></a>
            <a href="#"><i class="fab fa-facebook-f"></i></a>
        </div>
    </div>

</body>
</html>
