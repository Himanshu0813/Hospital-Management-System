<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Registration</title></head>
<link rel="stylesheet"  href="HeaderDesign.css">
<body>
<!-- Header -->
    <div class="header-container">
        <h1><i class="fas fa-book"></i> Hospital Management System</h1>

    </div>
    
<h2>Register</h2>
<form method="post" action="register">
    Username: <input type="text" name="username" required/><br/>
    Password: <input type="password" name="password" required/><br/>
    Role: <input type="role" name="role" required/><br/>

    <!-- Role is hidden and forced to patient -->
    <!-- <input type="hidden" name="role" value="patient"/> -->

    <input type="submit" value="Register"/>
</form>

<p>Already have an account? <a href="login.jsp">Login</a></p>
</body>
</html>
