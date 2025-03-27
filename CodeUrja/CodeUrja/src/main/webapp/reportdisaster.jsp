<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Disaster Report - National Disaster Management Platform</title>
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
        .form-container {
            background-color: #ffffff;
            border: 2px solid #003366;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .form-title {
            color: #003366;
            border-bottom: 2px solid #003366;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
        .btn-submit {
            background-color: #003366;
            color: white;
            border: none;
            transition: all 0.3s ease;
        }
        .btn-submit:hover {
            background-color: #004080;
            transform: scale(1.02);
        }
        .header-logo {
            max-height: 50px;
            margin: 0 10px;
        }
        .header-container {
            position: relative;
        }
        .footer-gov {
            background-color: #003366;
            color: white;
            padding: 15px 0;
            text-align: center;
        }
        .aadhaar-section {
            background-color: #f0f8ff;
            border: 1px solid #003366;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 20px;
        }
        .toast-container {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 1050;
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
    
    <br><br>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="form-container">
                    <h2 class="text-center form-title"><i class="bi bi-exclamation-triangle-fill me-2"></i>Disaster Report</h2>
                    
<form action="https://api.web3forms.com/submit" method="POST">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="name" class="form-label">Full Name</label>
                                <input type="hidden" name="access_key" value="fb4e6eb0-e710-42a2-9314-0d08aec3c159">
                                <input type="text" class="form-control" id="name" name="name" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="email" class="form-label">Email Address</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="mobile" class="form-label">Mobile Number</label>
                                <input type="tel" class="form-control" id="mobile" name="mobile" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="age" class="form-label">Age</label>
                                <input type="number" class="form-control" id="age" name="age" min="18" max="120" required>
                            </div>
                        </div>

                        <div class="aadhaar-section">
                            <h4 class="mb-3"><i class="bi bi-credit-card-2-front me-2"></i>Aadhaar Card Details</h4>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="aadhaar_number" class="form-label">Aadhaar Number</label>
                                    <input type="text" class="form-control" id="aadhaar_number" name="aadhaar_number" 
                                           pattern="[0-9]{12}" placeholder="12-digit Aadhaar Number" required>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="aadhaar_front" class="form-label">Aadhaar Card (Front)</label>
                                    <input type="file" class="form-control" id="aadhaar_front" name="aadhaar_front" 
                                           accept="image/*,.pdf" required>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="aadhaar_back" class="form-label">Aadhaar Card (Back)</label>
                                <input type="file" class="form-control" id="aadhaar_back" name="aadhaar_back" 
                                       accept="image/*,.pdf" required>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="applicant_address" class="form-label">Applicant Address</label>
                            <textarea class="form-control" id="applicant_address" name="applicant_address" rows="3" required></textarea>
                        </div>

                        <div class="row">
                            <div class="col-md-4 mb-3">
                                <label for="state" class="form-label">State</label>
                                <select class="form-select" id="state" name="state" required>
                                    <option value="">Select State</option>
                                    <option value="Delhi">Delhi</option>
                                    <option value="Maharashtra">Maharashtra</option>
                                    <option value="Karnataka">Karnataka</option>
                                    <!-- Add more states as needed -->
                                </select>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="city" class="form-label">City</label>
                                <input type="text" class="form-control" id="city" name="city" required>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="pincode" class="form-label">Pincode</label>
                                <input type="text" class="form-control" id="pincode" name="pincode" pattern="[0-9]{6}" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="disaster_type" class="form-label">Type of Disaster</label>
                                <select class="form-select" id="disaster_type" name="disaster_type" required>
                                    <option value="">Select Disaster Type</option>
                                    <option value="flood">Flood</option>
                                    <option value="earthquake">Earthquake</option>
                                    <option value="cyclone">Cyclone</option>
                                    <option value="landslide">Landslide</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="disaster_address" class="form-label">Disaster Location Address</label>
                                <textarea class="form-control" id="disaster_address" name="disaster_address" rows="3" required></textarea>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="disaster_image" class="form-label">Upload Disaster Image</label>
                            <input type="file" class="form-control" id="disaster_image" name="disaster_image" accept="image/*" required>
                        </div>

                        <div class="text-center">
                        <input type="hidden" name="redirect" value="https://web3forms.com/success">
                            <button type="submit" class="btn btn-submit px-4 py-2">
                                <i class="bi bi-send-fill me-2 btn"></i>Submit Disaster Report
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Success Toast -->
    <div class="toast-container">
        <div class="toast" id="successToast" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header bg-success text-white">
                <strong class="me-auto"><i class="bi bi-check-circle-fill me-2"></i>Success</strong>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body">
                Your disaster report has been submitted successfully!
            </div>
        </div>
    </div>

    <footer class="footer-gov mt-4">
        <div class="container">
           <p>© 2024 National Disaster Management Platform, Government of India</p>
        <p>Developed by Team ByteSquad in Code Urja 1.0 Hackathon</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.getElementById('disasterReportForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent the default form submission

            // Here you would typically send the form data via AJAX
            // For this example, we'll just show the toast
            var successToast = new bootstrap.Toast(document.getElementById('successToast'));
            successToast.show();

            // Optional: You can add actual form submission logic here
            // this.submit(); // Uncomment this to actually submit the form after showing toast
        });
    </script>
</body>
</html>