package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/VolunteerLoginServlet")
public class VolunteerLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT id, name FROM volunteers WHERE email=? AND password=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                int volunteerId = rs.getInt("id");
                String volunteerName = rs.getString("name");

                // Store volunteer details in session
                HttpSession session = request.getSession();
                session.setAttribute("volunteerId", volunteerId);
                session.setAttribute("volunteerName", volunteerName);
                session.setAttribute("volunteerEmail", email);

                response.sendRedirect("volunteer_dashboard.jsp");
            } else {
                response.sendRedirect("volunteer_login.jsp?message=Invalid credentials");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("volunteer_login.jsp?message=Login failed");
        }
    }
}
