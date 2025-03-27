<%@ page import="java.sql.*" %>
<%@ include file="dbConnection.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");

    String name = request.getParameter("name");
    String role = request.getParameter("role");
    String specialization = request.getParameter("specialization");
    String location = request.getParameter("location");
    String contact = request.getParameter("contact");
    String availability = request.getParameter("availability");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        conn = getConnection();
        String sql = "INSERT INTO medical_staff (name, role, specialization, location, contact, availability) VALUES (?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, role);
        pstmt.setString(3, specialization);
        pstmt.setString(4, location);
        pstmt.setString(5, contact);
        pstmt.setString(6, availability);

        int rowsInserted = pstmt.executeUpdate();
        if (rowsInserted > 0) {
            response.sendRedirect("viewMedicalStaff.jsp?msg=success");
        } else {
            response.sendRedirect("responder.jsp?msg=error");
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("responder.jsp?msg=error");
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>
