<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>

<%
    // Check if the session exists
    HttpSession sessionObj = request.getSession(false);
    if (sessionObj == null || sessionObj.getAttribute("volunteerName") == null) {
        response.sendRedirect("volunteer_login.jsp");
        return;
    }

    String volunteerName = (String) sessionObj.getAttribute("volunteerName");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Volunteer Home | CodeUrja</title>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    
    <!-- Icons & Fonts -->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    
    <!-- External CSS (Ensures navbar styles remain unchanged) -->

    <style>
        /* CSS Start*/
    
        /* Background & Font Styling */
        body {
            background-color: #f8f9fa;
            font-family: "Work Sans", Arial, sans-serif;
        }

        /* Container for Welcome Message */
        .volunteer-container {
            max-width: 600px;
            margin: 60px auto;
            padding: 25px;
            text-align: center;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Welcome Text */
        .welcome-text {
            font-size: 26px;
            font-weight: bold;
            color: #333;
        }

        /* Motivational Quote */
        .motivation-text {
            font-size: 18px;
            color: #666;
            margin-top: 15px;
            font-style: italic;
        }

        /* Ensure Navbar Styling Doesn't Change */
        nav {
            z-index: 1000;
            position: relative;
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
        .login-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 30px;
            border: 2px solid #003366;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            background-color: white;
        }
        .btn-gov {
            background-color: #003366;
            color: white;
            border: none;
        }
        .btn-gov:hover {
            background-color: #004080;
            color: white;
        }
        .form-control:focus {
            border-color: #003366;
            box-shadow: 0 0 0 0.2rem rgba(0, 51, 102, 0.25);
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
               .signup{
        	border: 1px solid white;
        	        	margin-left: 800px;
       
        	border-radius: 18px;
        }
        .signup-btn{
        	text-decoration-line: none;
        	color: #fff;
        }
        .signup-btn:hover{
        	text-decoration-line: none;
        	    /* CSS end*/
        	
    </style>
</head>
<body>

<!-- Navbar -->
<div class="container-fluid bg-light py-2 text-center header-container">
        <img src="./image/ndma.jpg" alt="NDMA Logo" class="header-logo header-left-logo">
        <img src="./image/image1.jpg" alt="Emblem of India" class="emblem-logo">
        <span class="h4 text-dark">भारत सरकार | Government of India</span>
        <img src="./image/azadi.jpg" alt="Home Ministry Logo" class="header-logo header-right-logo">
    </div>

      <nav class="navbar navbar-expand-lg navbar-dark navbar-gov">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <i class="bi bi-shield-fill me-2"></i>Volunteer Portal
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active"  href="volunteer_home.jsp">Home</a></li>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="volunteer_dashboard.jsp">Assigned Disaster</a></li>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="trainingResources.jsp">Training & Resources</a></li>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="my_profile.jsp">My Profile</a></li>
                    </li>
                   
                </ul>
                 <form class="form-inline">
                <button class="btn signup" type="submit">
                    <a href="VolunteerLogoutServlet" class="signup-btn">Logout</a>
                </button>
            </form>
            </div>
        </div>
    </nav>
    
    <!-- Welcome Card -->
<div class="volunteer-container">
    <h2 class="welcome-text">Welcome, <%= volunteerName %>! 👋</h2>
    <p class="motivation-text">
        "The best way to find yourself is to lose yourself in the service of others."  
        Thank you for your dedication to helping those in need. Your work brings hope and relief  
        to people facing disasters, and your kindness makes the world a better place.  
        Keep shining and making an impact! 💙
    </p>
</div>

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
