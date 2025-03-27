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

@WebServlet("/AddDisasterServlet")
public class AddDisasterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String disasterType = request.getParameter("disaster_type");
        String location = request.getParameter("location");
        String severity = request.getParameter("severity");

        Connection con = null;
        PreparedStatement ps = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

            String query = "INSERT INTO disasters (disaster_type, location, severity) VALUES (?, ?, ?)";
            ps = con.prepareStatement(query);
            ps.setString(1, disasterType);
            ps.setString(2, location);
            ps.setString(3, severity);
            ps.executeUpdate();

            response.sendRedirect("admin_dashboard.jsp?success=Disaster added successfully");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("admin_dashboard.jsp?error=Database error");
        } finally {
            try { if (ps != null) ps.close(); if (con != null) con.close(); } catch (Exception ex) { ex.printStackTrace(); }
        }
    }
}
