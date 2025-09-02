package servlets;

import dao.AppointmentDAO;
import model.Appointment;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/bookAppointment")
public class BookAppointmentServlet extends HttpServlet {

    private AppointmentDAO appointmentDAO = new AppointmentDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // Read parameters
            String doctorIdStr = request.getParameter("doctorId");
            String patientIdStr = request.getParameter("patientId");
            String dateStr = request.getParameter("appointmentDate");
            String description = request.getParameter("description");

            // Validate parameters
            if (doctorIdStr == null || patientIdStr == null || dateStr == null || description == null
                    || doctorIdStr.isEmpty() || patientIdStr.isEmpty() || dateStr.isEmpty() || description.isEmpty()) {

                request.setAttribute("message", "All fields are required!");
                request.getRequestDispatcher("error.jsp").forward(request, response);
                return;
            }

            int doctorId = Integer.parseInt(doctorIdStr);
            int patientId = Integer.parseInt(patientIdStr);

            // Convert date string to java.sql.Date
            java.sql.Date sdate = java.sql.Date.valueOf(dateStr); // format: yyyy-MM-dd

            // Create Appointment object
            Appointment appointment = new Appointment(doctorId, patientId, sdate, description);

            // Save to database
            boolean success = appointmentDAO.bookAppointment(appointment);

            if (success) {
                response.sendRedirect("appointmentSuccess.html");
            } else {
                request.setAttribute("message", "Failed to book appointment.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Error: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
