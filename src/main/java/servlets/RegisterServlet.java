package servlets;

import dao.UserDAO;
import model.User;
import util.PasswordUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private UserDAO userDAO = new UserDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);  // raw, will be hashed in DAO
        user.setRole(role);

        boolean registered = userDAO.register(user);

        if (registered) {
            response.sendRedirect("login.jsp");
        } else {
        	request.setAttribute("message", "Invalid Username or Password.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
            
        }
    }
}
