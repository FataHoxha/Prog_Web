package it.unitn.progweb.controller;

import it.unitn.progweb.model.Price;
import it.unitn.progweb.model.Seat;
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
    //TODO ficcare la query in una view...
        final Integer show_id = Integer.parseInt(request.getParameter("show_id"));

        Sql2o database = (Sql2o) getServletContext().getAttribute("database");
        String sqlPrices = "select * from \"price\"";
        List<Price> prices;
        try(Connection conn = database.open()){
            prices = conn.createQuery(sqlPrices).executeAndFetch(Price.class);
        } catch (Sql2oException exc) {
            throw exc;
        }

        request.setAttribute("prices", prices);

        final Integer maxRow;
        final Integer maxColumn;

        String sqlMaxRow = "select MAX(s.\"row\") from ((seat s join theater t on s.theater_id=t.id) join show sh on sh.theater_id=t.id) where sh.id=:myshow;";
        try (Connection con = database.open()) {
            maxRow = con.createQuery(sqlMaxRow).addParameter("myshow", show_id).executeScalar(Integer.class);
        }

        String sqlMaxColumn = "select MAX(s.\"column\") from ((\"seat\" s join theater t on s.theater_id=t.id) join show sh on sh.theater_id=t.id) where sh.id=:myshow";
        try (Connection con = database.open()) {
            maxColumn =  con.createQuery(sqlMaxColumn).addParameter("myshow", show_id).executeScalar(Integer.class);
        }

        String showSeats = "select s.id as id, s.theater_id as theater_id, s.row as row, s.column as column, s.exist as exist from (seat s join theater t on s.theater_id=t.id) join show sh on sh.theater_id=t.id where sh.id=:myshow";
        List<Seat> seats;
        try(Connection conn = database.open()){
            seats = conn.createQuery(showSeats).addParameter("myshow", show_id).executeAndFetch(Seat.class);
        } catch (Sql2oException exc) {
            throw exc;
        }

        request.setAttribute("maxcolumn", maxColumn);
        request.setAttribute("maxrow", maxRow);
        request.setAttribute("seats", seats);

        RequestDispatcher rd = request.getRequestDispatcher("templates/reservation.jsp");
        rd.forward(request, response);
    }
}
