package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateReportServlet")
public class UpdateReportServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reportId = request.getParameter("report_id");
        String action = request.getParameter("action");

        // Validate input
        if (reportId == null || action == null) {
            response.getWriter().println("Invalid request");
            return;
        }

        String status = action.equals("approve") ? "Approved" : "Rejected";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

            String sql = "UPDATE DisasterReports SET status = ? WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, status);
            stmt.setInt(2, Integer.parseInt(reportId));

            int updated = stmt.executeUpdate();
            stmt.close();
            conn.close();

            if (updated > 0) {
                response.sendRedirect("minister_reports.jsp"); // Redirect back to the report page
            } else {
                response.getWriter().println("Error updating status");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
