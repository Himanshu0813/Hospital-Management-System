package dao;

import model.Patient;
import util.Database;

import java.sql.*;
import java.util.*;

public class PatientDAO {
    public boolean addPatient(Patient patient) {
    	
        try (Connection conn = Database.getConnection()) {
            String sql = "INSERT INTO patients(name,age,phone ,gender) VALUES(?,?,?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, patient.getName());
            ps.setInt(2, patient.getAge());
            ps.setString(3 , patient.getPhone());
            ps.setString(4, patient.getGender());
           
      
            return ps.executeUpdate() > 0;
        } catch (Exception e) { e.printStackTrace(); }
        return false;
    }

    public List<Patient> getAllPatients() {
        List<Patient> list = new ArrayList<>();
        try (Connection conn = Database.getConnection()) {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM patients order by id asc");
            while (rs.next()) {
                list.add(new Patient(rs.getInt("id"), rs.getString("name"), rs.getInt("age"), rs.getString("phone") , rs.getString("gender") ));
            }
        } catch (Exception e) { e.printStackTrace(); }
        return list;
    }
}
