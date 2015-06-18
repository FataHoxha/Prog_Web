package it.unitn.progweb.controller;

import it.unitn.progweb.model.Reservation;
import org.sql2o.Sql2o;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by roberto on 18/06/15.
 */
@WebServlet(name = "TestServlet", urlPatterns = {"/test"})
public class TestServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        Sql2o database = (Sql2o) request.getServletContext().getAttribute("database");
        Reservation r = new Reservation();
        r.setId(11);
        response.getWriter().write(r.details(database));
    }
}
