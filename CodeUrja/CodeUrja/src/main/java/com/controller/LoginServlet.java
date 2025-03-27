package com.controller;

import java.io.IOException;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");
            PreparedStatement ps = conn.prepareStatement("SELECT agency_name, agency_type FROM NGO_Admins WHERE username=? AND password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String agencyType = rs.getString("agency_type");

                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                session.setAttribute("agency_name", rs.getString("agency_name"));
                session.setAttribute("agency_type", agencyType);

                // Redirect to respective dashboards based on agency type
                switch (agencyType) {
                    case "First Aid": 
                        response.sendRedirect("admin_dashboard.jsp");
                        break;
                    case "Food Supply": 
                        response.sendRedirect("wfp_dashboard.jsp");
                        break;
                    case "Migration": 
                        response.sendRedirect("unhcr_dashboard.jsp");
                        break;
                    case "Shelter": 
                        response.sendRedirect("habitat_dashboard.jsp");
                        break;
                    default:
                        response.sendRedirect("error.jsp");
                }
            } else {
                response.sendRedirect("login.jsp?error=Invalid Credentials");
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
