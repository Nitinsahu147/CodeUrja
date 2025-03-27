<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
     <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
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
    <title>Volunteer Training & Resources</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        /* CSS Start*/
    
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .table th, .table td {
            vertical-align: middle;
        }
        .btn-watch, .btn-read {
            text-decoration: none;
            padding: 5px 10px;
            display: inline-block;
            border-radius: 5px;
            font-size: 14px;
        }
        .btn-watch {
            background-color: #ff0000;
            color: white;
        }
        .btn-read {
            background-color: #007bff;
            color: white;
        }
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
        	border-radius: 18px;
        }
        .signup-btn{
        	text-decoration-line: none;
        	color: #fff;
        }
        .signup-btn:hover{
        	text-decoration-line: none;
        	color: #fff;
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
                <i class="bi bi-shield-fill me-2"></i>Volunteer Portal
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link"  href="volunteer_home.jsp">Home</a></li>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="volunteer_dashboard.jsp">Assigned Disaster</a></li>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="trainingResources.jsp">Training & Resources</a></li>
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
    <div class="container">
        <h2 class="text-center mb-4">Volunteer Training & Resources</h2>
        <p class="text-center">Explore training videos and articles to enhance your volunteering skills.</p>

        <table class="table table-striped">
            <thead class="table-dark">
                <tr>
                    <th>#</th>
                    <th>Title</th>
                    <th>Category</th>
                    <th>Training Video</th>
                    <th>Article</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Basics of Volunteering</td>
                    <td>Introduction</td>
                    <td><a href="https://youtu.be/LMEnv4sKJwk?si=j6b729aTPhDg0Kcw" target="_blank" class="btn-watch">Watch Video</a></td>
                    <td><a href="https://www.indeed.com/career-advice/career-development/how-to-volunteer" target="_blank" class="btn-read">Read Article</a></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>How to Communicate Effectively</td>
                    <td>Soft Skills</td>
                    <td><a href="https://youtu.be/vULoIGxBYA4?si=mA4EY0NnQiyOEVZm" target="_blank" class="btn-watch">Watch Video</a></td>
                    <td><a href="https://professional.dce.harvard.edu/blog/8-ways-you-can-improve-your-communication-skills/" target="_blank" class="btn-read">Read Article</a></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>First Aid Training for Volunteers</td>
                    <td>Medical Assistance</td>
                    <td><a href="https://youtu.be/9BS1t4EY3iA?si=c0q430zcBPiWwB4A" target="_blank" class="btn-watch">Watch Video</a></td>
                    <td><a href="https://www.indianredcross.org/ircs/program/FirstAid" target="_blank" class="btn-read">Read Article</a></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Disaster Management Essentials</td>
                    <td>Emergency Response</td>
                    <td><a href="https://youtu.be/11LY_Dx0MY4?si=0TXTH-cIDBmx__rp" target="_blank" class="btn-watch">Watch Video</a></td>
                    <td><a href="https://study.unimelb.edu.au/find/microcredentials/disaster-management-essentials/" target="_blank" class="btn-read">Read Article</a></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Helping Senior Citizens</td>
                    <td>Community Service</td>
                    <td><a href="https://youtu.be/UXjPB0v20n8?si=ey52U64FPQXR5KU-" target="_blank" class="btn-watch">Watch Video</a></td>
                    <td><a href="https://livewithjoy.in/blog/top-10-tips-for-helping-old-people/" target="_blank" class="btn-read">Read Article</a></td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
