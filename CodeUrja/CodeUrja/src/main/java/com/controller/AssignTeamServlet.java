package com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/AssignTeamServlet")
public class AssignTeamServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int teamId = Integer.parseInt(request.getParameter("team_id"));
        int volunteerId = Integer.parseInt(request.getParameter("volunteer_id"));

        try {
            // Database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

            // Update volunteer team assignment
            PreparedStatement ps = con.prepareStatement("UPDATE volunteers SET team_id = ? WHERE id = ?");
            ps.setInt(1, teamId);
            ps.setInt(2, volunteerId);
            int result = ps.executeUpdate();

            if (result > 0) {
                // Fetch volunteer details for SMS notification
                PreparedStatement ps2 = con.prepareStatement("SELECT name, mobile FROM volunteers WHERE id = ?");
                ps2.setInt(1, volunteerId);
                ResultSet rs = ps2.executeQuery();
                if (rs.next()) {
                    String volunteerName = rs.getString("name");
                    String mobile = rs.getString("mobile");

                    // Send SMS Notification
                    sendSmsNotification(volunteerName, mobile, teamId);
                }

                response.sendRedirect("ndrf_dashboard.jsp?success=Team assigned successfully");
            } else {
                response.sendRedirect("ndrf_dashboard.jsp?error=Error assigning team");
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("ndrf_dashboard.jsp?error=Error assigning team");
        }
    }

    // Function to send SMS notification (Dummy Function)
    private void sendSmsNotification(String name, String mobile, int teamId) {
        String message = "Hello " + name + ", you have been assigned to Team ID: " + teamId + ". Please check your dashboard for details.";
        System.out.println("SMS Sent to " + mobile + ": " + message);
        // Implement SMS API here (like Twilio, Fast2SMS, etc.)
    }
}
