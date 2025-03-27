<%@ page session="true" %>
<%
    String userEmail = (String) session.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Vishal Bharat</title>
    <style>
        body {
            background: #e5bdfc;
            font-family: 'Segoe UI', sans-serif;
        }
        .cancel-box {
            background: linear-gradient(to right, #b95ce4, #a32cc4);
            color: white;
            padding: 40px;
            width: 600px;
            margin: 100px auto;
            border-radius: 20px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
            position: relative;
        }
        .cancel-box h2 {
            margin: 0 0 10px;
        }
        .cancel-box p {
            margin-bottom: 20px;
        }
        .cancel-box button {
            padding: 12px 24px;
            margin: 10px;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }
        .yes-btn {
            background-color: #ffffff;
            color: #a32cc4;
        }
        .no-btn {
            background-color: transparent;
            border: 2px solid #fff;
            color: #fff;
        }
        .cancel-box form {
            margin-top: 20px;
        }
        textarea {
            width: 100%;
            height: 100px;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 10px;
            border: none;
            font-family: inherit;
            resize: none;
        }
    </style>
</head>
<body>

<div class="cancel-box">
    <h2>Hey, Wait!!</h2>
    <p>Are you sure you want to cancel your trip booking?</p>
    
<form action="<%= request.getContextPath() %>/CancelBookingServlet" method="post">
        <input type="hidden" name="email" value="<%= userEmail %>">
        <textarea name="reason" placeholder="Tell us why you're cancelling (optional)..."></textarea><br>
        <button type="submit" class="yes-btn">Yes, Cancel Now</button>
        <a href="index.jsp"><button type="button" class="no-btn">No, Go Back</button></a>
    </form>
</div>

</body>
</html>
