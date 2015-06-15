package it.unitn.progweb.controller;

import it.unitn.progweb.model.User;
import it.unitn.progweb.model.UserManager;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.*;
import java.io.IOException;
import java.util.Set;

@WebServlet(name = "RegistrationServlet", urlPatterns = {"/registration"})
public class RegistrationServlet extends HttpServlet {
    private static final String newUserQuery =
            "insert into user (username, email, password) values (:username, :email, :password)";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final String username = request.getParameter("username");
        final String password = request.getParameter("password");
        final String email = request.getParameter("email");

        User u = new User();
        u.setUsername(username);
        u.setAndHashPassword(password);
        u.setEmail(email);

        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        Validator validator = factory.getValidator();
        Set<ConstraintViolation<User>> errors = validator.validate(u);
        if(errors.size() > 0) {
            response.setHeader("Content-Type", "text/plain");
            for(ConstraintViolation<User> e: errors) {
                response.getWriter().write(u + "\n");
            }
            response.setStatus(404);
        }

        Sql2o database = (Sql2o) getServletContext().getAttribute("database");
        try (Connection con = database.open()) {
            con.createQuery(newUserQuery).bind(u).executeUpdate();
        }
        UserManager manager = (UserManager) getServletContext().getAttribute("manager");
        u = manager.authenticateUser(username, password);
        response.setHeader("Content-Type", "text/plain");
        response.getWriter().write(u.toString());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("templates/registration.jsp");
        rd.forward(request, response);
    }
}
