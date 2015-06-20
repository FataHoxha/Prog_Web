package it.unitn.progweb.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import it.unitn.progweb.lib.Mailer;
import it.unitn.progweb.model.*;
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
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(name = "ReservationServlet",urlPatterns = {"/prenota"})
public class ReservationServlet extends HttpServlet {

    private final static Type reservationList = new TypeToken<Collection<Reservation>>(){}.getType();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Sql2o database = (Sql2o) request.getServletContext().getAttribute("database");
        MovieManager manager = (MovieManager) request.getServletContext().getAttribute("movie_manager");
        Integer show_id = manager.validateShow(request.getParameter("show_id"));
        if(show_id == null) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }

        User u = (User) request.getSession().getAttribute("user");
        assert u.getId() != -1: "not authenticated user should not get here";

        Gson gson = new Gson();
        List<Reservation> res = gson.fromJson(request.getReader(), reservationList);
        Date now = new Date();

        res.stream().forEach(r -> {
            r.setUser_id(u.getId());
            r.setShow_id(show_id);
            r.setCreated(now);
        });
//        user_id  | bigint                      | not null
//        show_id  | bigint                      | not null
//        price_id | bigint                      | not null
//        seat_id  | bigint                      | not null
//        created  | timestamp without time zone | not null default now()
        JsonObject obj = new JsonObject();
        try(Connection conn = database.beginTransaction()) {
            List<Integer> seats = res.stream().map(Reservation::getSeat_id).collect(Collectors.toList());
            String occupiedQuery = "select count(id) from \"seat_status\" where show_id=:show_id and status <> 1 and id in :seats";
            Integer occupied = conn.createQuery(occupiedQuery)
                    .addParameter("show_id", show_id)
                    .addParameter("seats", seats)
                    .executeScalar(Integer.class);
            if(occupied > 0) {
                conn.rollback();
                obj.addProperty("success", false);
                obj.addProperty("message", "Alcuni posti sono già stati riservati");
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            } else {
                String insertReservation = "insert into reservation (user_id, show_id, price_id, seat_id) " +
                        "values (:user_id, :show_id, :price_id, :seat_id);";
                res.stream().forEach(r -> {
                    conn.createQuery(insertReservation)
                            .bind(r)
                            .throwOnMappingFailure(false)
                            .executeUpdate();
                });

                conn.commit();
                response.setStatus(HttpServletResponse.SC_OK);
                obj.addProperty("success", true);
            }
        } catch (Sql2oException exc) {
            obj.addProperty("success", false);
            obj.addProperty("message", "Errore del server");
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }

        Order o = new Order(u, res, database);
        o.sendReservation((Mailer) request.getServletContext().getAttribute("mailer"));

        response.setContentType("application/json");
        response.getWriter().write(obj.toString());
        return;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Sql2o database = (Sql2o) getServletContext().getAttribute("database");
        MovieManager moviemanager = (MovieManager) getServletContext().getAttribute("movie_manager");
        Integer show_id = moviemanager.validateShow(request.getParameter("show_id"));

        if(show_id==null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
            return;
        }

        String showSeats = "select * from \"seat_status\" where show_id=:show_id ORDER BY \"row\", \"column\"";
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
