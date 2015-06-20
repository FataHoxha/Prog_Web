package it.unitn.progweb.controller;

import it.unitn.progweb.lib.Mailer;
import it.unitn.progweb.model.UserManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PasswordResetServlet", urlPatterns = {"/resetpassword/*"})
public class PasswordResetServlet extends HttpServlet {
    private final String email_body = "" +
            "Per effettuare il recupero della password, clicca sul seguente link:\n" +
            "%s\n\nSe invece non hai richiesto il recupero della password, ignora questo messaggio";

    // NOTHING -> form
    // POST::email -> send email
    // GET::token -> recover password
    // POST:: newpassword

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Mailer m = (Mailer) request.getServletContext().getAttribute("email_manager");
        UserManager um = (UserManager) request.getServletContext().getAttribute("user_manager");

        int stage;
        String email = request.getParameter("email");
        String token = request.getParameter("token");

        PrintWriter pw = response.getWriter();
                pw.println(token);

        String password = request.getParameter("password");

        if(token != null) {
            stage = 3; // set new password
            um.resetPassword(token, password);
        }
        else {
            if (email == null) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST);
                return;
            }
            stage = 1;  // generate token and send email
            String new_token = um.generateResetPasswordToken(email);
            String token_link = "http://" + request.getServerName() + ":" + request.getServerPort() + "/resetpassword?t=" + new_token;
            m.sendMail(email, "Recupera la tua password", String.format(email_body, token_link));
        }

        request.setAttribute("stage", stage);

        RequestDispatcher rd = request.getRequestDispatcher("templates/resetpassword.jsp");
        rd.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserManager um = (UserManager) request.getServletContext().getAttribute("user_manager");
        String token = request.getParameter("t");
        int stage;

        if(token == null || token.isEmpty()) {
            // show the email form
            stage = 0;
        }
        else {
            // if token is valid, show reset form
            if (um.isValidResetPasswordToken(token)) {
                stage = 2;
                request.setAttribute("token", token);
            } else {
                // otherwise 400
                response.sendError(HttpServletResponse.SC_BAD_REQUEST);
                return;
            }
        }

        request.setAttribute("stage", stage);
        RequestDispatcher rd = request.getRequestDispatcher("templates/resetpassword.jsp");
        rd.forward(request, response);
    }
}
