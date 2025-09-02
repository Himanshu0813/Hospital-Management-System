package servlets;

import dao.UserDAO;
import model.User;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

            private final UserDAO userDAO = new UserDAO();

            @Override
            protected void doPost(HttpServletRequest request, HttpServletResponse response)
                    throws ServletException, IOException {


                // Get request parameters
                String username = request.getParameter("username");
                String password = request.getParameter("password");
               

                // Input validation
                if (username == null || password == null || 
                    username.trim().isEmpty() || password.trim().isEmpty()) {

                    request.setAttribute("message", "Invalid credentials.");
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                    return;
                }

                try {
                    boolean isValid = UserDAO.checkLogin(username, password);

                    if (isValid) {
                    	
                    	User user = userDAO.login(username, password);
                        HttpSession session = request.getSession();
                        session.setAttribute("username", username);
                        session.setAttribute("role", user.getRole());

//                        // Redirect based on role if needed
//                        if ("admin".equalsIgnoreCase(role)) {
//                            response.sendRedirect("dashboard_Admin.jsp");
//                        } else if ("student".equalsIgnoreCase(role)) {
//                            response.sendRedirect("dashboard_Student.jsp");
//                        } else {
                            response.sendRedirect("dashboard.jsp"); // fallback or default
         //               }

                    } else {
                        request.setAttribute("message", "Invalid Username or Password.");
                        request.getRequestDispatcher("error.jsp").forward(request, response);
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                    request.setAttribute("message", "Internal error occurred: " + e.getMessage());
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }
            }
        }
