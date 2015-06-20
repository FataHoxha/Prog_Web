package it.unitn.progweb.controller;

import it.unitn.progweb.model.*;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import org.sql2o.Connection;
import org.sql2o.Sql2o;
import org.sql2o.Sql2oException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.annotation.WebServlet;

@WebServlet(name = "ReservationServlet",urlPatterns = {"/prenota"})
public class ReservationServlet extends HttpServlet {
    private final static Type reservationList = new TypeToken<Collection<Reservation>>(){}.getType();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User u = (User) request.getSession().getAttribute("user");
        assert u.getId() != -1: "not authenticated user should not get here";
        Gson gson = new Gson();
        List<Reservation> res = gson.fromJson(request.getReader(), reservationList);

        res.stream().forEach(r -> {
            r.setUser_id(u.getId());
            r.setShow_id(1);
        });

        response.setStatus(HttpServletResponse.SC_OK);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Sql2o database = (Sql2o) getServletContext().getAttribute("database");
        MovieManager moviemanager = (MovieManager) getServletContext().getAttribute("movie_manager");
        Integer show_id = moviemanager.validateShow(request.getParameter("show_id"));

        if(show_id==null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
            return;
        }

        String showSeats = "select * from \"seat_status\" where show_id=:show_id";
        List<Seat> seats;
        try(Connection conn = database.open()){
            seats = conn.createQuery(showSeats)
                    .addParameter("show_id", show_id)
                    .throwOnMappingFailure(false)
                    .executeAndFetch(Seat.class);
        } catch (Sql2oException exc) {
            throw exc;
        }

        List<Price> prices;
        try(Connection conn = database.open()){
            prices = conn.createQuery("select * from price;").executeAndFetch(Price.class);
        } catch (Sql2oException exc) {
            throw exc;
        }

        request.setAttribute("prices", prices);
        request.setAttribute("seats", seats);

        RequestDispatcher rd = request.getRequestDispatcher("templates/reservation.jsp");
        rd.forward(request, response);
    }
}
