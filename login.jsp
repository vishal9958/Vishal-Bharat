<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login</title>
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
      height: auto;
      background: transparent;
      border: 2px solid rgba(255, 255, 255, 0.5);
      border-radius: 20px;
      backdrop-filter: blur(20px);
      box-shadow: 0 0 30px rgba(0, 0, 0, 0.5);
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 30px 0;
      flex-direction: column;
    }

    .form-box {
      width: 100%;
      padding: 30px 40px;
    }

    .form-box h2 {
      font-size: 2em;
      color: #162938;
      text-align: center;
    }

    .message-box {
      margin: 10px 0 0 0;
      padding: 10px;
      width: 85%;
      text-align: center;
      font-size: 14px;
      font-weight: 500;
      border-radius: 5px;
    }

    .error {
      background-color: rgba(255, 0, 0, 0.1);
      color: red;
      border: 1px solid red;
    }

    .success {
      background-color: rgba(0, 255, 0, 0.1);
      color: green;
      border: 1px solid green;
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
      padding: 0 35px 0 5px;
    }

    .remember-forgot {
      font-size: 0.9em;
      color: #162938;
      font-weight: 500;
      margin: -15px 0 15px;
      display: flex;
      justify-content: space-between;
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
    <div class="form-box login">
      <h2>Login</h2>

      <!-- ✅ JSP Message Handling -->
      <%
        String error = request.getParameter("error");
        String msg = request.getParameter("msg");

        if ("invalid".equals(error)) {
      %>
        <div class="message-box error">Invalid Email or Password. Please try again.</div>
      <%
        } else if ("internal".equals(error)) {
      %>
        <div class="message-box error">Server Error. Please try again later.</div>
      <%
        } else if ("registered".equals(msg)) {
      %>
        <div class="message-box success">Registration Successful! Please login below.</div>
      <%
        }
      %>

      <form action="LoginServlet" method="post">
        <div class="input-box">
          <input type="text" name="email" required>
          <label>Email</label>
        </div>
        <div class="input-box">
          <input type="password" name="password" required>
          <label>Password</label>
        </div>
        <div class="remember-forgot">
          <label><input type="checkbox"> Remember me</label>
          <a href="#">Forgot Password?</a>
        </div>
        <button type="submit" class="btn">Login</button>
        <div class="login-register">
          <p>Don't have an account? <a href="register.jsp">Register</a></p>
        </div>
      </form>
    </div>
  </div>
</body>
</html>
