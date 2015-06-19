package it.unitn.progweb.controller;

import it.unitn.progweb.model.User;
import it.unitn.progweb.model.UserManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.constraints.NotNull;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    private final Logger logger = Logger.getLogger(getClass().getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        User u = (User) session.getAttribute("user");
        // User is already authenticated, redirect to home
        assert u != null: "user should never be null";
        if(u.isAuthenticated()) {
            response.sendRedirect(getNext(request));
            return;
        }
        String next = this.getNext(request);
        if(!next.equals("/")) request.setAttribute("next", "?next="+this.getNext(request));

        RequestDispatcher rd = request.getRequestDispatcher("templates/login.jsp");
        rd.forward(request, response);
    }

    private @NotNull String getNext(HttpServletRequest request){
        String next = request.getParameter("next");
        if(next == null){
            next = "/";
        }
        return next;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserManager manager = (UserManager) request.getServletContext().getAttribute("user_manager");
        final String email = request.getParameter("email");

        final String password = request.getParameter("password");
        HttpSession session = request.getSession(true);
        List<String> errors;


        User u = (User) session.getAttribute("user");
        // User is already authenticated, redirect to home
        assert u != null: "user should never be null";
        if(u.isAuthenticated()) {
            response.sendRedirect(getNext(request));
            return;
        }

        u = manager.authenticateUser(email, password);

        if(!u.isAuthenticated()){
            errors = new ArrayList<>();
            errors.add("Login fallito");
            request.setAttribute("errors", errors);
            String next = this.getNext(request);
            if(!next.equals("/")) request.setAttribute("next", "?next="+this.getNext(request));

            RequestDispatcher rd = request.getRequestDispatcher("templates/login.jsp");

            rd.forward(request, response);
            return;
        }

        session.setAttribute("user", u);
        response.sendRedirect(getNext(request));
    }
}
