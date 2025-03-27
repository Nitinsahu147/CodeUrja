package com.controller;

import java.io.IOException;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CreateTeamServlet")
public class CreateTeamServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String teamName = request.getParameter("team_name");
        String[] selectedVolunteers = request.getParameterValues("volunteers");

        if (teamName == null || selectedVolunteers == null) {
            response.sendRedirect("create_team.jsp?error=Please+select+volunteers");
            return;
        }

        Connection conn = null;
        PreparedStatement stmt = null;
        PreparedStatement stmt2 = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

            // Insert team into 'teams' table
            String insertTeam = "INSERT INTO teams (team_name) VALUES (?)";
            stmt = conn.prepareStatement(insertTeam, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, teamName);
            stmt.executeUpdate();
            rs = stmt.getGeneratedKeys();

            int teamId = 0;
            if (rs.next()) {
                teamId = rs.getInt(1);
            }

            // Insert volunteers into 'team_members' table
            String insertMember = "INSERT INTO team_members (team_id, volunteer_id) VALUES (?, ?)";
            stmt2 = conn.prepareStatement(insertMember);
            for (String volunteerId : selectedVolunteers) {
                stmt2.setInt(1, teamId);
                stmt2.setInt(2, Integer.parseInt(volunteerId));
                stmt2.executeUpdate();
            }

            response.sendRedirect("admin_dashboard.jsp?success=Team+created+successfully");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("create_team.jsp?error=Database+Error");
        } finally {
            try { if (rs != null) rs.close(); } catch (SQLException ignored) {}
            try { if (stmt != null) stmt.close(); } catch (SQLException ignored) {}
            try { if (stmt2 != null) stmt2.close(); } catch (SQLException ignored) {}
            try { if (conn != null) conn.close(); } catch (SQLException ignored) {}
        }
    }
}
