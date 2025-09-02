package dao;

import model.Doctor;
import util.Database;

import java.sql.*;
import java.util.*;

public class DoctorDAO {
    public boolean addDoctor(Doctor doctor) {
        try (Connection conn = Database.getConnection()) {
            String sql = "INSERT INTO doctors(name,specialization,phone ) VALUES( ?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
         
            ps.setString(1, doctor.getName());
            ps.setString(2, doctor.getSpecialization());
            ps.setLong(3, doctor.getPhone());
            return ps.executeUpdate() > 0;
        } catch (Exception e) { e.printStackTrace(); }
        return false;
    }

    public List<Doctor> getAllDoctors() {
        List<Doctor> list = new ArrayList<>();
        try (Connection conn = Database.getConnection()) {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM doctors order by id asc");
            while (rs.next()) {
                list.add(new Doctor(rs.getInt("id"), rs.getString("name"), rs.getString("specialization") , rs.getLong("phone")));
            }
        } catch (Exception e) { e.printStackTrace(); }
        return list;
    }
}
