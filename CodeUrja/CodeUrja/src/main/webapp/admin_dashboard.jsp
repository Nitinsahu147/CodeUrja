<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
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
    <title>Admin Dashboard</title>
</head>
<style>
    /* CSS Start*/

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
            /* CSS End */
        
</style>

<body>
    <div class="container-fluid bg-light py-2 text-center header-container">
        <img src="./image/ndma.jpg" alt="NDMA Logo" class="header-logo header-left-logo">
        <img src="./image/image1.jpg" alt="Emblem of India" class="emblem-logo">
        <span class="h4 text-dark">Government of India</span>
        <img src="./image/azadi.jpg" alt="Home Ministry Logo" class="header-logo header-right-logo">
    </div>
    
    <nav class="navbar navbar-expand-lg navbar-dark navbar-gov">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <i class="bi bi-shield-fill me-2"></i>NDRF Portal
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="admin_dashboard.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href=#>Create Team</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="report.jsp">Generate Report</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <button class="btn signup" type="submit"><a href="login.jsp" class="signup-btn">Logout</a></button>
                </form>
            </div>
        </div>
    </nav>
    
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto link_group">
            <li class="nav-item active">
              <a class="nav-link link_item" href="admin_dashboard.jsp">Home</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link link_item" href="create_team.jsp">Create Team</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link link_item" href="report.jsp">Generate Report</a>
            </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <button class="btn signup" type="submit"><a href="login.jsp" class="signup-btn">Logout</a></button>
          </form>
        </div>
      </nav>
    <div class="container">
        <h2 class="text-center my-4" style="color: #003366;">Admin Dashboard - Manage Disasters & Assign Volunteers</h2>

        <!-- Add New Disaster -->
        <form action="AddDisasterServlet" method="post" class="admin-form">
            <h3>Add Disaster</h3>
            <div class="form-group">
                <label>Disaster Type:</label>
                <input type="text" name="disaster_type" required class="form-control">
            </div>

            <div class="form-group">
                <label>Location:</label>
                <input type="text" name="location" required class="form-control">
            </div>

            <div class="form-group">
                <label>Severity:</label>
                <select name="severity" class="form-control">
                    <option value="Low">Low</option>
                    <option value="Medium">Medium</option>
                    <option value="High">High</option>
                </select>
            </div>

            <button type="submit" class="btn btn-primary">Add Disaster</button>
        </form>

        <hr>

        <!-- Assign Volunteers to Disasters -->
        <div class="table-responsive">
            <h3 class="text-center" style="color: #003366;">Assign Volunteers to Disasters</h3>
            <table class="table table-bordered table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th>Volunteer Name</th>
                        <th>Skills</th>
                        <th>Status</th>
                        <th>Assigned Disaster</th>
                        <th>Action</th>
                        <th>Notification</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Connection con = null;
                        PreparedStatement ps = null;
                        ResultSet rs = null;

                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

                            String query = "SELECT v.id, v.name, v.skills, v.status, v.mobile, d.disaster_id, d.disaster_type " +
                                           "FROM volunteers v " +
                                           "LEFT JOIN disasters d ON v.disaster_id = d.disaster_id";
                            ps = con.prepareStatement(query);
                            rs = ps.executeQuery();

                            while (rs.next()) {
                                int volunteerId = rs.getInt("id");
                                String disasterId = rs.getString("disaster_id") != null ? rs.getString("disaster_id") : "Not Assigned";
                    %>
                            <tr>
                                <td><%= rs.getString("name") %></td>
                                <td><%= rs.getString("skills") %></td>
                                <td><%= rs.getString("status") %></td>
                                <td><%= rs.getString("disaster_type") != null ? rs.getString("disaster_type") : "Not Assigned" %></td>
                                <td>
                                    <form action="AssignVolunteerServlet" method="post" class="d-flex">
                                        <input type="hidden" name="volunteer_id" value="<%= volunteerId %>">
                                        <select name="disaster_id" required class="form-control mr-2" style="width: auto;">
                                            <option value="">Select</option>
                                            <%
                                                PreparedStatement psDisaster = con.prepareStatement("SELECT disaster_id, disaster_type FROM disasters");
                                                ResultSet rsDisaster = psDisaster.executeQuery();
                                                while (rsDisaster.next()) {
                                            %>
                                                <option value="<%= rsDisaster.getInt("disaster_id") %>"><%= rsDisaster.getString("disaster_type") %></option>
                                            <%
                                                }
                                                rsDisaster.close();
                                                psDisaster.close();
                                            %>
                                        </select>
                                        <button type="submit" class="btn btn-primary" style="white-space: nowrap;">Assign</button>
                                    </form>
                                </td>
                                <td>
                                    <% if (!"Not Assigned".equals(disasterId)) { %>
<form action="https://api.web3forms.com/submit" method="POST">
                                <input type="hidden" name="access_key" value="f06d8d50-a05b-4b65-9bb3-78be95bf7081">
                                            <input type="hidden" name="volunteer_id" value="<%= volunteerId %>">
                                            <input type="hidden" name="disaster_id" value="<%= disasterId %>">
                                                                    <input type="hidden" name="redirect" value="https://web3forms.com/success">
                                            
                                            <button type="submit" class="btn btn-success">Send Notification</button>
                                        </form>
                                    <% } else { %>
                                        <p>N/A</p>
                                    <% } %>
                                </td>
                            </tr>
                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            out.println("<p>Error fetching data.</p>");
                        } finally {
                            if (rs != null) rs.close();
                            if (ps != null) ps.close();
                            if (con != null) con.close();
                        }
                    %>
                </tbody>
            </table>
        </div>
        
        <div class="row">
            <%
                Connection conTeams = null;
                PreparedStatement psTeams = null;
                ResultSet rsTeams = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conTeams = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

                    String teamQuery = "SELECT t.team_id, t.team_name, GROUP_CONCAT(v.name SEPARATOR ', ') AS volunteers " +
                                       "FROM teams t " +
                                       "LEFT JOIN team_members tm ON t.team_id = tm.team_id " +
                                       "LEFT JOIN volunteers v ON tm.volunteer_id = v.id " +
                                       "GROUP BY t.team_id";
                    psTeams = conTeams.prepareStatement(teamQuery);
                    rsTeams = psTeams.executeQuery();

                    while (rsTeams.next()) {
            %>
                    <div class="col-md-4">
                        <div class="card mb-3 shadow-sm">
                            <div class="card-body">
                                <h5 class="card-title"><%= rsTeams.getString("team_name") %></h5>
                                <p class="card-text"><strong>Volunteers:</strong> <%= rsTeams.getString("volunteers") != null ? rsTeams.getString("volunteers") : "No Volunteers Assigned" %></p>
                            </div>
                        </div>
                    </div>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("<p>Error fetching teams.</p>");
                } finally {
                    if (rsTeams != null) rsTeams.close();
                    if (psTeams != null) psTeams.close();
                    if (conTeams != null) conTeams.close();
                }
            %>
        </div>
    </div>
    <footer class="bg-dark text-white text-center py-4 mt-4">
        <div class="container">
           <p>© 2024 National Disaster Management Platform, Government of India</p>
        <p>Developed by Team ByteSquad in Code Urja 1.0 Hackathon</p>
        </div>
    </footer>
</body>
</html>