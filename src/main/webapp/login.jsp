<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Login</title></head>
<link rel="stylesheet"  href="HeaderDesign.css">
<style>
        * {
            box-sizing: border-box;
        }

        body {
             background-image: url("LibraryImage2.jpg");
             background-size: cover;
             background-position: center;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

      
      
        form {
            background-color: #ffffff;
            padding: 30px 40px;
            margin-top: 10px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: black;
            background-color:white;
            
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        input[type="password"],
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
            background-color: #28a745;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        .note {
            font-size: 0.9em;
            color: #777;
            margin-top: -15px;
            margin-bottom: 20px;
        }

        .home-link {
            display: block;
            margin-top: 15px;
            text-align: center;
            text-decoration: none;
            background-color: #007bff;
            color: white;
            padding: 10px;
            border-radius: 4px;
            font-weight: bold;
        }

        .home-link:hover {
            background-color: #0056b3;
        }

        @media (max-width: 768px) {
            form {
                padding: 20px;
                margin: 20px;
            }

            h1 {
                font-size: 24px;
                padding: 15px;
            }
        }
    </style>
<body>
<!-- Header -->
    <div class="header-container">
        <h1><i class="fas fa-book"></i> Hospital Management System</h1>

    </div>


         <form method="post" action="login">
         <h2>Login</h2>
         
         <label for="username">Username:</label>
        <input type="text" id="username" name="username" required min="1" placeholder="Enter username">

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required  placeholder="Enter Password">
         
         <input type="submit" value="Login"/>

<%
    if(request.getParameter("error") != null){
%>
<p style="color:red;">Invalid username or password!</p>
<%
    }
%>
<p>New User? <a href="register.jsp">Register</a></p>
</body>
</html>
