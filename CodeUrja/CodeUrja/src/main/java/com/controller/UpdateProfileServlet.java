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
import jakarta.servlet.http.HttpSession;

@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("volunteerEmail") == null) {
            response.sendRedirect("volunteer_login.jsp");
            return;
        }

        String email = (String) session.getAttribute("volunteerEmail");
        String name = request.getParameter("name");
        String skills = request.getParameter("skills");
        String mobile = request.getParameter("mobile");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

            String sql = "UPDATE volunteers SET name=?, skills=?, mobile=? WHERE email=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, skills);
            stmt.setString(3, mobile);
            stmt.setString(4, email);

            int updated = stmt.executeUpdate();
            if (updated > 0) {
                session.setAttribute("volunteerName", name);
                response.sendRedirect("my_profile.jsp?message=Profile updated successfully");
            } else {
                response.sendRedirect("my_profile.jsp?message=Error updating profile");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("my_profile.jsp?message=Something went wrong");
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
