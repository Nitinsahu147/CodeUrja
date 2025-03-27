<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

                    
                    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <title>First Aid & Medical Assistance</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f4f4f4;
        }
        .container {
            margin-top: 50px;
        }
        .card {
            transition: 0.3s;
            border-radius: 10px;
        }
        
        .register-form {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }



        .container1 {
            width: 90%;
            margin: 20px auto;
            background: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 11px;

        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
        }
        select, button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        button {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
         }
        .signup-btn {
        	color: #000;
        }
        /* General Styling */
body {
    background-color: #f4f4f4;
    font-family: 'Work Sans', sans-serif;
}

/* Navbar Styling */
.navbar {
    background-color: #ffffff;
    padding: 15px 20px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.navbar-brand {
    font-size: 1.8rem;
    font-weight: bold;
    color: #007bff;
}

.navbar-brand span.logo_color {
    color: #ff5733;
}

.navbar-nav .nav-item .nav-link {
    font-size: 16px;
    font-weight: 500;
    color: #333;
    transition: color 0.3s ease-in-out;
}

.navbar-nav .nav-item .nav-link:hover {
    color: #007bff;
}

.signup-btn {
    background-color: #007bff;
    color: white;
    padding: 8px 15px;
    border-radius: 5px;
    text-decoration: none;
    transition: 0.3s ease-in-out;
}

.signup-btn:hover {
    background-color: #0056b3;
    color: white;
}

/* Container Styling */
.container {
    margin-top: 50px;
    background: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

/* Card Styling */
.card {
    padding: 20px;
    border-radius: 12px;
    transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    background: white;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}


.card h5 {
    font-size: 18px;
    font-weight: bold;
    color: #333;
}

.card p {
    color: #555;
    font-size: 15px;
}

/* Button Styling */
.btn {
    font-size: 16px;
    font-weight: 600;
    padding: 10px 15px;
    border-radius: 8px;
    transition: all 0.3s ease-in-out;
}

.btn-primary:hover {
    background-color: #0056b3;
}

.btn-danger:hover {
    background-color: #b30000;
}

.btn-success:hover {
    background-color: #007f4e;
}

.btn-info:hover {
    background-color: #007b9e;
}

.btn-secondary:hover {
    background-color: #5a6268;
}

/* Responsive Adjustments */
@media (max-width: 768px) {
    .navbar-nav {
        text-align: center;
    }

    .card {
        margin-bottom: 20px;
    }

    .signup-btn {
        width: 100%;
        text-align: center;
    }
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
        
        .navbar-nav .nav-item .nav-link{
        	color: #fff;
        }
         .navbar-nav .nav-item .nav-link:hover{
        	color: #fff;
        }
        
        
    </style>
    <script>
        function fetchDoctors() {
            fetch('getDoctors.') // API to get doctors from database
                .then(response => response.json())
                .then(data => {
                    let doctorDropdown = document.getElementById('doctor');
                    doctorDropdown.innerHTML = '';
                    data.forEach(doctor => {
                        let option = document.createElement('option');
                        option.value = doctor.id;
                        option.textContent = doctor.name;
                        doctorDropdown.appendChild(option);
                    });
                })
                .catch(error => console.error('Error fetching doctors:', error));
        }

        window.onload = fetchDoctors;
    </script>
        
    </style>
</head>


   <div class="container-fluid bg-light py-2 text-center header-container">
        <img src="./image/ndma.jpg" alt="NDMA Logo" class="header-logo header-left-logo">
        <img src="./image/image1.jpg" alt="Emblem of India" class="emblem-logo">
        <span class="h4 text-dark">Government of India</span>
        <img src="./image/azadi.jpg" alt="Home Ministry Logo" class="header-logo header-right-logo">
    </div>
    
    <nav class="navbar navbar-expand-lg navbar-dark navbar-gov">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <i class="bi bi-shield-fill me-2"></i>NHA Portal
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="habitat_dashboard.jsp">Medical Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="nearbyHospitals.jsp">Hospitals</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="helplines.jsp">Helplines</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pharmacies.jsp">Pharmacies </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="doctors.jsp">Doctors</a>
                    </li>
                   
                   
                </ul>
                 <form class="form-inline my-2 my-lg-0">
        <button class="btn signup" type="submit"><a href="login.jsp" class="signup-btn">Logout</a></button>
      </form>
                
            </div>
        </div>
    </nav>
    
<body>
    <div class="container">
        <h2 class="text-center mb-4">First Aid & Medical Assistance</h2>
        <div class="row">
            <!-- Find Nearby Hospitals & Clinics -->
            <div class="col-md-4">
                <div class="card p-3 text-center">
                    <h5>Find Nearby Hospitals & Clinics</h5>
                    <p>Locate the nearest hospitals and clinics instantly.</p>
                    <a href="clinics.jsp" class="btn btn-primary">Find Now</a>
                </div>
            </div>
            <!-- Emergency Helplines & Ambulance Services -->
            <div class="col-md-4">
                <div class="card p-3 text-center">
                    <h5>Emergency Helplines & Ambulance</h5>
                    <p>Quick access to helplines and ambulance services.</p>
                    <a href=helplines.jsp class="btn btn-danger">View Helplines</a>
                </div>
            </div>
            <!-- Medical Supplies Availability -->
            <div class="col-md-4">
                <div class="card p-3 text-center">
                    <h5>Medical Supplies & Pharmacies</h5>
                    <p>Check availability of essential medicines.</p>
                    <a href="pharmacies.jsp" class="btn btn-success">View List</a>
                </div>
            </div>
        </div>
        <br>
        <div class="row">
            <!-- Triage & Injury Severity Guide -->
            
            <!-- Register as a First Responder -->
            <div class="col-md-4">
                <div class="card p-3 text-center">
                    <h5>Register as a First Responder</h5>
                    <p>Join as a Doctor, Nurse, Paramedic, or Hospital.</p>
                    <a href="responder.jsp" class="btn btn-info">Register Now</a>
                </div>
            </div>
            <!-- Disaster Relief Teams & NGO Collaborations -->
            <div class="col-md-4">
                <div class="card p-3 text-center">
                    <h5>Add Doctors</h5>
                    <p>Collaborate with Doctors for disaster relief.</p>
                    <a href="addDoctor.jsp" class="btn btn-secondary">Add Now</a>
                </div>
            </div>
            
            <div class="col-md-4">
                <div class="card p-3 text-center">
                    <h5>Doctors Relief Teams & Hospitals</h5>
                    <p>Collaborate with Hospitals for disaster relief.</p>
                    <a href="doctors.jsp" class="btn btn-info">View Now</a>
                </div>
            </div>
        </div>
        <br>
        <!-- Registration Form -->
       
    </div>
    
</body>
</html>