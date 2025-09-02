package dao;

import model.Appointment;
import util.Database;
import java.sql.*;
import java.util.*;

public class AppointmentDAO {

    public boolean bookAppointment(Appointment app) {
        try (Connection conn = Database.getConnection()) {
            String sql = "INSERT INTO appointments(doctor_id, patient_id, appointment_date, description) VALUES(?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, app.getDoctorId());
            ps.setInt(2, app.getPatientId());
            ps.setTimestamp(3, new Timestamp(app.getAppointmentDate().getTime()));
            ps.setString(4, app.getDescription());

            return ps.executeUpdate() > 0;
        } catch (Exception e) { 
            e.printStackTrace(); 
        }
        return false;
    }

    public List<Appointment> getAllAppointmentsList() {
        List<Appointment> list = new ArrayList<>();
        try (Connection conn = Database.getConnection()) {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM appointments ORDER BY id ASC");
            while (rs.next()) {
                list.add(new Appointment(
                    rs.getInt("id"),
                    rs.getInt("patient_id"),
                    rs.getInt("doctor_id"),
                    rs.getDate("appointment_date"),
                    rs.getString("description")
                ));
            }
        } catch (Exception e) { 
            e.printStackTrace(); 
        }
        return list;
    }
}
