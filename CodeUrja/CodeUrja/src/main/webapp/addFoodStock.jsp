<%@ page import="java.sql.*" %>
<%@ include file="dbConnection.jsp" %>

<%
    if(request.getParameter("submit") != null) {
        String foodItem = request.getParameter("foodItem");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String expiryDate = request.getParameter("expiryDate");
        String storageLocation = request.getParameter("storageLocation");
        String supplier = request.getParameter("supplier");

        Connection con = getConnection();
        String query = "INSERT INTO food_stock (food_item, quantity, expiry_date, storage_location, supplier) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, foodItem);
        ps.setInt(2, quantity);
        ps.setString(3, expiryDate);
        ps.setString(4, storageLocation);
        ps.setString(5, supplier);
        ps.executeUpdate();
        con.close();
        
        response.sendRedirect("foodStock.jsp");
    }
%>

<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Concert+One&family=Kanit:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Lilita+One&family=Permanent+Marker&family=Radio+Canada+Big:ital,wght@0,400..700;1,400..700&family=Stylish&family=Work+Sans:ital,wght@0,100..900;1,100..900&display=swap"
    rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
    integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,0,0">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
      <title>Food Supply & Distribution</title>
    <link rel="stylesheet" type="text/css" href="styles.css">  
      <style>
          /* CSS Start*/
      
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 40%;
            margin: 50px auto;
            padding: 20px;
            background: white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h2 {
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            font-weight: bold;
            margin-top: 10px;
            text-align: left;
        }
        input {
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            cursor: pointer;
            font-size: 18px;
            margin-top: 15px;
            border: none;
            padding: 10px;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        .back-button {
            display: inline-block;
            margin-top: 15px;
            text-decoration: none;
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
        }
        .back-button:hover {
            background-color: #0056b3;
        }
                body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
            max-width: 600px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
         }
        .signup-btn {
        	color: #000;
        }
           body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .card {
            margin-bottom: 20px;
            border-radius: 10px;
        }
        .open {
            color: green;
            font-weight: bold;
        }
        .closed {
            color: red;
            font-weight: bold;
        }
        .signup-btn {
        	color: #000;
        }
        
         body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .card {
            margin-bottom: 20px;
            border-radius: 10px;
        }
        .card h5 {
            color: #dc3545;
        }
         }
        .signup-btn {
        	color: #000;
        }
              body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .card {
            margin-bottom: 20px;
            border-radius: 10px;
        }
        .card h5 {
            
            color: #007bff;
        }
         }
        .signup-btn {
        	color: #000;
        }
        
         body {
            background-color: #f0f4f8;
            font-family: Arial, sans-serif;
        }
        .navbar-gov {
            background-color: #003366;
        }
        .emblem-logo {
            max-height: 50px;
            margin-right: 10px;
        }
        .header-logo {
            max-height: 50px;
            margin: 0 10px;
        }
        .header-container {
            position: relative;
        }
        .header-left-logo {
            position: absolute;
            height: 100px;
            width: 100px;
            left: 20px;
            top: 50%;
            transform: translateY(-50%);
        }
        .header-right-logo {
            position: absolute;
            right: 20px;
            top: 50%;
            transform: translateY(-50%);
        }
        
        /* New Form Styles */
        .admin-form {
            background-color: #ffffff;
            border: 1px solid #003366;
            border-radius: 8px;
            padding: 20px;
            margin: 20px 0;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        .admin-form h3 {
            color: #003366;
            border-bottom: 2px solid #003366;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
        .admin-form label {
            color: #003366;
            font-weight: bold;
            margin-top: 10px;
        }
        .admin-form input, 
        .admin-form select {
            border: 1px solid #003366;
            border-radius: 4px;
            padding: 8px;
            width: 100%;
            margin-bottom: 15px;
        }
        .admin-form button {
            background-color: #003366;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .admin-form button:hover {
            background-color: #004080;
        }
        .table-responsive {
            margin-top: 20px;
        }
           .signup{
        	border: 1px solid white;
        	border-radius: 18px;
        	margin-left: 940px;
        }
        .signup-btn{
        	text-decoration-line: none;
        	color: #fff;
        }
        .signup-btn:hover{
        	text-decoration-line: none;
        	color: #fff;
        }
            /* CSS End*/
        
    </style>
</head>
<body>
  <div class="container-fluid bg-light py-2 text-center header-container">
        <img src="./image/ndma.jpg" alt="NDMA Logo" class="header-logo header-left-logo">
        <img src="./image/image1.jpg" alt="Emblem of India" class="emblem-logo">
        <span class="h4 text-dark">Government of India</span>
        <img src="./image/azadi.jpg" alt="Home Ministry Logo" class="header-logo header-right-logo">
    </div>
    
    <nav class="navbar navbar-expand-lg navbar-dark navbar-gov">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <i class="bi bi-shield-fill me-2"></i>WFP Portal
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="wfp_home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="wfp_dashboard.jsp">Assign Tasks</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="addFoodStock.jsp">Add Stock</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="foodStock.jsp">Manage Stock</a>
                    </li>
                   
                </ul>
                 <form class="form-inline my-2 my-lg-0">
        <button class="btn signup" type="submit"><a href="login.jsp" class="signup-btn">Logout</a></button>
      </form>
                
            </div>
        </div>
    </nav>
    <div class="container">
        <h2>Add New Food Stock</h2>
        <form method="post">
            <label>Food Item:</label>
            <input type="text" name="foodItem" required>
            
            <label>Quantity:</label>
            <input type="number" name="quantity" required>
            
            <label>Expiry Date:</label>
            <input type="date" name="expiryDate" required>
            
            <label>Storage Location:</label>
            <input type="text" name="storageLocation" required>
            
            <label>Supplier:</label>
            <input type="text" name="supplier" required>
            
            <input type="submit" name="submit" value="Add Stock">
        </form>

    </div>
</body>
</html>
