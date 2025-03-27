<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Emergency Contacts - National Disaster Management Platform</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        /* CSS Start*/
    
        body {
            background-color: #f0f4f8;
            font-family: 'Arial', sans-serif;
        }
        .navbar-gov {
            background-color: #003366;
        }
        .card-gov {
            border-left: 5px solid #003366;
        }
        .emblem-logo {
            max-height: 50px;
            margin-right: 10px;
        }
        .national-highlight {
            background-color: #f0f8ff;
            border-left: 4px solid #003366;
            padding: 20px;
            border-radius: 10px;
        }
        .emergency-contact-card {
            border: 2px solid #003366;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            background-color: #ffffff;
            transition: all 0.3s ease-in-out;
        }
        .emergency-contact-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
        }
        .emergency-contact-card h3 {
            color: #003366;
            font-size: 20px;
        }
        .emergency-contact-card p {
            font-size: 16px;
            color: #444;
        }
        .footer-gov {
            background-color: #003366;
            color: white;
            padding: 15px 0;
            text-align: center;
        }
        .login-btn {
            display: block;
            width: 100%;
            margin-top: 10px;
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

    <div class="container-fluid mt-4">
        <div class="row">
            <div class="col-12">
                <div class="card national-highlight mb-4">
                    <div class="card-body">
                        <h2 class="card-title">Emergency Contact Information</h2>
                        <p class="card-text">Essential helpline numbers for immediate assistance and disaster response coordination.</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- National Helpline -->
                <div class="col-md-4 mb-4">
                    <div class="card emergency-contact-card">
                        <div class="card-body">
                            <h3 class="card-title"><i class="bi bi-telephone-fill"></i> National Helpline</h3>
                            <p><strong>Emergency Response:</strong> 112</p>
                            <p><strong>Disaster Management:</strong> 1077</p>
                        </div>
                    </div>
                </div>
                
                <!-- Minister PA Login Card -->
                <div class="col-md-4 mb-4">
                    <div class="card emergency-contact-card text-center">
                        <div class="card-body">
                            <h3 class="card-title"><i class="bi bi-person-badge-fill"></i> Minister PA Login</h3>
                            <p><strong>Government of India - Ministry of Home Affairs</strong></p>
                            <a href="ministerlogin.jsp" class="btn btn-primary" style="
                                background-color: #003366; 
                                border-color: #003366;
                                padding: 10px 20px;
                                border-radius: 5px;
                                font-size: 16px;
                                transition: 0.3s;">
                                Login
                            </a>
                        </div>
                    </div>
                </div>

                <!-- NDRF Contact -->
                <div class="col-md-4 mb-4">
                    <div class="card emergency-contact-card">
                        <div class="card-body">
                            <h3 class="card-title"><i class="bi bi-shield-lock-fill"></i> NDRF Contacts</h3>
                            <p><strong>Regional Helpline:</strong> +91-11-26701728</p>
                            <p><strong>Emergency Contact:</strong> +91-9711077372</p>
                            <p> </p>
                            <p>  </p>
                        </div>
                    </div>
                </div>

                <!-- Indian Disaster Response Agencies -->
                <div class="col-md-4 mb-4">
                    <div class="card emergency-contact-card">
                        <div class="card-body">
                            <h3 class="card-title"><i class="bi bi-lightning-fill"></i> Indian Disaster Response Agencies</h3>
                            <p><strong>National Disaster Response Force (NDRF):</strong> +91-9711077372</p>
                            <p><strong>Indian Red Cross Society:</strong> +91-11-23716441</p>
                            <p><strong>Fire and Rescue Services:</strong> 101</p>
                        </div>
                    </div>
                </div>

                <!-- Health Emergency Services -->
                <div class="col-md-4 mb-4">
                    <div class="card emergency-contact-card">
                        <div class="card-body">
                            <h3 class="card-title"><i class="bi bi-hospital-fill"></i> Health Emergency Services</h3>
                            <p><strong>Ambulance:</strong> 102</p>
                            <p><strong>COVID-19 Helpline:</strong> 1075</p>
                            <p><strong>National Health Mission:</strong> +91-11-23061469</p>
                        </div>
                    </div>
                </div>
                
                <!-- Disaster Complaint Card -->
                <div class="col-md-4 mb-4">
                    <div class="card emergency-contact-card">
                        <div class="card-body">
                            <h3 class="card-title"><i class="bi bi-exclamation-triangle-fill"></i> Disaster Complaint</h3>
                            <p><strong>Disaster Reporting:</strong> Immediate Assistance

                                                                    <p>Helpline: 1077 </p></p>
                           
                            <a href="reportdisaster.jsp" class="btn btn-primary" style="
                                background-color: #003366; 
                                border-color: #003366;
                                padding: 10px 20px;
                                border-radius: 5px;
                                font-size: 16px;
                                transition: 0.3s;">
                                Report Disaster
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <footer class="footer-gov">
        <div class="container">
            <p>© 2024 National Disaster Management Platform, Government of India</p>
            <p>Committed to Protecting Lives and Ensuring National Resilience</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>