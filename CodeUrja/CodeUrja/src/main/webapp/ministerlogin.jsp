<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Agency Login - National Disaster Management Platform</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css" rel="stylesheet">
    <script>
    window.history.forward();
    function preventBack() {
        window.history.forward();
    }
    setTimeout("preventBack()", 0);
    window.onunload = function () { null };
</script>
    <style>
        /* CSS Start*/
    
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
            /* CSS End*/
        
    </style>
</head>
<body>
     <div class="container-fluid bg-light py-2 text-center header-container">
        <img src="./image/ndma.jpg" alt="NDMA Logo" class="header-logo header-left-logo">
        <img src="./image/image1.jpg" alt="Emblem of India" class="emblem-logo">
        <span class="h4 text-dark">भारत सरकार | Government of India</span>
        <img src="./image/azadi.jpg" alt="Home Ministry Logo" class="header-logo header-right-logo">
    </div>


   
<nav class="navbar navbar-expand-lg navbar-dark navbar-gov">
        <div class="container-fluid">
            <a class="navbar-brand" href="dashboard.html">
                <i class="bi bi-shield-fill me-2"></i>National Disaster Management Platform
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="maindash.jsp">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="organization.jsp">Partner Organizations</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="disasterzones.jsp">Disaster Zones</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="emergecycont.jsp">Emergency Contacts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="volunteer_login.jsp">Volunteer Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Agency Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="login-container">
            <h2 class="text-center mb-4">Minister PA Login</h2>
            <% 
            String error = request.getParameter("error");
            if ("invalid".equals(error)) {
        %>
            <p class="error">Invalid username or password!</p>
        <% } %>
<form action="MinisterLoginServlet" method="post">
                <div class="mb-3">
                    <label for="username" class="form-label">Authorized Code</label>
                    <input type="text" name="username" class="form-control" id="agencyCode" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" name="password" class="form-control" id="password" required>
                </div>
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="rememberMe">
                    <label class="form-check-label" for="rememberMe">Remember me</label>
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-gov btn-lg">Login</button>
                </div>
                <div class="text-center mt-3">
                    <a href="#" class="text-decoration-none">Forgot Authorizied Credentials?</a>
                </div>
                <div class="text-center mt-3">
                    <p>New Agency? <a href="#" class="text-decoration-none">Register Here</a></p>
                </div>
            </form>
        </div>
    </div>

    <footer class="bg-dark text-white text-center py-4 mt-4">
        <div class="container">
           <p>© 2024 National Disaster Management Platform, Government of India</p>
        <p>Developed by Team ByteSquad in Code Urja 1.0 Hackathon</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>