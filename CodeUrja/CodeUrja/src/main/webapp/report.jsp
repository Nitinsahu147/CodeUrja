<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Volunteer Tasks Report</title>
    <style>
        /* CSS Start*/
    
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<h2>Volunteer Tasks Report</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Volunteer Name</th>
        <th>Task</th>
       
    </tr>

    <%
        // Database credentials
        String url = "jdbc:mysql://localhost:3306/codeurja";
        String user = "root";
        String password = "krrish@001#400";

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            conn = DriverManager.getConnection(url, user, password);
            stmt = conn.createStatement();

            // Query to fetch volunteer tasks
            String sql = "SELECT id, name, task FROM volunteer_tasks";
            rs = stmt.executeQuery(sql);

            // Loop through and display each record in the table
            while (rs.next()) {
    %>
                <tr>
                    <td><%= rs.getInt("id") %></td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("task") %></td>
                </tr>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
    %>
        <tr><td colspan="5" style="color: red;">Error fetching data. Check console logs.</td></tr>
    <%
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    %>

</table>

</body>
</html>
