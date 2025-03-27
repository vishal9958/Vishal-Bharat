<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Register</title>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700;900&display=swap" rel="stylesheet">

  <!-- Embedded CSS -->
  <style>
    @import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700;900&display=swap');
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'DM Sans', sans-serif;
    }
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      background: url('bg.jpg') no-repeat;
      background-size: cover;
      background-position: center;
    }
    .wrapper {
      position: relative;
      width: 400px;
      height: 440px;
      background: transparent;
      border: 2px solid rgba(255, 255, 255, 0.5);
      border-radius: 20px;
      backdrop-filter: blur(20px);
      box-shadow: 0 0 30px rgba(0, 0, 0, 0.5);
      display: flex;
      justify-content: center;
      align-items: center;
      overflow: hidden;
      transition: height 0.2s ease;
    }
    .wrapper.active {
      height: 520px;
    }
    .wrapper .form-box {
      width: 100%;
      padding: 40px;
    }
    .wrapper .form-box.register {
      position: absolute;
      transition: none;
      transform: translateX(0);
    }
    .form-box h2 {
      font-size: 2em;
      color: #162938;
      text-align: center;
    }
    .input-box {
      position: relative;
      width: 100%;
      height: 50px;
      border-bottom: 2px solid #162938;
      margin: 30px 0;
    }
    .input-box label {
      position: absolute;
      top: 50%;
      left: 5px;
      transform: translateY(-50%);
      font-size: 1em;
      color: #162938;
      font-weight: 500;
      pointer-events: none;
      transition: 0.5s;
    }
    .input-box input:focus ~ label,
    .input-box input:valid ~ label {
      top: -5px;
    }
    .input-box input {
      width: 100%;
      height: 100%;
      background: transparent;
      border: none;
      outline: none;
      font-size: 1em;
      color: #162938;
      font-weight: 600;
      padding: 0 5px;
    }
    .remember-forgot {
      font-size: 0.9em;
      color: #162938;
      font-weight: 500;
      margin: -15px 0 15px;
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
    }
    .remember-forgot label input {
      accent-color: #162938;
      margin-right: 3px;
    }
    .remember-forgot a {
      color: #162938;
      text-decoration: none;
    }
    .remember-forgot a:hover {
      text-decoration: underline;
    }
    .btn {
      width: 100%;
      height: 45px;
      background: #162938;
      border: none;
      outline: none;
      border-radius: 6px;
      cursor: pointer;
      font-size: 1em;
      color: white;
      font-weight: 500;
    }
    .login-register {
      font-size: 0.9em;
      color: #162938;
      text-align: center;
      font-weight: 500;
      margin: 25px 0 10px;
    }
    .login-register p a {
      color: #162938;
      text-decoration: none;
      font-weight: 600;
    }
    .login-register p a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="wrapper">
  <%
  String msg = request.getParameter("msg");
  if ("registered".equals(msg)) {
%>
  <p style="color: green; text-align:center;">Registration successful. Please login.</p>
<%
  } else if ("error".equals(msg)) {
%>
  <p style="color: red; text-align:center;">Registration failed. Try again.</p>
<%
  } else if ("exists".equals(msg)) {
%>
  <p style="color: orange; text-align:center;">Email already registered.</p>
<%
  }
%>
  
    <div class="form-box register">
      <h2>Registration</h2>
      <form action="RegisterServlet" method="post">
        <div class="input-box">
          <input type="text" name="username" required>
          <label>Username</label>
        </div>
        <div class="input-box">
          <input type="text" name="email" required>
          <label>Email</label>
        </div>
        <div class="input-box">
          <input type="password" name="password" required>
          <label>Password</label>
        </div>
        <div class="remember-forgot">
          <label><input type="checkbox" required> I agree to the terms and conditions</label>
        </div>
        <button type="submit" class="btn">Register</button>
        <div class="login-register">
          <p>Already have an account? <a href="login.jsp">Login</a></p>
        </div>
        
      </form>
    </div>
  </div>
</body>
</html>
