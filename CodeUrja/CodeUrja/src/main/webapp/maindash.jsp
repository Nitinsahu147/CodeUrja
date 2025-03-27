<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>National Disaster Management Platform - Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css" rel="stylesheet">
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
        
        /* Consistent Card Styling */
        .card-gov, .dashboard-card {
            height: 100%;
            display: flex;
            flex-direction: column;
            border: 2px solid #003366;
            border-radius: 8px;
            background-color: #f8f9fa;
            transition: background-color 0.3s ease, transform 0.2s ease-in-out;
        }
        
        .card-gov:hover, .dashboard-card:hover {
            background-color: #e9ecef;
            transform: translateY(-3px);
        }
        
        .card-gov .card-header, .dashboard-card .card-body {
            text-align: center;
            padding: 15px;
        }
        
        .card-gov .card-header {
            background-color: #003366;
            color: white;
            font-weight: bold;
        }
        
        .dashboard-card .feature-icon {
            font-size: 2.5rem;
            color: #003366;
            margin-bottom: 10px;
        }
        
        .dashboard-card .card-title {
            font-size: 1.2rem;
            color: #003366;
            font-weight: bold;
            margin-bottom: 10px;
        }
        
        .dashboard-card .card-text, 
        .card-gov .card-body p {
            font-size: 0.9rem;
            color: #333;
        }
        
        .card-gov .card-body h3 {
            font-size: 1.5rem;
            color: #003366;
            font-weight: bold;
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
            <a class="navbar-brand" href="#">
                <i class="bi bi-shield-fill me-2"></i>National Disaster Management Platform
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="maindash.jsp">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="organization.jsp">Partner Organizations</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="disasterzones.jsp">Disaster Zones</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="emergecycont.jsp">Emergency Contacts</a>
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
                        <h2 class="card-title">National Disaster Management Dashboard</h2>
                        <p class="card-text">Comprehensive real-time platform providing critical insights, emergency alerts, and coordinated response mechanisms for effective disaster management across the nation, ensuring swift and strategic interventions.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card card-gov">
                    <div class="card-header">Active Disaster Zones</div>
                    <div class="card-body">
                        <h3>12</h3>
                        <p>Currently monitored disaster-affected regions requiring immediate strategic intervention and emergency support.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card card-gov">
                    <div class="card-header">Population Impacted</div>
                    <div class="card-body">
                        <h3>4,75,300</h3>
                        <p>Individuals across multiple regions requiring comprehensive emergency assistance and rapid rehabilitation support.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card card-gov">
                    <div class="card-header">Relief Organizations</div>
                    <div class="card-body">
                        <h3>56</h3>
                        <p>Government and NGO teams collaboratively providing integrated relief, rescue, and rehabilitation services nationwide.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card dashboard-card h-100">
                    <div class="card-body">
                        <div class="feature-icon">⚠</div>
                        <h3 class="card-title">Disaster Alerts</h3>
                        <p class="card-text">Receive comprehensive real-time disaster warnings, critical notifications, and official alerts from the National Disaster Management Authority, ensuring timely public awareness and preparedness.</p>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4 mb-4">
                <div class="card dashboard-card h-100">
                    <div class="card-body">
                        <div class="feature-icon">🚑</div>
                        <h3 class="card-title">Emergency Response Teams</h3>
                        <p class="card-text">Monitor and track active specialized response teams deployed for immediate rescue operations, medical support, and comprehensive relief efforts across affected regions and areas.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card dashboard-card h-100">
                    <div class="card-body">
                        <div class="feature-icon">🏠</div>
                        <h3 class="card-title">Evacuation Centers</h3>
                        <p class="card-text">Access comprehensive information about government-approved emergency shelters, providing safe refuges for displaced citizens with essential amenities and support services.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card dashboard-card h-100">
                    <div class="card-body">
                        <div class="feature-icon">📊</div>
                        <h3 class="card-title">Disaster Risk Assessment</h3>
                        <p class="card-text">Advanced geospatial analysis of high-risk zones, vulnerability mapping, and predictive modeling to enhance strategic disaster preparedness and mitigation planning.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card dashboard-card h-100">
                    <div class="card-body">
                        <div class="feature-icon">📜</div>
                        <h3 class="card-title">Government Policies</h3>
                        <p class="card-text">Comprehensive repository of updated government disaster management regulations, legal frameworks, and emergency response guidelines for comprehensive national resilience.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card dashboard-card h-100">
                    <div class="card-body">
                        <div class="feature-icon">📄</div>
                        <h3 class="card-title">Disaster Reports</h3>
                        <p class="card-text">Detailed analytical reports documenting recent disaster incidents, comprehensive damage assessments, and strategic government response mechanisms.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card dashboard-card h-100">
                    <div class="card-body">
                        <div class="feature-icon">🤝</div>
                        <h3 class="card-title">Citizen Participation</h3>
                        <p class="card-text">Empowering citizens through structured engagement programs, training modules, and collaborative platforms for effective disaster relief and community resilience initiatives.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card dashboard-card h-100">
                    <div class="card-body">
                        <div class="feature-icon">📅</div>
                        <h3 class="card-title">Disaster Drills</h3>
                        <p class="card-text">Comprehensive schedules of upcoming emergency preparedness mock drills, community training exercises, and strategic response simulations across different regions.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card dashboard-card h-100">
                    <div class="card-body">
                        <div class="feature-icon">💰</div>
                        <h3 class="card-title">Relief Fund Allocation</h3>
                        <p class="card-text">Transparent tracking of government disaster relief fund distribution, detailing strategic resource allocation for immediate assistance and long-term rehabilitation.</p>
                    </div>
                </div>
            </div>
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