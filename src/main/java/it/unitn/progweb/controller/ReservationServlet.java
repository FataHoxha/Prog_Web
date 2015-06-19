package it.unitn.progweb.controller;

import it.unitn.progweb.model.Price;
import org.sql2o.Connection;
import org.sql2o.Sql2o;
import org.sql2o.Sql2oException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by davide on 15/06/18.
 */
@WebServlet(name = "ReservationServlet",urlPatterns = {"/prenota"})
public class ReservationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Sql2o database = (Sql2o) getServletContext().getAttribute("database");
        String currentMovies = "select * from \"price\"";
        List<Price> prices;
        try(Connection conn = database.open()){
            prices = conn.createQuery(currentMovies).executeAndFetch(Price.class);
        } catch (Sql2oException exc) {
            throw exc;
        }

        request.setAttribute("prices", prices);



        RequestDispatcher rd = request.getRequestDispatcher("templates/reservation.jsp");
        rd.forward(request, response);
    }
}
