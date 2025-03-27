<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Partner Organizations - National Disaster Management Platform</title>
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
    padding: 15px;
    border-radius: 5px;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
}

.agency-card {
    border: 2px solid #003366;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    transition: transform 0.3s, box-shadow 0.3s;
    background: #ffffff;
}

.agency-card:hover {
    transform: scale(1.05);
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.25);
}

.card-body {
    padding: 20px;
}

.feature-icon {
    font-size: 3rem;
    margin-bottom: 10px;
    color: #003366;
}

.operations-list {
    list-style-type: none;
    padding-left: 0;
    font-size: 0.9rem;
}

.operations-list li {
    padding: 5px 0;
    color: #333;
}

footer {
    background-color: #003366;
    color: white;
    padding: 15px;
    font-size: 0.9rem;
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
    /* CSS end*/

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
                        <a class="nav-link" href="maindash.jsp">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="organization.jsp">Partner Organizations</a>
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
                    <h2 class="card-title">Partner Organizations</h2>
                    <p class="card-text">Key organizations working for disaster response, preparedness, and mitigation.</p>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- NDRF -->
            <div class="col-md-4 mb-4">
                <div class="card agency-card">
                    <div class="card-body text-center">
                        <div class="feature-icon">🚑</div>
                        <h3 class="card-title">National Disaster Response Force (NDRF)</h3>
                        <p class="card-text">India’s frontline force for disaster response, specializing in rescue and relief operations.</p>
                        <h5>Major Operations:</h5>
                        <ul class="operations-list">
                            <li>Earthquake rescue missions in Nepal</li>
                            <li>Flood relief operations in Assam</li>
                            <li>Cyclone response in West Bengal</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Indian Meteorological Department -->
            <div class="col-md-4 mb-4">
                <div class="card agency-card">
                    <div class="card-body text-center">
                        <div class="feature-icon">🌪</div>
                        <h3 class="card-title">Indian Meteorological Department (IMD)</h3>
                        <p class="card-text">Responsible for weather forecasting and early warning systems for natural disasters.</p>
                        <h5>Key Contributions:</h5>
                        <ul class="operations-list">
                            <li>Early warning alerts for cyclones</li>
                            <li>Weather predictions for flood-prone areas</li>
                            <li>Real-time earthquake monitoring</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- National Institute of Disaster Management -->
            <div class="col-md-4 mb-4">
                <div class="card agency-card">
                    <div class="card-body text-center">
                        <div class="feature-icon">📚</div>
                        <h3 class="card-title">National Institute of Disaster Management (NIDM)</h3>
                        <p class="card-text">A premier institute that focuses on disaster preparedness, training, and policy research.</p>
                        <h5>Major Initiatives:</h5>
                        <ul class="operations-list">
                            <li>Training for disaster first responders</li>
                            <li>National-level policy research</li>
                            <li>Community awareness programs</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Indian Red Cross Society -->
            <div class="col-md-4 mb-4">
                <div class="card agency-card">
                    <div class="card-body text-center">
                        <div class="feature-icon">❤</div>
                        <h3 class="card-title">Indian Red Cross Society <br> (IRCS) </h3>
                        <p class="card-text">A humanitarian organization providing emergency relief, medical aid, and shelter.</p>
                        <h5>Disaster Relief Efforts:</h5>
                        <ul class="operations-list">
                            <li>COVID-19 medical assistance</li>
                            <li>Flood relief camps in Kerala</li>
                            <li>Earthquake relief in Gujarat</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- State Disaster Response Fund -->
            <div class="col-md-4 mb-4">
                <div class="card agency-card">
                    <div class="card-body text-center">
                        <div class="feature-icon">🏛</div>
                        <h3 class="card-title">State Disaster Response Fund (SDRF)</h3>
                        <p class="card-text">Coordinates state-level disaster relief, evacuation, and mitigation programs.</p>
                        <h5>State-Level Efforts:</h5>
                        <ul class="operations-list">
                            <li>Relief efforts during Maharashtra floods</li>
                            <li>Wildfire management in Uttarakhand</li>
                            <li>Drought assistance in Rajasthan</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- United Nations Disaster Relief -->
            <div class="col-md-4 mb-4">
                <div class="card agency-card">
                    <div class="card-body text-center">
                        <div class="feature-icon">🌍</div>
                        <h3 class="card-title">United Nations Disaster Relief (UNDRR)</h3>
                        <p class="card-text">An international agency supporting India’s disaster risk reduction and resilience-building.</p>
                        <h5>Key Programs:</h5>
                        <ul class="operations-list">
                            <li>Climate change adaptation strategies</li>
                            <li>Funding for disaster-prone communities</li>
                            <li>Technical expertise in disaster mitigation</li>
                        </ul>
                    </div>
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