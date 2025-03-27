<%@ page import="java.sql.*" %>
<%
    String volunteer = request.getParameter("volunteer");
    String task = request.getParameter("task");
    String location = request.getParameter("location");

    Connection conn = null;
    PreparedStatement ps = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

        String query = "INSERT INTO volunteer_tasks (name, task, location) VALUES (?, ?, ?)";
        ps = conn.prepareStatement(query);
        ps.setString(1, volunteer);
        ps.setString(2, task);
        ps.setString(3, location);
        ps.executeUpdate();

        response.sendRedirect("wfp_dashboard.jsp"); // Redirect back to the dashboard
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (ps != null) ps.close();
        if (conn != null) conn.close();
    }
%>
