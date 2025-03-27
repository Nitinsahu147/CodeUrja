package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// Twilio API for sending SMS
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@WebServlet("/SendSMSNotification")
public class SendSMSNotification extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Twilio Credentials (Replace with your actual Twilio credentials)
    public static final String ACCOUNT_SID = "YOUR_TWILIO_ACCOUNT_SID";
    public static final String AUTH_TOKEN = "YOUR_TWILIO_AUTH_TOKEN";
    public static final String FROM_PHONE = "YOUR_TWILIO_PHONE_NUMBER"; 

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int volunteerId = Integer.parseInt(request.getParameter("volunteer_id"));
        int disasterId = Integer.parseInt(request.getParameter("disaster_id"));

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");

            // Fetch volunteer details
            PreparedStatement ps = con.prepareStatement("SELECT name, mobile FROM volunteers WHERE id = ?");
            ps.setInt(1, volunteerId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String name = rs.getString("name");
                String mobile = rs.getString("mobile");

                // Fetch disaster details
                PreparedStatement ps2 = con.prepareStatement("SELECT disaster_type FROM disasters WHERE disaster_id = ?");
                ps2.setInt(1, disasterId);
                ResultSet rs2 = ps2.executeQuery();

                if (rs2.next()) {
                    String disasterType = rs2.getString("disaster_type");

                    // Send SMS Notification
                    sendSMS(mobile, name, disasterType);
                    response.sendRedirect("admin_dashboard.jsp?success=sms_sent");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("admin_dashboard.jsp?error=sms_failed");
        }
    }

    private void sendSMS(String mobile, String name, String disasterType) {
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
        Message message = Message.creator(
                new PhoneNumber("+91" + mobile), // Volunteer’s mobile number
                new PhoneNumber(FROM_PHONE), // Twilio phone number
                "Dear " + name + ", you have been assigned to assist in a " + disasterType + ". Please check your dashboard for details."
        ).create();
    }
}
