<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            background: #f7fbfd;
        }
        .container {
            max-width: 1100px;
            margin: 80px auto;
            background: #fff;
            display: flex;
            border-radius: 20px;
            box-shadow: 0 5px 30px rgba(0,0,0,0.1);
            overflow: hidden;
        }
        .contact-info {
            width: 40%;
            background: linear-gradient(180deg, #00c2ff, #00d4c3);
            color: white;
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .contact-info h3 {
            font-size: 22px;
            margin-bottom: 20px;
        }
        .contact-info p {
            font-size: 15px;
            line-height: 1.6;
        }
        .contact-info i {
            margin-right: 10px;
        }
        .form-section {
            width: 60%;
            padding: 50px 40px;
        }
        .form-section h2 {
            font-size: 28px;
            margin-bottom: 10px;
        }
        .form-section p {
            color: #666;
            font-size: 14px;
            margin-bottom: 30px;
        }
        .form-section form input,
        .form-section form textarea {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: none;
            border-bottom: 2px solid #ccc;
            outline: none;
            font-size: 14px;
        }
        .form-section form textarea {
            resize: vertical;
            height: 100px;
        }
        .form-section form button {
            background: #00c2ff;
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 6px;
            font-size: 15px;
            cursor: pointer;
            transition: 0.3s ease;
        }
        .form-section form button:hover {
            background: #00a5d9;
        }
        .info-item {
            margin-bottom: 20px;
            font-size: 15px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="contact-info">
        <h3>Contact Information</h3>
        <p>We'll create high-quality linkable content and build at least 40 high-authority links.</p>
        <div class="info-item"><i>📞</i> 9318395641</div>
        <div class="info-item"><i>📧</i> gamefliker00@.com</div>
        <div class="info-item"><i>📍</i> New Delhi , Gurgaon</div>
    </div>

    <div class="form-section">
        <h2>Get In Touch</h2>
        <p>We’ll create high-quality linkable content and build at least 40 high-authority links to each asset.</p>

<form action="ContactServlet" method="post">
    <input type="text" name="name" placeholder="Your Name" required>
    <input type="email" name="email" placeholder="Your Email" required>
    <input type="text" name="subject" placeholder="Your Subject" required>
    <textarea name="message" placeholder="Write your message here" required></textarea>
    <button type="submit">Send Message</button>
</form>

    </div>
</div>

</body>
</html>
