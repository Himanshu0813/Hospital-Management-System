package dao;

import model.User;
import util.Database;
import util.PasswordUtil;
import java.sql.*;

public class UserDAO {

    public boolean register(User user) {
        try (Connection conn = Database.getConnection()) {
            String sql = "INSERT INTO Husers(username, password, role) VALUES(?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUsername().trim());
            ps.setString(2, user.getPassword().trim());
            ps.setString(3, user.getRole().trim());
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public User login(String username, String password) {
        try (Connection conn = Database.getConnection()) {
            String sql = "SELECT * FROM Husers WHERE username=? AND password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username.trim());
            ps.setString(2, password.trim());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new User(
                        rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("role")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    
    public static boolean checkLogin(String username, String password) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        boolean valid = false;

        try {
            con = Database.getConnection();
            String sql = "SELECT * FROM husers WHERE username = ? AND password = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);

            rs = ps.executeQuery();
            valid = rs.next();

        } catch (SQLException e) {
            throw new Exception("Database error during login check: " + e.getMessage(), e);
        } finally {
           // Close Connection
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return valid;
    }
}


