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


@WebServlet("/AssignVolunteerServlet")
public class AssignVolunteerServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
	        String volunteerIdStr = request.getParameter("volunteer_id");
	        String disasterIdStr = request.getParameter("disaster_id");

	        // Validate inputs before parsing
	        if (volunteerIdStr == null || disasterIdStr == null || volunteerIdStr.isEmpty() || disasterIdStr.isEmpty()) {
	            request.setAttribute("error", "Volunteer ID or Disaster ID is missing.");
	            request.getRequestDispatcher("ndrf_dashboard.jsp").forward(request, response);
	            return;
	        }

	        int volunteerId = Integer.parseInt(volunteerIdStr);
	        int disasterId = Integer.parseInt(disasterIdStr);

	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

	        // Update volunteer assignment in the database
	        PreparedStatement ps = con.prepareStatement("UPDATE volunteers SET disaster_id = ? WHERE id = ?");
	        ps.setInt(1, disasterId);
	        ps.setInt(2, volunteerId);
	        int updatedRows = ps.executeUpdate();

	        if (updatedRows > 0) {
	            request.setAttribute("success", "Volunteer successfully assigned!");
	        } else {
	            request.setAttribute("error", "Failed to assign volunteer.");
	        }

	        con.close();
	        request.getRequestDispatcher("admin_dashboard.jsp").forward(request, response);

	    } catch (Exception e) {
	        e.printStackTrace();
	        request.setAttribute("error", "An error occurred while assigning the volunteer.");
	        request.getRequestDispatcher("ndrf_dashboard.jsp").forward(request, response);
	    }
	}

}
