<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // Check if the admin is logged in
    HttpSession sessionObj = request.getSession(false);
    if (sessionObj == null || sessionObj.getAttribute("adminName") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    // Database connection
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

        // Fetch all volunteers from the database
        String query = "SELECT volunteer_id, volunteer_name FROM volunteers";
        stmt = conn.prepareStatement(query);
        rs = stmt.executeQuery();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Team | Admin</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2>Create a New Team</h2>

    <form action="CreateTeamServlet" method="POST">
        <div class="form-group">
            <label for="team_name">Team Name:</label>
            <input type="text" class="form-control" id="team_name" name="team_name" required>
        </div>

        <div class="form-group">
            <label>Select Volunteers:</label>
            <div class="border p-3" style="max-height: 300px; overflow-y: auto;">
                <% while (rs != null && rs.next()) { %>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="volunteers" value="<%= rs.getInt("volunteer_id") %>">
                        <label class="form-check-label"><%= rs.getString("volunteer_name") %></label>
                    </div>
                <% } %>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Create Team</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

<% 
    if (rs != null) rs.close();
    if (stmt != null) stmt.close();
    if (conn != null) conn.close();
%>
