<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>

<%
    // Check session for volunteer login
    HttpSession sessionObj = request.getSession(false);
    if (sessionObj == null || sessionObj.getAttribute("volunteerEmail") == null) {
        response.sendRedirect("volunteer_login.jsp?message=Please login first");
        return;
    }

    String volunteerEmail = (String) sessionObj.getAttribute("volunteerEmail");
    String volunteerName = "";
    String volunteerStatus = "";
    String assignedDisaster = "Not Assigned";

    Connection conn = null;
    PreparedStatement stmt = null, stmtWfp = null;
    ResultSet rs = null, rsWfp = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

        // Retrieve volunteer details and assigned disaster
        String sql = "SELECT v.name, v.status, d.disaster_type " +
                     "FROM volunteers v " +
                     "LEFT JOIN disasters d ON v.disaster_id = d.disaster_id " +
                     "WHERE v.email = ?";

        stmt = conn.prepareStatement(sql);
        stmt.setString(1, volunteerEmail);
        rs = stmt.executeQuery();

        if (rs.next()) {
            volunteerName = rs.getString("name");
            volunteerStatus = rs.getString("status");
            assignedDisaster = (rs.getString("disaster_type") != null) ? rs.getString("disaster_type") : "Not Assigned";
        }

        // Retrieve WFP tasks assigned to the volunteer
        String sqlWfp = "SELECT task, location FROM volunteer_tasks WHERE name = ?";
        stmtWfp = conn.prepareStatement(sqlWfp);
        stmtWfp.setString(1, volunteerName);
        rsWfp = stmtWfp.executeQuery();

    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<html>
<head>
    <title>Volunteer Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <style>
        /* CSS Start*/
    
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 40px;
        }
        .container {
            max-width: 800px;
            margin: auto;
            background: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        th {
            background: #007BFF;
            color: white;
        }
        .logout-btn {
            display: block;
            width: 100%;
            text-align: center;
            margin-top: 20px;
            padding: 10px;
            background: red;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .logout-btn:hover {
            background: darkred;
        }
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
             html, body {
            height: 100%;
            margin: 0;
            font-family: "Work Sans", Arial, sans-serif;
            background-color: #f0f4f8;
        }
        .main-container {
            display: flex;
            flex-direction: column;
            height: 100vh;
            overflow: hidden;
        }
        .content-container {
            flex-grow: 1;
            overflow-y: auto;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .profile-container {
            max-width: 600px;
            width: 100%;
            background: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .navbar-gov {
            background-color: #003366;
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
        .emblem-logo{
        	width: 50px;
        	height: 50px;
        	}
        	
        	    .signup{
        	border: 1px solid white;
        	border-radius: 18px;
        	        	        	margin-left: 750px;
        	        	        	margin-top: 12px;
        	        	        	padding-right: 30px;
        	
        }
        .signup-btn{
        	text-decoration-line: none;
        	color: #fff;
        }
        .signup-btn:hover{
        	text-decoration-line: none;
        	color: #fff;
        }
        
         th{
        	background: #003366;
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
                        <a class="nav-link active" href="volunteer_dashboard.jsp">Assigned Disaster</a></li>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="trainingResources.jsp">Training & Resources</a></li>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="my_profile.jsp">My Profile</a></li>
                    </li>
                   
                </ul>
                 <form class="form-inline">
                <button class="btn signup" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="VolunteerLogoutServlet" class="signup-btn">Logout</a>
                </button>
            </form>
            </div>
        </div>
    </nav>
    
    <br><br>
    
    <div class="container">
        <h2>Welcome, <%= volunteerName %>!</h2>
        
        <!-- Assigned Disaster Section -->
        <table>
            <tr>
                <th>Volunteer Name</th>
                <th>Status</th>
                <th>Assigned Disaster</th>
            </tr>
            <tr>
                <td><%= volunteerName %></td>
                <td><%= volunteerStatus %></td>
                <td><%= assignedDisaster %></td>
            </tr>
        </table>

        <!-- WFP Assigned Tasks Section -->
        <h3 style="margin-top: 20px;">WFP Assigned Tasks</h3>
        <table>
            <tr>
                <th>Task</th>
                <th>Location</th>
            </tr>
            <%
                boolean hasWfpTasks = false;
                while (rsWfp.next()) {
                    hasWfpTasks = true;
            %>
            <tr>
                <td><%= rsWfp.getString("task") %></td>
                <td><%= rsWfp.getString("location") %></td>
            </tr>
            <%
                }
                if (!hasWfpTasks) {
            %>
            <tr>
                <td colspan="2">No WFP tasks assigned.</td>
            </tr>
            <%
                }
            %>
        </table>

    </div>

<%
    // Close resources
    if (rs != null) rs.close();
    if (stmt != null) stmt.close();
    if (rsWfp != null) rsWfp.close();
    if (stmtWfp != null) stmtWfp.close();
    if (conn != null) conn.close();
%>

</body>
</html>
