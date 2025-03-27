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
            background: #f5f8fb;
        }

        .container {
            max-width: 700px;
            margin: 60px auto;
            background: #fff;
            padding: 40px 50px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            font-size: 32px;
            margin-bottom: 30px;
            color: #333;
        }

        .payment-methods {
            display: flex;
            justify-content: center;
            margin-bottom: 30px;
        }

        .payment-methods button {
            padding: 12px 30px;
            margin: 0 10px;
            border: none;
            border-radius: 30px;
            background-color: #e0e0e0;
            color: #333;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .payment-methods button.active {
            background-color: #0077cc;
            color: #fff;
        }

        .form-section {
            display: none;
        }

        .form-section.active {
            display: block;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 6px;
            color: #444;
        }

        input {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 18px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 15px;
        }

        .qr-section {
            text-align: center;
            margin-top: 20px;
        }

        .qr-section img {
            width: 220px;
            height: 220px;
        }

        .pay-btn {
            display: block;
            width: 100%;
            background-color: #0077cc;
            color: white;
            padding: 14px;
            border: none;
            border-radius: 8px;
            font-size: 17px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .pay-btn:hover {
            background-color: #005fa3;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Choose Your Payment Method</h1>

    <div class="payment-methods">
        <button id="cardBtn" class="active" onclick="switchMethod('card')">Card Payment</button>
        <button id="upiBtn" onclick="switchMethod('upi')">UPI Payment</button>
    </div>

    <!-- Card Payment Form -->
    <div id="cardForm" class="form-section active">
        <form action="PaymentSuccess.jsp" method="post">
            <label for="cardName">Card Holder Name</label>
            <input type="text" id="cardName" name="cardName" required>

            <label for="cardNumber">Card Number</label>
            <input type="text" id="cardNumber" name="cardNumber" maxlength="16" required>

            <label for="expiry">Expiry Date</label>
            <input type="text" id="expiry" name="expiry" placeholder="MM/YY" required>

            <label for="cvv">CVV</label>
            <input type="password" id="cvv" name="cvv" maxlength="3" required>

            <button type="submit" class="pay-btn">Pay Now</button>
        </form>
    </div>

    <!-- UPI Payment Section -->
    <div id="upiForm" class="form-section">
        <div class="qr-section">
            <label>Scan this QR to Pay</label><br>
            <img src="pics/qr-code.png" alt="UPI QR Code">
            <p><strong>or</strong></p>
            <form action="PaymentSuccess.jsp" method="post">
                <label for="upiId">Enter UPI ID</label>
                <input type="text" id="upiId" name="upiId" placeholder="example@upi" required>
                <button type="submit" class="pay-btn">Pay with UPI</button>
            </form>
        </div>
    </div>
</div>

<script>
    function switchMethod(method) {
        const cardBtn = document.getElementById('cardBtn');
        const upiBtn = document.getElementById('upiBtn');
        const cardForm = document.getElementById('cardForm');
        const upiForm = document.getElementById('upiForm');

        if (method === 'card') {
            cardForm.classList.add('active');
            upiForm.classList.remove('active');
            cardBtn.classList.add('active');
            upiBtn.classList.remove('active');
        } else {
            cardForm.classList.remove('active');
            upiForm.classList.add('active');
            cardBtn.classList.remove('active');
            upiBtn.classList.add('active');
        }
    }
</script>

</body>
</html>
