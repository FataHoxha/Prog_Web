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
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    private final Logger logger = Logger.getLogger(getClass().getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("templates/login.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserManager manager = (UserManager) request.getServletContext().getAttribute("user_manager");
        final String name = request.getParameter("name");
        final String password = request.getParameter("password");
        HttpSession session = request.getSession(true);
        User u;
        u = (User) session.getAttribute("user");
        // User is already authenticated, redirect to home
        if(u.isAuthenticated()) {
            response.sendRedirect("/");
            return;
        }

        u = manager.authenticateUser(name, password);
        if(!u.isAuthenticated()){
            response.sendRedirect("/login?error=1");
            return;
        }

        session.setAttribute("user", u);
        response.sendRedirect("/");
    }
}
