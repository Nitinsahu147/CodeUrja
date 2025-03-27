<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Disaster Response Command Center</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
        /* CSS Start*/
    
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff;
            color: white;
        }
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #003366;
            padding: 15px 30px;
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
            /* CSS End*/
        
    </style>
</head>
<body class="bg-gray-100">
    <header class="navbar">
        <h1 class="logo">Disaster Response Control Center</h1>
        <nav>
            <ul class="nav-links">
                <li><a href="ministerdashboard.jsp">Home</a></li>
                <li><a href="mabout.jsp">About</a></li>
                <li><a href="minister_reports.jsp">Reports</a></li>
                <li><a href="emcont.jsp">Emergency Contacts</a></li>
            </ul>
        </nav>
        <button class="logout-btn"><a href="emergecycont.jsp">Logout</a></button>
    </header>
    <div class="container mx-auto px-4 py-8">
        <div class="bg-white shadow-lg rounded-lg p-6 flex flex-col md:flex-row items-center gap-6">
            <img src="https://ndma.gov.in/sites/default/files/inline-images/ShriVatsa_0.png" alt="NDMA Member" class="w-40 h-40 rounded-lg">
            <div>
                <p class="text-gray-700">Shri Krishna S. Vatsa serves as a Member of the National Disaster Management Authority, contributing to national disaster management policies.</p>
                <p class="text-green-700 font-semibold mt-2">Shri Krishna S. Vatsa</p>
                <p class="text-sm text-gray-500">Minister - PA, National Disaster Management Authority</p>
            </div>
        </div>
        <div class="bg-white shadow-lg rounded-lg mt-6 p-6">
            <div class="flex justify-between items-center mb-4">
                <h2 class="text-xl font-bold text-blue-600">Live Disaster Tracking</h2>
                <button onclick="sendRescueCoordinates()" class="bg-green-500 hover:bg-green-600 text-white px-4 py-2 rounded flex items-center">
                    <i class="fas fa-ambulance mr-2"></i> Send Rescue Mission
                </button>
            </div>
            <div id="disaster-map" class="w-full h-96 rounded-lg shadow-md"></div>
        </div>
    </div>
    <script type="module">
        import { initializeApp } from "https://www.gstatic.com/firebasejs/10.7.1/firebase-app.js";
        import { getDatabase, ref, onValue, push, set } from "https://www.gstatic.com/firebasejs/10.7.1/firebase-database.js";

        const firebaseConfig = {
            apiKey: "",
            authDomain: "reliefmap-2f743.firebaseapp.com",
            databaseURL: "https://reliefmap-2f743-default-rtdb.firebaseio.com/",
            projectId: "reliefmap-2f743",
            storageBucket: "reliefmap-2f743.appspot.com",
            messagingSenderId: "1055441741021",
            appId: ""
        };

        const app = initializeApp(firebaseConfig);
        const db = getDatabase(app);

        var map = L.map('disaster-map').setView([20.5937, 78.9629], 5);
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', { attribution: '&copy; OpenStreetMap contributors' }).addTo(map);

        function sendRescueCoordinates() {
            const center = map.getCenter();
            const rescueRef = ref(db, "rescue_missions");
            const newRescueEntry = push(rescueRef);

            set(newRescueEntry, { latitude: center.lat, longitude: center.lng, timestamp: new Date().toISOString() });

            Swal.fire({ icon: 'success', title: 'Rescue Mission Sent!', text: 'Coordinates shared with the response team.', confirmButtonText: 'OK' });
        }

        window.sendRescueCoordinates = sendRescueCoordinates;
    </script>
</body>
</html>