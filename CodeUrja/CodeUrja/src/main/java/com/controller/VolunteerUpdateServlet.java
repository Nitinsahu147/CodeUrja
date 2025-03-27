package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.controller.DBConnection;

@WebServlet("/VolunteerUpdateServlet")
public class VolunteerUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        String email = (session != null) ? (String) session.getAttribute("volunteerEmail") : null;

        if (email == null) {
            response.sendRedirect("volunteer_login.jsp?message=Session expired, please login again");
            return;
        }

        String name = request.getParameter("name");
        String skills = request.getParameter("skills");

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "UPDATE volunteers SET name=?, skills=? WHERE email=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, skills);
            stmt.setString(3, email);

            int rowsUpdated = stmt.executeUpdate();
            if (rowsUpdated > 0) {
                session.setAttribute("volunteerName", name);
                response.sendRedirect("volunteer_dashboard.jsp?message=Profile updated successfully");
            } else {
                response.sendRedirect("volunteer_update.jsp?message=Update failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("volunteer_update.jsp?message=Error updating profile");
        }
    }
}
