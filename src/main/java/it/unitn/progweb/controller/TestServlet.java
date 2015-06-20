package it.unitn.progweb.controller;

import it.unitn.progweb.lib.Mailer;
import it.unitn.progweb.model.Order;
import it.unitn.progweb.model.Reservation;
import it.unitn.progweb.model.User;
import org.sql2o.Sql2o;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet(name = "TestServlet", urlPatterns = {"/test"})
public class TestServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        Sql2o database = (Sql2o) request.getServletContext().getAttribute("database");
        Reservation r = new Reservation();
        Reservation r2 = new Reservation();
        r.setId(11);
        r2.setId(12);
        ArrayList<Reservation> reservations = new ArrayList<Reservation>();

        reservations.add(r);
        reservations.add(r2);

        Order o =new Order(new User(),reservations, database);
        Mailer m = (Mailer) request.getServletContext().getAttribute("email_manager");





        m.sendMail("fabiano.zenatti@studenti.unitn.it","test","testssss");



        response.getWriter().write(r.details(database));
    }
}
