package com.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/SubmitReportServlet")
@MultipartConfig(maxFileSize = 16177215) // 16MB limit for file upload
public class SubmitReportServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database connection parameters
    private static final String DB_URL = "jdbc:mysql://localhost:3306/codeurja";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "krrish@001#400";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form fields
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        int age = Integer.parseInt(request.getParameter("age"));
        String aadhaarNumber = request.getParameter("aadhaar_number");
        String applicantAddress = request.getParameter("applicant_address");
        String state = request.getParameter("state");
        String city = request.getParameter("city");
        String pincode = request.getParameter("pincode");
        String disasterType = request.getParameter("disaster_type");
        String disasterAddress = request.getParameter("disaster_address");

        // Retrieve file uploads
        Part aadhaarFrontPart = request.getPart("aadhaar_front");
        Part aadhaarBackPart = request.getPart("aadhaar_back");
        Part disasterImagePart = request.getPart("disaster_image");

        InputStream aadhaarFrontStream = aadhaarFrontPart.getInputStream();
        InputStream aadhaarBackStream = aadhaarBackPart.getInputStream();
        InputStream disasterImageStream = disasterImagePart.getInputStream();

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQL query to insert data
            String sql = "INSERT INTO DisasterReports (name, email, mobile, age, aadhaar_number, aadhaar_front, aadhaar_back, " +
                         "applicant_address, state, city, pincode, disaster_type, disaster_address, disaster_image) " +
                         "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, mobile);
            stmt.setInt(4, age);
            stmt.setString(5, aadhaarNumber);
            stmt.setBlob(6, aadhaarFrontStream);
            stmt.setBlob(7, aadhaarBackStream);
            stmt.setString(8, applicantAddress);
            stmt.setString(9, state);
            stmt.setString(10, city);
            stmt.setString(11, pincode);
            stmt.setString(12, disasterType);
            stmt.setString(13, disasterAddress);
            stmt.setBlob(14, disasterImageStream);

            // Execute query
            int rowsInserted = stmt.executeUpdate();

            if (rowsInserted > 0) {
                response.getWriter().println("Disaster report submitted successfully!");
            } else {
                response.getWriter().println("Failed to submit the disaster report.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }
}
