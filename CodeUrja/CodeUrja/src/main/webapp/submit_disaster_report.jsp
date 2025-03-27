<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Disaster Report Form</title>
</head>
<body>
    <h2>Disaster Report Form</h2>
    <form action="DisasterReportServlet" method="post" enctype="multipart/form-data">
        Name: <input type="text" name="name" required><br>
        Email: <input type="email" name="email" required><br>
        Mobile: <input type="text" name="mobile" required><br>
        Age: <input type="number" name="age" required><br>
        Aadhaar Number: <input type="text" name="aadhaar_number" required><br>
        Applicant Address: <input type="text" name="applicant_address" required><br>
        State: <input type="text" name="state" required><br>
        City: <input type="text" name="city" required><br>
        Pincode: <input type="text" name="pincode" required><br>
        Disaster Type: <input type="text" name="disaster_type" required><br>
        Disaster Address: <input type="text" name="disaster_address" required><br>
        
        Aadhaar Front: <input type="file" name="aadhaar_front" accept="image/*" required><br>
        Aadhaar Back: <input type="file" name="aadhaar_back" accept="image/*" required><br>
        Disaster Image: <input type="file" name="disaster_image" accept="image/*" required><br>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>
