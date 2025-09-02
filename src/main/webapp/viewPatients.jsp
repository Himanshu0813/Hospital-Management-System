<%@ page import="java.util.List" %>
<%@ page import="model.Patient" %>
<%@ page import="dao.PatientDAO" %>

<%
    PatientDAO dao = new PatientDAO();
    List<Patient> patients = dao.getAllPatients();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Patients List</title>
    <link rel="stylesheet"  href="HeaderDesign.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
     <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f8d7da;
        }

     
        table {
            border-collapse: collapse;
            width: 95%;
            margin: 20px auto;
            background-color: white;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color:  #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

      
     .back-link {
            display: inline-block;
            margin-top: 15px;
            margin-left:630px;
            font-weight:bold;
            text-align:center;
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            font-weight: bold;
        }

        .back-link a:hover {
            background-color: #0056b3;
        }
       input[type="submit"]{
            background-color:red;
            color: white;
       }
        @media (max-width: 768px) {
            table, th, td {
                font-size: 12px;
            }

            .action-link a {
                padding: 8px 16px;
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

    <h2>Registered Patients</h2>
    <table border="1" align="center">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Phone</th>
            <th>Gender</th>
        </tr>
        <%
            if (patients != null) {
                for (Patient p : patients) {
        %>
        <tr>
            <td><%= p.getId() %></td>
            <td><%= p.getName() %></td>
            <td><%= p.getAge() %></td>
            <td><%= p.getPhone() %></td>
            <td><%= p.getGender() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr><td colspan="4">No patients registered</td></tr>
        <%
            }
        %>
    </table>
    <br>
    <div class="mt-3">
         <a href="dashboard.jsp" class="back-link">Back</a>
      </div>
</body>
</html>
