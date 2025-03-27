<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Emergency Contacts - Disaster Response</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7fafc;
        }
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #003366;
            padding: 15px 30px;
            color: white;
        }
        .nav-links {
            list-style: none;
            display: flex;
            gap: 20px;
        }
        .nav-links a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            transition: 0.3s;
        }
        .nav-links a:hover {
            text-decoration: underline;
        }
        .logout-btn {
            background-color: white;
            color: #003366;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }
        .logout-btn:hover {
            background-color: #e6e6e6;
        }
        .contact-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .contact-card:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <header class="navbar">
        <h1 class="logo">Disaster Response Control Center</h1>
        <nav>
            <ul class="nav-links">
                <li><a href="ministerdashboard.jsp">Home</a></li>
                <li><a href="mabout.jsp">About</a></li>
                <li><a href="minister_reports.jsp">Reports</a></li>
                <li><a href="emergency_contacts.jsp">Emergency Contacts</a></li>
            </ul>
        </nav>
        <button class="logout-btn"><a href="emergecycont.jsp">Logout</a></button>
    </header>

    <div class="container mx-auto px-4 py-8">
        <h2 class="text-3xl font-bold mb-6 text-gray-800 text-center">Emergency Contacts</h2>
        
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <!-- National Disaster Management Authority Contact -->
            <div class="contact-card p-6 text-center">
                <div class="bg-blue-100 rounded-full w-24 h-24 flex items-center justify-center mx-auto mb-4">
                    <i class="fas fa-user-shield text-4xl text-blue-600"></i>
                </div>
                <h3 class="text-xl font-semibold mb-2 text-gray-800">NDMA Director</h3>
                <p class="text-gray-600 mb-2">National Disaster Management Authority</p>
                <div class="contact-details">
                    <p><strong>Name:</strong> Mr. Rajesh Kumar</p>
                    <p><strong>Phone:</strong> +91-11-26701700</p>
                    <p><strong>Email:</strong> ndma-dm@nic.in</p>
                </div>
            </div>

            <!-- Fire Department Contact -->
            <div class="contact-card p-6 text-center">
                <div class="bg-red-100 rounded-full w-24 h-24 flex items-center justify-center mx-auto mb-4">
                    <i class="fas fa-fire-extinguisher text-4xl text-red-600"></i>
                </div>
                <h3 class="text-xl font-semibold mb-2 text-gray-800">Fire Services Chief</h3>
                <p class="text-gray-600 mb-2">National Fire Services</p>
                <div class="contact-details">
                    <p><strong>Name:</strong> Mr. Anil Sharma</p>
                    <p><strong>Phone:</strong> +91-11-23411111</p>
                    <p><strong>Emergency:</strong> 101</p>
                </div>
            </div>

            <!-- National Disaster Response Force Contact -->
            <div class="contact-card p-6 text-center">
                <div class="bg-green-100 rounded-full w-24 h-24 flex items-center justify-center mx-auto mb-4">
                    <i class="fas fa-shield-alt text-4xl text-green-600"></i>
                </div>
                <h3 class="text-xl font-semibold mb-2 text-gray-800">NDRF Commandant</h3>
                <p class="text-gray-600 mb-2">National Disaster Response Force</p>
                <div class="contact-details">
                    <p><strong>Name:</strong> Mr. Vikram Singh</p>
                    <p><strong>Phone:</strong> +91-11-24368700</p>
                    <p><strong>Helpline:</strong> 1077</p>
                </div>
            </div>

            <!-- Earthquake Response Team Contact -->
            <div class="contact-card p-6 text-center">
                <div class="bg-yellow-100 rounded-full w-24 h-24 flex items-center justify-center mx-auto mb-4">
                    <i class="fas fa-mountain text-4xl text-yellow-600"></i>
                </div>
                <h3 class="text-xl font-semibold mb-2 text-gray-800">Seismic Response Unit</h3>
                <p class="text-gray-600 mb-2">Earthquake Management Division</p>
                <div class="contact-details">
                    <p><strong>Name:</strong> Dr. Priya Gupta</p>
                    <p><strong>Phone:</strong> +91-11-26702000</p>
                    <p><strong>Email:</strong> seismic.unit@gov.in</p>
                </div>
            </div>

            <!-- Flood Management Contact -->
           
            <div class="contact-card p-6 text-center">
                <div class="bg-green-200 rounded-full w-24 h-24 flex items-center justify-center mx-auto mb-4">
                    <i class="fas fa-water text-4xl text-blue-700"></i>
                </div>
                <h3 class="text-xl font-semibold mb-2 text-gray-800">Flood Control Head</h3>
                <p class="text-gray-600 mb-2">National Water Resources</p>
                <div class="contact-details">
                    <p><strong>Name:</strong> Mr. Suresh Patel</p>
                    <p><strong>Phone:</strong> +91-11-23370421</p>
                    <p><strong>Emergency:</strong> 1091</p>
                </div>
            </div>
            <div class="contact-card p-6 text-center">
                <div class="bg-blue-200 rounded-full w-24 h-24 flex items-center justify-center mx-auto mb-4">
                    <i class="fas fa-water text-4xl text-blue-700"></i>
                </div>
                <h3 class="text-xl font-semibold mb-2 text-gray-800">NDRF Head</h3>
                <p class="text-gray-600 mb-2">National Water Resources</p>
                <div class="contact-details">
                    <p><strong>Name:</strong> Mr. shubham Patel</p>
                    <p><strong>Phone:</strong> +91-11-23450621</p>
                    <p><strong>Emergency:</strong> 1091</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>