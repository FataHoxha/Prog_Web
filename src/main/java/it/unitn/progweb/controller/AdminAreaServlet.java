package it.unitn.progweb.controller;

import org.sql2o.Connection;
import org.sql2o.Sql2o;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

/**
 * Servlet della pagina di gestione dell'amministratore
 */

@WebServlet(name = "AdminAreaServlet", urlPatterns = {"/adminarea"})
public class AdminAreaServlet extends HttpServlet {

    /**
     * doPost - fornisce un json per la pagina dei posti più prenotati
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        Sql2o database = (Sql2o) getServletContext().getAttribute("database");
        String sqlheat = "WITH q1 AS (SELECT seat_id AS id, COUNT(*) AS num FROM reservation GROUP BY id), q2 AS (SELECT id, \"row\", \"column\" FROM seat WHERE theater_id = 1) SELECT \"row\" AS r,\"column\" AS c,num FROM (q1 NATURAL JOIN q2) order by num limit 10;";
        List<Map<String, Object>> heatStats;
        try (Connection con = database.open()) {
            heatStats = con.createQuery(sqlheat).executeAndFetchTable().asList();
        }

        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator iterator = heatStats.iterator();
        Map<String, Object> temp;
        while (iterator.hasNext()) {
            temp = (Map<String, Object>) iterator.next();
            sb.append("{\"row\":\"");
            sb.append(temp.get("r")).toString();
            sb.append("\", \"column\":\"");
            sb.append(temp.get("c")).toString();
            sb.append("\", \"count\":\"");
            sb.append(temp.get("num")).toString();
            sb.append("\"},");
        }
        if (heatStats.size() > 0) {
            sb.setLength(sb.length() - 1);
        }
        sb.append(']');

        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.print(sb.toString());
        out.flush();
    }

    /**
     * doGet - prepara informazioni riguardanti le statistiche e
     *         i posti prenotati da ogni utente
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Sql2o database = (Sql2o) getServletContext().getAttribute("database");


        // statistiche posti venduti
        String sqlshow = "WITH showprice AS (SELECT s.id, COUNT(r.id) AS postivenduti, SUM(p.amount) AS amount FROM ((reservation r JOIN show s on s.id = r.show_id) JOIN price p ON r.price_id=p.id) GROUP BY s.id) SELECT sp.postivenduti AS postivenduti, sp.amount, m.title, s.date_time AS data FROM ((showprice sp JOIN show s ON sp.id= s.id) JOIN movie m ON m.id=s.movie_id) ORDER BY sp.postivenduti DESC;";

        List<Map<String, Object>> reportsShowStats;
        try (Connection con = database.open()) {
            reportsShowStats = con.createQuery(sqlshow).executeAndFetchTable().asList();
        }
        request.setAttribute("showstats", reportsShowStats);


        // statistiche top user
        String sqlTopUsers = "SELECT u.uid, u.username AS username, COUNT(r.id) AS numeroreservation FROM (\"user\" u JOIN reservation r ON u.uid = r.user_id) GROUP BY u.uid ORDER BY numeroreservation DESC LIMIT 10;";
        List<Map<String, Object>> reportsTopUsers;
        try (Connection con = database.open()) {
            reportsTopUsers = con.createQuery(sqlTopUsers).executeAndFetchTable().asList();
        }
        request.setAttribute("topusers", reportsTopUsers);


        //statistiche incassi film
        String sqlTopIncassiFilm = "SELECT m.id, m.title, SUM(p.amount) AS incasso FROM (((movie m JOIN show sh ON m.id=sh.movie_id) JOIN reservation r ON sh.id=r.show_id) join price p ON p.id=r.price_id) GROUP BY m.id ORDER BY incasso DESC LIMIT 10;";
        List<Map<String, Object>> reportTopIncassiFilm;
        try (Connection con = database.open()) {
            reportTopIncassiFilm = con.createQuery(sqlTopIncassiFilm).executeAndFetchTable().asList();
        }

        request.setAttribute("topmovie", reportTopIncassiFilm);

        //pesca le sale
        String sqlTheatre = "SELECT id, description FROM theater";
        List<Map<String, Object>> reportTheatre;
        try (Connection con = database.open()) {
            reportTheatre = con.createQuery(sqlTheatre).executeAndFetchTable().asList();
        }

        request.setAttribute("theater", reportTheatre);

        //query per catturare le reservation di ogni utente

        String sqlUserRes = "SELECT DISTINCT u.uid, u.username FROM (reservation r JOIN \"user\" u ON r.user_id=u.uid) ORDER BY u.uid;";
        List<Map<String, Object>> reportUserRes;
        try (Connection con = database.open()) {
            reportUserRes = con.createQuery(sqlUserRes).executeAndFetchTable().asList();
        }
        request.setAttribute("userres", reportUserRes);

        Map<String, Object> userreservation = new HashMap<>();

        Iterator iterator = reportUserRes.iterator();
        Map<String, Object> temp;

        while (iterator.hasNext()) {
            temp = (Map<String, Object>) iterator.next();
            userreservation.put(temp.get("username").toString(), new ArrayList<Map>());
        }

        String sqlUserReservation = "SELECT DISTINCT u.uid, u.username, m.title, r.id AS reservation, s.date_time AS data, st.column, st.row  FROM (((reservation r join \"user\" u ON r.user_id=u.uid) JOIN show s ON s.id=r.show_id) JOIN seat st ON st.id = r.seat_id) JOIN movie m ON s.movie_id=m.id WHERE s.date_time > current_timestamp ORDER BY u.uid;";
        List<Map<String, Object>> reportUserReservation;
        try (Connection con = database.open()) {
            reportUserReservation = con.createQuery(sqlUserReservation).executeAndFetchTable().asList();
        }

        Iterator iteratorlist = reportUserReservation.iterator();

        while (iteratorlist.hasNext()) {
            temp = (Map<String, Object>) iteratorlist.next();
            ((ArrayList<Map>) userreservation.get(temp.get("username").toString())).add(temp);
        }

        request.setAttribute("userreservations", userreservation);

        RequestDispatcher rd = request.getRequestDispatcher("templates/admin.jsp");
        rd.forward(request, response);
    }
}
