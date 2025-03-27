<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Disaster Zones - National Disaster Management Platform</title>
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
        }
        .disaster-zone-card {
            border: 2px solid #003366;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }
        .disaster-zone-card:hover {
            transform: scale(1.05);
        }
        .disaster-zone-card img {
            width: 100%;
            height: 250px;
            object-fit: cover;
            border-radius: 10px 10px 0 0;
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
            /* CSS End */
        
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
                        <a class="nav-link" href="organization.jsp">Partner Organizations</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="disasterzones.jsp">Disaster Zones</a>
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
            <h2 class="card-title">Disaster Zones</h2>
            <p class="card-text">Key regions currently affected by disasters, with ongoing response, preparedness, and mitigation efforts.</p>
        </div>
    </div>
</div>
    <!-- Flood-Prone Regions -->
    <div class="col-md-4 mb-4">
        <div class="card disaster-zone-card">
            <img src="./image/flood.jpg" alt="Flood Zones" class="card-img-top">
            <div class="card-body">
                <h3 class="card-title">
                    Flood-Prone Regions
                </h3>
                <p><strong>Affected Areas:</strong> Assam, Bihar, Uttar Pradesh</p>
                <p><strong>Impact:</strong> River overflow, severe waterlogging, displacement of communities</p>
                <p><strong>Safety Tips:</strong> Move to higher ground, avoid walking in floodwaters, stay updated on evacuation alerts.</p>
                <span class="badge bg-danger">High Alert</span>
                <a class="btn btn-primary btn-sm mt-2" href="https://ndma.gov.in/Natural-Hazards/Floods/Do-Donts">View Emergency Response</a>
            </div>
        </div>
    </div>

    <!-- Cyclone Warning -->
    <div class="col-md-4 mb-4">
        <div class="card disaster-zone-card">
            <img src="./image/cyclone.jpg" alt="Cyclone Warning" class="card-img-top">
            <div class="card-body">
                <h3 class="card-title">
                    Cyclone Warning
                </h3>
                <p><strong>Affected Areas:</strong> Odisha, West Bengal, Andhra Pradesh</p>
                <p><strong>Impact:</strong> Strong winds (120+ km/h), coastal flooding, heavy rainfall</p>
                <p><strong>Safety Tips:</strong> Stay indoors, secure loose objects, follow evacuation advisories.</p>
                <span class="badge bg-warning">Warning</span>
                <a class="btn btn-primary btn-sm mt-2" href="https://gidm.gujarat.gov.in/sites/default/files/educate_your_self_document/Cyclone%20Do%E2%80%99s%20and%20Don%E2%80%99ts.pdf">Check Precautions</a>
            </div>
        </div>
    </div>

    <!-- Landslide Risk -->
    <div class="col-md-4 mb-4">
        <div class="card disaster-zone-card">
            <img src="./image/earthquake.jpg" alt="Landslide Risk" class="card-img-top">
            <div class="card-body">
                <h3 class="card-title">
                  Landslide Risk
                </h3>
                <p><strong>Affected Areas:</strong> Himachal Pradesh, Uttarakhand, Northeast India</p>
                <p><strong>Impact:</strong> Rockfall, roadblocks, disruption of communication networks</p>
                <p><strong>Safety Tips:</strong> Avoid travel near slopes, listen to local warnings, stay in safe zones.</p>
                <span class="badge bg-secondary">Monitoring</span>
                <a class="btn btn-primary btn-sm mt-2" href="https://www.redcross.org/get-help/how-to-prepare-for-emergencies/types-of-emergencies/landslide.html?srsltid=AfmBOop9Bau11I4AFF_nlatF4fLefuHdAdxA4KLhdb_FJC_QX5m-aIez">View Safety Measures</a>
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