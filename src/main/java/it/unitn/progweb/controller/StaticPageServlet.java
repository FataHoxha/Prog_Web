package it.unitn.progweb.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="StaticPageServlet", urlPatterns = {"/dovesiamo", "/prices"})
public class StaticPageServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getServletPath();

        request.getServletContext().setAttribute("include", page);

        RequestDispatcher rd = request.getRequestDispatcher(String.format("templates/staticpages%s.jsp", page));
        rd.forward(request, response);
    }
}

