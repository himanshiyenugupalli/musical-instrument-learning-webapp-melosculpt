package com.melosculpt.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.melosculpt.utils.DBConnection;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userId = request.getParameter("user_id");
        String password = request.getParameter("password");

        System.out.println("Login attempt with user_id: " + userId); // Debugging

        try (Connection conn = DBConnection.getConnection()) {
            if (conn == null) {
                throw new Exception("Database Connection is NULL!");
            }

            String checkUserSql = "SELECT password FROM users WHERE user_id=?";
            PreparedStatement checkUserStmt = conn.prepareStatement(checkUserSql);
            checkUserStmt.setString(1, userId);
            ResultSet userResult = checkUserStmt.executeQuery();

            if (!userResult.next()) {
                System.out.println("User not found.");
                request.setAttribute("message", "Account does not exist.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                return;
            }

            String dbPassword = userResult.getString("password");
            if (!dbPassword.equals(password)) {
                System.out.println("Incorrect password.");
                request.setAttribute("message", "Incorrect password.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                return;
            }

            System.out.println("Login successful!");
            HttpSession session = request.getSession();
            session.setAttribute("user_id", userId);
            response.sendRedirect("selectinstrument.jsp");

        } catch (Exception e) {
            System.out.println("Database error occurred!");
            e.printStackTrace();
            request.setAttribute("message", "Database error occurred. Please try again.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
