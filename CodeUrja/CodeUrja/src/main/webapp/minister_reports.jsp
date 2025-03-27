<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Minister Reports - Disaster Response</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
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
        /* Enhanced Table Styling */
        table {
            width: 100%; 
            border-collapse: collapse;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
        }
        th, td {
            border: 1px solid #e2e8f0;
            padding: 12px;
            text-align: center;
            transition: background-color 0.3s ease;
        }
        th {
            background-color: #003366;
            color: white;
            text-transform: uppercase;
            font-weight: 600;
            letter-spacing: 0.5px;
        }
        tr:nth-child(even) {
            background-color: #f7fafc;
        }
        tr:hover {
            background-color: #edf2f7;
        }
        td{
        	color: #000;
        }
    </style>
    <script>
        function deleteRow(reportId) {
            if (confirm("Are you sure you want to reject and delete this report?")) {
                fetch('DeleteReportServlet?report_id=' + reportId, { method: 'POST' })
                    .then(response => response.text())
                    .then(data => {
                        if (data.trim() === "success") {
                            document.getElementById("row-" + reportId).remove();
                        } else {
                            alert("Error deleting the report.");
                        }
                    })
                    .catch(error => console.error("Error:", error));
            }
        }
    </script>
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
        <h2 class="text-2xl font-bold mb-4 text-gray-800">Disaster Reports</h2>
        <div class="shadow-lg rounded-lg overflow-hidden">
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>State</th>
                    <th>City</th>
                    <th>Disaster Type</th>
                    <th>Submission Date</th>
                    <th>Actions</th>
                </tr>
                <%
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");
                        String sql = "SELECT id, name, email, mobile, state, city, disaster_type, submission_date FROM DisasterReports";
                        PreparedStatement stmt = conn.prepareStatement(sql);
                        ResultSet rs = stmt.executeQuery();
                        while (rs.next()) {
                            int id = rs.getInt("id");
                            String name = rs.getString("name");
                            String email = rs.getString("email");
                            String mobile = rs.getString("mobile");
                            String state = rs.getString("state");
                            String city = rs.getString("city");
                            String disasterType = rs.getString("disaster_type");
                            String submissionDate = rs.getString("submission_date");
                %>
                <tr id="row-<%= id %>">
                    <td><%= id %></td>
                    <td><%= name %></td>
                    <td><%= email %></td>
                    <td><%= mobile %></td>
                    <td><%= state %></td>
                    <td><%= city %></td>
                    <td><%= disasterType %></td>
                    <td><%= submissionDate %></td>
                    <td>
                        <form action="https://api.web3forms.com/submit" method="POST" style="display:inline;">
                            <input type="hidden" name="access_key" value="5277e0dd-27f5-4b41-a9ff-ac206d55ed9b">
                            <input type="hidden" name="report_id" value="<%= id %>">
                            <input type="hidden" name="action" value="approve">
                            <button type="submit" class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded mr-2">Approve</button>
                        </form>
                        <button onclick="deleteRow(<%= id %>)" class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded">Reject</button>
                    </td>
                </tr>
                <%
                        }
                        rs.close();
                        stmt.close();
                        conn.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </table>
        </div>
    </div>
</body>
</html>