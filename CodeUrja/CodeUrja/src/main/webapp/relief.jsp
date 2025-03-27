<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Disaster Relief Teams & NGOs</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        /* CSS Start*/
    
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
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center mb-4">Nearby Disaster Relief Teams & NGOs</h2>
        <div class="row">
            <%
                String[][] reliefTeams = {
                    {"Red Cross Society", "Indore", "+91-9876543210", "contact@redcross.org"},
                    {"National Disaster Response Force (NDRF)", "Bhopal", "+91-8765432109", "ndrf@disaster.gov"},
                    {"SEEDS India", "Indore", "+91-7654321098", "info@seedsindia.org"},
                    {"Goonj", "Ujjain", "+91-6543210987", "goonj@ngo.org"},
                    {"Save the Children", "Indore", "+91-5432109876", "support@savethechildren.in"}
                };

                for (int i = 0; i < 20; i++) {
                    String[] team = reliefTeams[i % reliefTeams.length];
            %>
            <div class="col-md-4">
                <div class="card p-3">
                    <h5><%= team[0] %></h5>
                    <p><strong>Location:</strong> <%= team[1] %></p>
                    <p><strong>Contact:</strong> <%= team[2] %></p>
                    <p><strong>Email:</strong> <%= team[3] %></p>
                    <a href="tel:<%= team[2] %>" class="btn btn-primary">Call Now</a>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</body>
</html>