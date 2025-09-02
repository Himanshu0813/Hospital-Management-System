<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Appointment</title>
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
            background-color: rgba(255, 255, 255, 0.95);
            padding: 30px 40px;
            margin-top: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 420px;
        }

        

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="number"],
        input[type="date"],
        select,
        textarea {
            width: 100%;
            padding: 12px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
            outline: none;
            transition: 0.3s;
        }

        textarea {
            resize: none;
            height: 80px;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="date"]:focus,
        select:focus,
        textarea:focus {
            border-color: #007bff;
            box-shadow: 0 0 6px rgba(0,123,255,0.3);
        }

        input[type="submit"],
        .btn-submit {
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

        input[type="submit"]:hover,
        .btn-submit:hover {
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
            border-radius: 6px;
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

    <!-- ===== Book Appointment Form ===== -->
    <form method="post" action="bookAppointment">
        <h2>Book Appointment</h2>

        <label for="patientId">Patient ID:</label>
        <input type="number" id="patientId" name="patientId" placeholder="Enter patient ID" required />

        <label for="doctorId">Doctor ID:</label>
        <input type="number" id="doctorId" name="doctorId" placeholder="Enter doctor ID" required />

        <label for="appointmentDate">Appointment Date:</label>
        <input type="date" id="appointmentDate" name="appointmentDate" required />

        <label for="description">Description:</label>
        <textarea id="description" name="description" placeholder="Enter description" required></textarea>

        <input type="submit" value="Book Appointment" class="btn-submit"/>

        <!-- Back to Dashboard -->
        <a href="dashboard.jsp" class="dashboard-link">← Back to Dashboard</a>
    </form>
</body>
</html>
