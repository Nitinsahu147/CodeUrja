<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>

<%
    // Check if the session exists
    HttpSession sessionObj = request.getSession(false);
    if (sessionObj == null || sessionObj.getAttribute("volunteerEmail") == null) {
        response.sendRedirect("volunteer_login.jsp");
        return;
    }

    String volunteerEmail = (String) sessionObj.getAttribute("volunteerEmail");
    String name = "";
    String skills = "";
    String mobile = "";
    String status = "";
    String assignedDisaster = "Not Assigned";

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

        String sql = "SELECT v.name, v.skills, v.mobile, v.status, d.disaster_type " +
                     "FROM volunteers v " +
                     "LEFT JOIN disasters d ON v.disaster_id = d.disaster_id " +
                     "WHERE v.email = ?";

        stmt = conn.prepareStatement(sql);
        stmt.setString(1, volunteerEmail);
        rs = stmt.executeQuery();

        if (rs.next()) {
            name = rs.getString("name");
            skills = rs.getString("skills");
            mobile = rs.getString("mobile");
            status = rs.getString("status");
            assignedDisaster = (rs.getString("disaster_type") != null) ? rs.getString("disaster_type") : "Not Assigned";
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>

<html>
<head>
    <title>My Profile</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet" />
    <style>
        /* CSS Start*/
    
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
        }
        .signup-btn{
        	text-decoration-line: none;
        	color: #fff;
        }
        .signup-btn:hover{
        	text-decoration-line: none;
        	color: #fff;
        }
            /* CSS End*/
        
    </style>
</head>
<body>
<div class="main-container">
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
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="volunteer_home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="volunteer_dashboard.jsp">Assigned Disaster</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="trainingResources.jsp">Training & Resources</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="my_profile.jsp">My Profile</a>
                    </li>
                </ul>
                <form class="form-inline">
                    <a href="VolunteerLogoutServlet" class="signup-btn">Logout</a>
                </form>
            </div>
        </div>
    </nav>
    
    <br><br>
    
    <div class="content-container">
        <div class="profile-container">
            <h2 class="text-center mb-4">My Profile</h2>
            <form action="UpdateProfileServlet" method="post">
                <div class="form-group">
                    <label>Email:</label>
                    <input type="email" name="email" class="form-control" value="<%= volunteerEmail %>" readonly>
                </div>
                <div class="form-group">
                    <label>Name:</label>
                    <input type="text" name="name" class="form-control" value="<%= name %>" required>
                </div>
                <div class="form-group">
                    <label>Skills:</label>
                    <input type="text" name="skills" class="form-control" value="<%= skills %>" required>
                </div>
                <div class="form-group">
                    <label>Mobile:</label>
                    <input type="text" name="mobile" class="form-control" value="<%= mobile %>" required>
                </div>
                <div class="form-group">
                    <label>Status:</label>
                    <input type="text" class="form-control" value="<%= status %>" readonly>
                </div>
                <div class="form-group">
                    <label>Assigned Disaster:</label>
                    <input type="text" class="form-control" value="<%= assignedDisaster %>" readonly>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Save Changes</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>