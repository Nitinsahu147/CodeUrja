<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Rescue Team</title>
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
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }
        input, select, button {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #28a745;
            color: white;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
            /* CSS End*/
        
    </style>
</head>
<body>

    <!-- ✅ Navbar -->
    <div class="navbar">
        <a href="ndrf_dashboard.jsp">Dashboard</a>
        <a href="ndrf_create_team.jsp">Create Team</a>
        <a href="volunteers_list.jsp">Volunteers</a>
        <a href="rescue_teams.jsp">Rescue Teams</a>
        <a href="logout.jsp" style="float:right;">Logout</a>
    </div>

    <div class="container">
        <h2>Create a New Rescue Team</h2>

        <!-- ✅ Form to Create Team -->
        <form action="CreateTeamServlet" method="post">
            <label>Team Name:</label>
            <input type="text" name="team_name" required>

            <label>Select Disaster:</label>
            <select name="disaster_id" required>
                <option value="">-- Select Disaster --</option>
                <%
                    try {
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery("SELECT disaster_id, disaster_type, location FROM disasters WHERE status='Active'");
                        while (rs.next()) {
                %>
                    <option value="<%= rs.getInt("disaster_id") %>">
                        <%= rs.getString("disaster_type") + " - " + rs.getString("location") %>
                    </option>
                <%
                        }
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </select>

            <button type="submit">Create Team</button>
        </form>

        <h2>Assign Volunteers to Teams</h2>

        <!-- ✅ Fetch Volunteers from Database -->
        <table border="1">
            <tr>
                <th>Name</th>
                <th>Skills</th>
                <th>Status</th>
                <th>Assign to Team</th>
            </tr>
            <%
                try {
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM volunteers WHERE status='Approved' AND team_id IS NULL");

                    while (rs.next()) {
            %>
                        <tr>
                            <td><%= rs.getString("name") %></td>
                            <td><%= rs.getString("skills") %></td>
                            <td><%= rs.getString("status") %></td>
                            <td>
                                <form action="AssignVolunteerServlet" method="post">
                                    <input type="hidden" name="volunteer_id" value="<%= rs.getInt("id") %>">
                                    <select name="team_id" required>
                                        <option value="">-- Select Team --</option>
                                        <%
                                            Statement teamStmt = con.createStatement();
                                            ResultSet teamRs = teamStmt.executeQuery("SELECT team_id, team_name FROM teams");
                                            while (teamRs.next()) {
                                        %>
                                            <option value="<%= teamRs.getInt("team_id") %>">
                                                <%= teamRs.getString("team_name") %>
                                            </option>
                                        <%
                                            }
                                        %>
                                    </select>
                                    <button type="submit">Assign</button>
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

    </div>

</body>
</html>
