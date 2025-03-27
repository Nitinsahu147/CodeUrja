package com.controller;

import java.io.IOException;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/AlertServlet")
public class AlertServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message = request.getParameter("message");
        String location = request.getParameter("location");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");
            PreparedStatement pst = con.prepareStatement("INSERT INTO emergency_alerts (message, location) VALUES (?, ?)");
            pst.setString(1, message);
            pst.setString(2, location);
            pst.executeUpdate();
            con.close();

            response.sendRedirect("ndrf_dashboard.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
