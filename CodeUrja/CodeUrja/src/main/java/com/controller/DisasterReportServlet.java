package com.controller;

import java.io.*;
import java.sql.*;
import jakarta.mail.*;
import jakarta.mail.internet.*;
import jakarta.activation.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.util.Properties;

@WebServlet("/DisasterReportServlet")
@MultipartConfig(maxFileSize = 16177215) // 16MB limit
public class DisasterReportServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = null;
        PreparedStatement stmt = null;
        
        try {
            // 1️⃣ Get form data
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");
            int age = Integer.parseInt(request.getParameter("age"));
            String aadhaar_number = request.getParameter("aadhaar_number");
            String applicant_address = request.getParameter("applicant_address");
            String state = request.getParameter("state");
            String city = request.getParameter("city");
            String pincode = request.getParameter("pincode");
            String disaster_type = request.getParameter("disaster_type");
            String disaster_address = request.getParameter("disaster_address");

            // 2️⃣ Handle file uploads
            Part aadhaar_front = request.getPart("aadhaar_front");
            Part aadhaar_back = request.getPart("aadhaar_back");
            Part disaster_image = request.getPart("disaster_image");

            InputStream aadhaarFrontStream = aadhaar_front.getInputStream();
            InputStream aadhaarBackStream = aadhaar_back.getInputStream();
            InputStream disasterImageStream = disaster_image.getInputStream();

            // 3️⃣ Connect to MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

            // 4️⃣ Insert Data into Database
            String sql = "INSERT INTO DisasterReports (name, email, mobile, age, aadhaar_number, aadhaar_front, aadhaar_back, applicant_address, state, city, pincode, disaster_type, disaster_address, disaster_image) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, mobile);
            stmt.setInt(4, age);
            stmt.setString(5, aadhaar_number);
            stmt.setBlob(6, aadhaarFrontStream);
            stmt.setBlob(7, aadhaarBackStream);
            stmt.setString(8, applicant_address);
            stmt.setString(9, state);
            stmt.setString(10, city);
            stmt.setString(11, pincode);
            stmt.setString(12, disaster_type);
            stmt.setString(13, disaster_address);
            stmt.setBlob(14, disasterImageStream);

            int rowsInserted = stmt.executeUpdate();
            
            if (rowsInserted > 0) {
                // 5️⃣ Send Email Notification
                sendEmailToAuthority(name, email, mobile, disaster_type, disaster_address);

                // 6️⃣ Redirect or Show Message
                response.getWriter().println("<script>alert('Disaster report submitted successfully! Email sent to the authority.'); window.location.href = 'index.jsp';</script>");
            } else {
                response.getWriter().println("<script>alert('Error submitting disaster report. Please try again.'); window.location.href = 'index.jsp';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("<script>alert('Error: " + e.getMessage() + "');</script>");
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

    // 📧 Send Email Function
    private void sendEmailToAuthority(String name, String email, String mobile, String disasterType, String disasterAddress) {
        final String fromEmail = "patidarkrish98@gmail.com"; // Sender's email
        final String password = "clzf xhfu vdoy gidc"; // App password (Not normal password)
        final String toEmail = "chintuparmar5444@gmail.com"; // Authority Email

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, password);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            message.setSubject("🚨 New Disaster Report Submitted");
            message.setText("A new disaster report has been submitted.\n\n" +
                            "🔹 Name: " + name + "\n" +
                            "🔹 Email: " + email + "\n" +
                            "🔹 Mobile: " + mobile + "\n" +
                            "🔹 Disaster Type: " + disasterType + "\n" +
                            "🔹 Disaster Address: " + disasterAddress + "\n\n" +
                            "Please review and take necessary action.");

            Transport.send(message);
            System.out.println("Email sent successfully!");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
