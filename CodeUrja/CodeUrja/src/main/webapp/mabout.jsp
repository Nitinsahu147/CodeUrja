<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Shri Krishna S. Vatsa</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }

        header {
            background: #333;
            color: #fff;
            padding-top: 30px;
            min-height: 70px;
            border-bottom: #0779e4 3px solid;
            text-align: center;
        }

        header h1 {
            text-transform: uppercase;
            margin: 0;
            font-size: 24px;
        }

        .profile {
            display: flex;
            margin: 20px 0;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            align-items: center;
        }

        .profile img {
            width: 200px;
            border-radius: 5px;
            margin-right: 20px;
            display: block;
        }

        .designation {
            text-align: center;
            font-size: 14px;
            font-weight: bold;
            color: #444;
            margin-top: 5px;
        }
        .designation1 {
            text-align: center;
            font-size: 14px;
            font-weight: bold;
            color: #444;
        }

        .bio {
            flex: 1;
        }

        .bio h2 {
            margin-top: 0;
            color: #333;
        }

        .bio p {
            margin: 10px 0;
            color: #666;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f7fafc;
        }
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #003366;
            padding: 15px 30px;
            color: white;
        }
        .nav-links {
            list-style: none;
            display: flex;
            gap: 20px;
        }
        .nav-links a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            transition: 0.3s;
        }
        .nav-links a:hover {
            text-decoration: underline;
        }
        .logout-btn {
            background-color: white;
            color: #003366;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }
        .logout-btn:hover {
            background-color: #e6e6e6;
        }
        .contact-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .contact-card:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>

 <header class="navbar">
        <h1 class="logo">Disaster Response Control Center</h1>
        <nav>
            <ul class="nav-links">
                <li><a href="ministerdashboard.jsp">Home</a></li>
                <li><a href="mabout.jsp">About</a></li>
                <li><a href="minister_reports.jsp">Reports</a></li>
                <li><a href="emcont.jsp">Emergency Contacts</a></li>
            </ul>
        </nav>
        <button class="logout-btn"><a href="emergecycont.jsp">Logout</a></button>
    </header>
    
    <br><br>
    
    <div class="container">
        <header>
            <h1>About Us</h1>
        </header>
        <section class="profile">
            <div>
                <img src="https://ndma.gov.in/sites/default/files/inline-images/ShriVatsa_0.png" alt="Shri Krishna S. Vatsa">
                <p class="designation">PA of the Ministry <br> of Disaster Management</p>
            </div>
            <div class="bio">
                <h2>Shri Krishna S. Vatsa</h2>
                <p>Shri Krishna S. Vatsa is a Member of the National Disaster Management Authority (NDMA) with over 25 years of experience in disaster risk reduction and recovery. He has worked as a Policy Advisor at UNDP (2015-2020) and held key positions in Maharashtra’s relief and rehabilitation efforts. He led the Maharashtra Emergency Earthquake Rehabilitation Programme (1995) and served as Secretary for Relief, Rehabilitation, and Rural Development. He holds a Doctor of Science in Disaster Risk Management from George Washington University and has lectured on environmental justice.</p> 
                <br>
                <p>श्री कृष्ण एस. वत्स राष्ट्रीय आपदा प्रबंधन प्राधिकरण (NDMA) के सदस्य हैं, जिनका आपदा जोखिम न्यूनीकरण और पुनर्वास में 25 वर्षों से अधिक का अनुभव है। उन्होंने UNDP में नीति सलाहकार (2015-2020) के रूप में कार्य किया और महाराष्ट्र में राहत व पुनर्वास के महत्वपूर्ण पदों पर रहे। उन्होंने 1995 में महाराष्ट्र आपातकालीन भूकंप पुनर्वास कार्यक्रम का नेतृत्व किया और राहत, पुनर्वास व ग्रामीण विकास सचिव के रूप में कार्य किया। उन्होंने जॉर्ज वॉशिंगटन विश्वविद्यालय से आपदा जोखिम प्रबंधन में डॉक्टरेट की उपाधि प्राप्त की है और पर्यावरण न्याय पर व्याख्यान दिए हैं।</p>
            </div>
        </section>
    </div>
</body>
</html>