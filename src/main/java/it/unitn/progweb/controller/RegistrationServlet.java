package it.unitn.progweb.controller;

import it.unitn.progweb.model.User;
import org.sql2o.Connection;
import org.sql2o.Sql2o;
import org.sql2o.Sql2oException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@WebServlet(name = "RegistrationServlet", urlPatterns = {"/registration"})
public class RegistrationServlet extends HttpServlet {
    private static final String newUserQuery =
            "insert into \"user\"(username, email, password) values (:username, :email, :password)";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final String username = request.getParameter("username");
        final String password = request.getParameter("password");
        final String passwordcheck = request.getParameter("passwordcheck");
        final String email = request.getParameter("email");
        List<String> errors;

        if(!password.equals(passwordcheck)) {
            errors = new ArrayList<>();
            errors.add("Le password non corrispondono");
            request.getServletContext().setAttribute("errors", errors);
            RequestDispatcher rd = request.getRequestDispatcher("templates/registration.jsp");
            rd.forward(request, response);
            return;
        }

        User u = new User();
        u.setUsername(username);
        u.setAndHashPassword(password);
        u.setEmail(email);

        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        Validator validator = factory.getValidator();
        Set<ConstraintViolation<User>> violations = validator.validate(u);
        errors = violations.stream().map(v -> v.getPropertyPath()+" is wrong.").collect(Collectors.toList());
        if(errors.size() > 0) {
            request.getServletContext().setAttribute("errors", errors);
            RequestDispatcher rd = request.getRequestDispatcher("templates/registration.jsp");
            rd.forward(request, response);
            return;
        }

        Sql2o database = (Sql2o) getServletContext().getAttribute("database");
        try (Connection con = database.open()) {
            con.createQuery(newUserQuery).bind(u).executeUpdate();
        } catch (Sql2oException exc) {
            //Il database non ha accettato l'utente
            errors = new ArrayList<>();
            errors.add("Utente gia esistente");
            request.getServletContext().setAttribute("errors", errors);

            RequestDispatcher rd = request.getRequestDispatcher("templates/registration.jsp");
            rd.forward(request, response);
            return;
        }


        /*Pdf pdfLOL = new Pdf();
        Mailer miaMail = new Mailer();
        miaMail.sendMailAttachment(email, "Benvenuto su BOH", "Benvenuto " + username + ",\n\n testo della email ", pdfLOL.generaPDF("mailto:"+email));

        UserManager manager = (UserManager) request.getServletContext().getAttribute("user_manager");
        u = manager.authenticateUser(email, password);
        response.setHeader("Content-Type", "text/plain");
        response.getWriter().write(u.toString());*/

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("templates/registration.jsp");
        rd.forward(request, response);
    }
}
