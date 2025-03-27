<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<html>
<head>
    <title>Update Profile</title>
</head>
<body>
    <%
        // Session management
        HttpSession sessionObj = request.getSession(false);
        String volunteerEmail = (sessionObj != null) ? (String) sessionObj.getAttribute("volunteerEmail") : null;

        if (volunteerEmail == null) {
            response.sendRedirect("volunteer_login.jsp?message=Please login first");
            return;
        }

        // Database Connection
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        String volunteerName = "";
        String volunteerSkills = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

            // Fetch volunteer details
            String sql = "SELECT name, skills FROM volunteers WHERE email = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, volunteerEmail);
            rs = stmt.executeQuery();

            if (rs.next()) {
                volunteerName = rs.getString("name");
                volunteerSkills = rs.getString("skills");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        }
    %>

    <h2>Update Profile</h2>

    <form action="VolunteerUpdateServlet" method="post">
        <label>Name:</label>
        <input type="text" name="name" value="<%= volunteerName %>" required><br>

        <label>Skills:</label>
        <input type="text" name="skills" value="<%= volunteerSkills %>" required><br>

        <button type="submit">Update</button>
    </form>

    <p><a href="volunteer_dashboard.jsp">Back to Dashboard</a></p>
</body>
</html>
