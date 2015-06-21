package it.unitn.progweb.controller;

import org.sql2o.Connection;
import org.sql2o.Sql2o;
import org.sql2o.Sql2oException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "DeleteReservationServlet", urlPatterns = {"/deletereservation"})
public class DeleteReservationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer reservation = this.validateReservation(request.getParameter("delete"));

        if (reservation != null) {
            Sql2o database = (Sql2o) getServletContext().getAttribute("database");

            try (Connection conn = database.beginTransaction()) {
                String sqlPrice = "SELECT p.amount FROM (reservation r JOIN price p ON r.price_id=p.id) WHERE r.id=:id;";
                Float price = conn.createQuery(sqlPrice)
                        .addParameter("id", reservation)
                        .executeScalar(Float.class);

                String sqlUserId = "SELECT r.user_id FROM reservation r WHERE r.id=:id";
                Integer userId = conn.createQuery(sqlUserId)
                        .addParameter("id", reservation)
                        .executeScalar(Integer.class);

                String sqlcredit = "SELECT credit FROM \"user\" WHERE uid=:id";
                Float credit = conn.createQuery(sqlcredit)
                        .addParameter("id", userId)
                        .executeScalar(Float.class);

                String sqlaccredita = "UPDATE \"user\" SET credit = :price WHERE uid=:id;";
                conn.createQuery(sqlaccredita).addParameter("id", userId).addParameter("price", price + credit).executeUpdate();

                String sqldelete = "delete from reservation where id=:id";
                conn.createQuery(sqldelete).addParameter("id", reservation).executeUpdate();

                conn.commit();

            } catch (Sql2oException exc) {

                response.sendError(HttpServletResponse.SC_BAD_REQUEST);
                return;
            }

            response.setStatus(200);
            return;

        }

        response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        return;


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        return;


    }

    public Integer validateReservation(String idString) {

        Integer id = null;

        try {
            id = Integer.parseInt(idString);
        } catch (NumberFormatException exc) {
            return null;
        }
        if (id != null) {

            Sql2o database = (Sql2o) getServletContext().getAttribute("database");
            String sqlShow = "select count(*) from (\"reservation\" r join \"show\" s on s.id=r.show_id) where r.id=:id and date_time > current_timestamp";
            Integer result;
            try (Connection conn = database.open()) {
                result = conn.createQuery(sqlShow).addParameter("id", id).executeScalar(Integer.class);
            } catch (Sql2oException exc) {
                throw exc;
            }

            if (result > 0) return id;
        }

        return null;
    }
}
