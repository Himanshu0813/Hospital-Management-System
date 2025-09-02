<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Doctor</title>
    <link rel="stylesheet" href="HeaderDesign.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
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

        /* ===== Header Styling ===== */
     
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

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s ease;
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

    <!-- ===== Form ===== -->
    <form method="post" action="addDoctor">
        <h2>Add Doctor</h2>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required />

        <label for="specialization">Specialization:</label>
        <input type="text" id="specialization" name="specialization" required />

        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" required />

        <input type="submit" value="Add Doctor"/>

        <!-- Back to Dashboard Button -->
        <a href="dashboard.jsp" class="dashboard-link">← Back to Dashboard</a>
    </form>
</body>
</html>
