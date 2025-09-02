package servlets;

import dao.PatientDAO;
import model.Patient;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/addPatient")
public class AddPatientServlet extends HttpServlet {
    private PatientDAO patientDAO = new PatientDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String name = request.getParameter("name");
            int age = Integer.parseInt(request.getParameter("age"));
            String phone = request.getParameter("phone");
            String gender = request.getParameter("gender");
            

            Patient patient = new Patient(name, age, phone , gender);
            boolean success = patientDAO.addPatient(patient);

            if (success) {
                response.sendRedirect("patientAddedSuccess.html");
            } else {
                request.setAttribute("message", "Failed to add patient to database.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }

        } catch (Exception e) {
            request.setAttribute("message", "Error: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}

