package servlets;

import dao.DoctorDAO;
import model.Doctor;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/addDoctor")
public class AddDoctorServlet extends HttpServlet {
    private DoctorDAO doctorDAO = new DoctorDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String specialization = request.getParameter("specialization");
        long phone = Long.parseLong(request.getParameter("phone"));

        Doctor doctor = new Doctor(name, specialization , phone);
        doctorDAO.addDoctor(doctor);

        response.sendRedirect("doctorAddedSuccess.html");
    }
}
