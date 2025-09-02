<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String username = (String) session.getAttribute("username");
    String role = (String) session.getAttribute("role");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Error Page</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <!-- Custom Header CSS -->
    <link rel="stylesheet" href="HeaderDesign.css">

    <style>
        body {
            background-color: #f8d7da;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .error-container {
            background-color: white;
            border: 3px solid #dc3545;
            padding: 40px;
            border-radius: 10px;
            text-align: center;
            max-width: 500px;
            margin: 100px auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.15);
        }

        .error-container h1 {
            font-size: 32px;
            color: #dc3545;
        }

        .error-container h2 {
            color: #000;
            margin-top: 20px;
        }

        a.btn-home {
            margin-top: 20px;
        }

        /* Responsive */
        @media (max-width: 600px) {
            .error-container {
                margin: 60px 20px;
                padding: 30px 20px;
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

    <!-- Error Content -->
    <div class="error-container">
        <h1>Error</h1>
        <%
            String msg = (String) request.getAttribute("message");
            if (msg == null || msg.isEmpty()) {
                msg = "Something went wrong. Please try again.";
            }
        %>
        <h2><%= msg %></h2>
        <a href="login.jsp" class="btn btn-danger btn-home">Back</a>
    </div>

    <!-- JavaScript -->
    <script>
        function openNav() {
            document.getElementById("mySidebar").style.width = "250px";
        }

        function closeNav() {
            document.getElementById("mySidebar").style.width = "0";
        }
    </script>
</body>
</html>
