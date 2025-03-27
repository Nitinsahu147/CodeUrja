<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>NDRF Dashboard</title>
    <style>
        /* CSS Start*/
    
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .navbar {
            background-color: #333;
            overflow: hidden;
            padding: 10px 20px;
        }
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 10px 20px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #575757;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background: white;
            box-shadow: 0px 0px 10px 0px #ccc;
            border-radius: 5px;
        }
        h2, h3 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #333;
            color: white;
        }
        .assign-btn {
            padding: 5px 10px;
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
        }
        .assign-btn:hover {
            background-color: #218838;
        }
            /* CSS End*/
        
    </style>
</head>
<body>

    <!-- ✅ Navbar -->
    <div class="navbar">
        <a href="ndrf_dashboard.jsp">Dashboard</a>
        <a href="volunteers_list.jsp">Volunteers</a>
        <a href="rescue_teams.jsp">Rescue Teams</a>
        <a href="logout.jsp" style="float:right;">Logout</a>
    </div>

    <div class="container">
        <h2>NDRF Dashboard</h2>

        <!-- ✅ Rescue Teams Assigned to Disasters -->
        <h3>Rescue Teams</h3>
        <table>
            <tr>
                <th>Team ID</th>
                <th>Team Name</th>
                <th>Assigned Disaster</th>
                <th>Assign Task</th>
            </tr>
            <%
                try {
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery(
                        "SELECT r.team_id, r.team_name, d.disaster_type, d.location " +
                        "FROM rescue_teams r " +
                        "JOIN disasters d ON r.disaster_id = d.disaster_id"
                    );

                    while (rs.next()) {
            %>
                        <tr>
                            <td><%= rs.getInt("team_id") %></td>
                            <td><%= rs.getString("team_name") %></td>
                            <td><%= rs.getString("disaster_type") + " - " + rs.getString("location") %></td>
                            <td>
                                <form action="AssignTaskServlet" method="post">
                                    <input type="hidden" name="team_id" value="<%= rs.getInt("team_id") %>">
                                    <button type="submit" class="assign-btn">Assign Task</button>
                                </form>
                            </td>
                        </tr>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>

        <!-- ✅ Assigned Volunteers Section -->
        <h3>Assigned Volunteers</h3>
        <table>
            <tr>
                <th>Volunteer Name</th>
                <th>Skills</th>
                <th>Team Name</th>
                <th>Mobile</th>
            </tr>
            <%
                try {
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery(
                        "SELECT v.name, v.skills, t.team_name, v.mobile " +
                        "FROM volunteers v " +
                        "JOIN teams t ON v.team_id = t.team_id " +
                        "WHERE v.status = 'Approved'"
                    );

                    while (rs.next()) {
            %>
                        <tr>
                            <td><%= rs.getString("name") %></td>
                            <td><%= rs.getString("skills") %></td>
                            <td><%= rs.getString("team_name") %></td>
                            <td><%= rs.getString("mobile") %></td>
                        </tr>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>

    </div>

</body>
</html>
