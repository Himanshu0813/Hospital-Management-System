<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Patient</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="HeaderDesign.css">
    <style>
        body {
            background-image: url("LibraryImage2.jpg");
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 0;
        }

       
     
        /* ===== Form Styling ===== */
        form {
            background-color: #ffffff;
            padding: 30px 40px;
            margin-top: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

       
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 12px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
            outline: none;
            transition: 0.3s;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        select:focus {
            border-color: #007bff;
            box-shadow: 0 0 6px rgba(0,123,255,0.3);
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .dashboard-link {
            display: block;
            margin-top: 15px;
            text-align: center;
            text-decoration: none;
            background-color: #28a745;
            color: white;
            padding: 10px;
            border-radius: 4px;
            font-weight: bold;
            transition: 0.3s ease;
        }

        .dashboard-link:hover {
            background-color: #1e7e34;
        }

        @media (max-width: 768px) {
            form {
                padding: 20px;
                margin: 20px;
            }

            .header-left h1 {
                font-size: 20px;
            }
            .header-center h2 {
                font-size: 18px;
            }
        }
    </style>
</head>
<body>
    <!-- ===== Header ===== -->
    <div class="header">
        <div class="header-left">
           <h1><a href="dashboard.jsp" style="color:white; text-decoration:none;"><i class="fas fa-home"></i> Home</a></h1>
        </div>
        <div class="header-center">
            <h2><i class="fas fa-hospital"></i> Hospital Management System</h2>
        </div>
        <div class="header-right">
            <a href="logoutservlet">Logout</a>
        </div>
    </div>


    <!-- Add Patient Form -->
    <form method="post" action="addPatient">
        <h2>Add Patient</h2>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter patient name" required />

        <label for="age">Age:</label>
        <input type="number" id="age" name="age" placeholder="Enter age" required />

        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
            <option value="">-- Select Gender --</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
        </select>

        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" placeholder="Enter phone number" required />

        <input type="submit" value="Add Patient"/>

        <!-- Back to Dashboard -->
        <a href="dashboard.jsp" class="dashboard-link">← Back to Dashboard</a>
    </form>
</body>
</html>
