<%@ page import="java.sql.*" %>
<%! 
    Connection conn = null;
    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeurja", "root", "krrish@001#400");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
%>
