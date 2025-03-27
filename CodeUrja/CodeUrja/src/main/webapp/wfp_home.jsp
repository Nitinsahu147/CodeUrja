<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Welcome to WFP Disaster Response</title>
    <style>
        /* CSS Start*/
    
        body {
            font-family: Arial, sans-serif;
            background-color: white; /* White Background */
            margin: 0;
            padding: 0;
            text-align: center;
        }
        .container {
            width: 60%;
            margin: 100px auto;
            padding: 30px;
            background: white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h1 {
            color: #2e7d32; /* Dark Green */
        }
        p {
            font-size: 18px;
            color: #4caf50; /* Medium Green */
        }
        .button {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            background-color: #388e3c; /* Green Button */
            color: white;
            padding: 12px 20px;
            font-size: 16px;
            border-radius: 5px;
            transition: 0.3s;
        }
        .button:hover {
            background-color: #1b5e20; /* Darker Green on Hover */
        }
            /* CSS end*/
        
    </style>
</head>
<body>
    <div class="container">
        <h1>🌱 Emergency Food Aid & Disaster Response</h1>
        <p>Together, we bring hope and relief in times of crisis.</p>
        <p>Our mission is to ensure food security and assist affected communities with essential supplies.</p>
        
        <a href="foodStock.jsp" class="button">Check Food Stock</a>
        <a href="addFoodStock.jsp" class="button">Add Emergency Stock</a>
        <a href="wfp_dashboard.jsp" class="button">Assign Tasks</a>
    </div>
</body>
</html>
