<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Disaster Management - Refugee Data</title>
    <style>
        /* CSS Start*/
    
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #3498db;
            --background-color: #f4f7f6;
            --card-background: #ffffff;
            --text-color: #2c3e50;
            --muted-text: #6c757d;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: var(--background-color);
            color: var(--text-color);
            line-height: 1.6;
        }

        .container {
            max-width: 1400px;
            margin: 20px auto;
            padding: 20px;
            background: var(--card-background);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        h2 {
            text-align: center;
            color: var(--primary-color);
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: var(--secondary-color);
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .btn {
            display: inline-block;
            padding: 8px 12px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 10px;
            text-align: center;
        }

        .btn:hover {
            background-color: #218838;
        }

        /* Mission Section */
        .dashboard-container {
            max-width: 1400px;
            margin: 20px auto;
            padding: 2rem;
        }

        .rescue-events {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(500px, 1fr));
            gap: 2rem;
        }

        .rescue-card {
            background-color: var(--card-background);
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            padding: 2rem;
        }

        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 1.5rem;
            padding-bottom: 1rem;
            border-bottom: 1px solid rgba(0,0,0,0.1);
        }

        .card-header h2 {
            font-size: 1.5rem;
            font-weight: 600;
            color: var(--primary-color);
        }

        .status-badge {
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 0.8rem;
        }

        .status-completed {
            background-color: rgba(46, 204, 113, 0.1);
            color: #2ecc71;
        }

        .status-progress {
            background-color: rgba(241, 196, 15, 0.1);
            color: #f1c40f;
        }

        /* Admin Section */
        .admin-section {
            background-color: var(--card-background);
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            padding: 2rem;
            margin-top: 2rem;
        }

        .admin-form {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1rem;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-group label {
            margin-bottom: 0.5rem;
            font-weight: 600;
        }

        .form-group input, .form-group select {
            padding: 0.75rem;
            border: 1px solid #ddd;
            border-radius: 8px;
        }

        .form-actions {
            grid-column: span 2;
            display: flex;
            justify-content: flex-end;
        }

        @media (max-width: 1024px) {
            .admin-form {
                grid-template-columns: 1fr;
            }
            .form-actions {
                grid-column: span 1;
            }
        }
        
           /* CSS end*/
       
    </style>
</head>
<body>

    <!-- Refugee Table -->
    <div class="container">
        <h2>Refugee Rescue & Relocation Data</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Rescued From</th>
                <th>Current Location</th>
                <th>Migration Status</th>
                <th>Action</th>
            </tr>
            <tr>
                <td>1</td>
                <td>Rahul Sharma</td>
                <td>35</td>
                <td>Male</td>
                <td>Bihar</td>
                <td>Indore</td>
                <td>Rescued</td>
                <td><a href="#" class="btn">View Details</a></td>
            </tr>
        </table>
    </div>   

    <!-- Rescue Mission Cards -->
    <div class="dashboard-container">
        <div class="rescue-events" id="rescue-events-container"></div>

        <!-- Admin Form -->
        <div class="admin-section">
            <h2 style="text-align: center;">Add/Update Rescue Mission</h2>
            <form id="rescue-mission-form" class="admin-form">
                <div class="form-group">
                    <label for="team-name">Rescue Team Name</label>
                    <input type="text" id="team-name" required>
                </div>
                <div class="form-group">
                    <label for="status">Mission Status</label>
                    <select id="status">
                        <option value="Completed">Completed</option>
                        <option value="In Progress">In Progress</option>
                    </select>
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn">Add Mission</button>
                </div>
            </form>
        </div>
    </div>

    <script>
        function renderRescueMissions() {
            const container = document.getElementById('rescue-events-container');
            container.innerHTML = `
                <div class="rescue-card">
                    <div class="card-header">
                        <h2>XYZ Rescue Team</h2>
                        <span class="status-badge status-completed">Completed</span>
                    </div>
                </div>
            `;
        }
        renderRescueMissions();
    </script>

</body>
</html>
