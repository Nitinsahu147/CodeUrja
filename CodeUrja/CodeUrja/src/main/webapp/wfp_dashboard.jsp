<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*, java.sql.*" %>
<%
    HttpSession session1 = request.getSession(false);
    if (session1 == null || session1.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
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
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: auto;
            text-align: center;
        }
        .hero {
            background: white;
            padding: 20px;
            border-radius: 10px;
            margin-top: 20px;
        }
        .hero img {
            width: 100px;
        } 
        .section {
            background: white;
            padding: 20px;
            margin-top: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .section:hover {
            transform: translateY(-5px);
        }
        .button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
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
        
        th{
        	background-color: #003366;
        }
        .button{
        	        	background-color: #003366;
        	
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
                        <a class="nav-link"  href="wfp_home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="wfp_dashboard.jsp">Assign Tasks</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="addFoodStock.jsp">Add Stock</a>
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
        <div class="hero">
            <img src="./image/food.webp" alt="Relief Logo">
            <h1>Food Supply & Distribution</h1>
            <p>Coordinating disaster relief efficiently.</p>
        </div>

        <!-- Assigned Food Distribution Tasks -->
        <div class="section">
            <h2>Assigned Food Distribution Tasks</h2>
            <table>
                <thead>
                    <tr>
                        <th>Volunteer</th>
                        <th>Task</th>
                        <th>Location</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Connection conn = null;
                        PreparedStatement pstmt = null;
                        ResultSet rs = null;
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

                            String query = "SELECT name, task, location FROM volunteer_tasks ORDER BY id DESC";
                            pstmt = conn.prepareStatement(query);
                            rs = pstmt.executeQuery();

                            boolean hasTasks = false;
                            while (rs.next()) {
                                hasTasks = true;
                    %>
                    <tr>
                        <td><%= rs.getString("name") %></td>
                        <td><%= rs.getString("task") %></td>
                        <td><%= rs.getString("location") %></td>
                    </tr>
                    <%
                            }
                            if (!hasTasks) {
                    %>
                    <tr>
                        <td colspan="3">No tasks assigned yet.</td>
                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            if (rs != null) rs.close();
                            if (pstmt != null) pstmt.close();
                            if (conn != null) conn.close();
                        }
                    %>
                </tbody>
            </table>
        </div>

        <!-- Assign Volunteer Task Section -->
        <div class="section">
            <h2>Assign Food Distribution Task</h2>
            <form action="assignTask.jsp" method="post">
                <select name="volunteer" required>
                    <option value="">Select Volunteer</option>
                    <%
                        Connection conn2 = null;
                        PreparedStatement pstmt2 = null;
                        ResultSet rs2 = null;
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

                            String query2 = "SELECT name FROM volunteers";
                            pstmt2 = conn2.prepareStatement(query2);
                            rs2 = pstmt2.executeQuery();

                            while (rs2.next()) {
                    %>
                    <option value="<%= rs2.getString("name") %>"><%= rs2.getString("name") %></option>
                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            if (rs2 != null) rs2.close();
                            if (pstmt2 != null) pstmt2.close();
                            if (conn2 != null) conn2.close();
                        }
                    %>
                </select>
                <input type="text" name="task" placeholder="Enter Task Details" required>
                <input type="text" name="location" placeholder="Enter Location" required>
                <button type="submit" class="button">Assign Task</button>
            </form>
        </div>

















 <div class="section">
            <h2>Assigned Food Distribution Tasks</h2>           
            
            <table>
                <thead>
                    <tr>
                        <th>Item ID</th>
            <th>Food Item</th>
            <th>Quantity (kg)</th>
            <th>Expiry Date</th>
            <th>Storage Location</th>
            <th>Supplier</th>
                    </tr>
                </thead>
                <tbody>
                   
                     <tr>
            <td>102</td>
            <td>Wheat</td>
            <td>300</td>
            <td>2025-07-20</td>
            <td>Warehouse B</td>
            <td>XYZ Distributors</td>
        </tr>
        <tr>
            <td>103</td>
            <td>Pulses</td>
            <td>200</td>
            <td>2025-05-10</td>
            <td>Storage Unit C</td>
            <td>Global Foods</td>
        </tr>
        <tr>
            <td>104</td>
            <td>Cooking Oil</td>
            <td>100</td>
            <td>2025-08-05</td>
            <td>Warehouse A</td>
            <td>Sunshine Oils</td>
        </tr>
        <tr>
            <td>105</td>
            <td>Sugar</td>
            <td>150</td>
            <td>2025-09-12</td>
            <td>Warehouse D</td>
            <td>Sweet Harvest</td>
        </tr>
                   
                </tbody>
            </table>
            </div>
            
            
 

    </div>
</body>
</html>
