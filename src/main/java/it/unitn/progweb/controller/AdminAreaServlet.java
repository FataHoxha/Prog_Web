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
import java.util.*;

@WebServlet(name = "AdminAreaServlet", urlPatterns = {"/adminarea"})
public class AdminAreaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Sql2o database = (Sql2o) getServletContext().getAttribute("database");


        String sqlshow = "WITH showprice AS (SELECT s.id, COUNT(r.id) AS postivenduti, SUM(p.amount) AS amount FROM ((reservation r JOIN show s on s.id = r.show_id) JOIN price p ON r.price_id=p.id) GROUP BY s.id) SELECT sp.postivenduti AS postivenduti, sp.amount, m.title, s.date_time AS data FROM ((showprice sp JOIN show s ON sp.id= s.id) JOIN movie m ON m.id=s.movie_id);";

        List<Map<String,Object>> reportsShowStats;
        try (Connection con = database.open()) {
            reportsShowStats = con.createQuery(sqlshow).executeAndFetchTable().asList();
        }
        request.setAttribute("showstats", reportsShowStats);

        String sqlTopUsers = "SELECT u.uid, u.username AS username, COUNT(r.id) AS numeroreservation FROM (\"user\" u JOIN reservation r ON u.uid = r.user_id) GROUP BY u.uid ORDER BY numeroreservation DESC LIMIT 10;";
        List<Map<String,Object>> reportsTopUsers;
        try (Connection con = database.open()) {
            reportsTopUsers = con.createQuery(sqlTopUsers).executeAndFetchTable().asList();
        }
        request.setAttribute("topusers", reportsTopUsers);

        String sqlTopIncassiFilm = "SELECT m.id, m.title, SUM(p.amount) AS incasso FROM (((movie m JOIN show sh ON m.id=sh.movie_id) JOIN reservation r ON sh.id=r.show_id) join price p ON p.id=r.price_id) GROUP BY m.id ORDER BY incasso DESC LIMIT 10;";
        List<Map<String,Object>> reportTopIncassiFilm;
        try (Connection con = database.open()) {
            reportTopIncassiFilm = con.createQuery(sqlTopIncassiFilm).executeAndFetchTable().asList();
        }

        request.setAttribute("topmovie", reportTopIncassiFilm);

        String sqlTheatre = "SELECT id, description FROM theater";
        List<Map<String,Object>> reportTheatre;
        try (Connection con = database.open()) {
            reportTheatre = con.createQuery(sqlTheatre).executeAndFetchTable().asList();
        }

        request.setAttribute("theater", reportTheatre);


        String sqlUserRes = "SELECT DISTINCT u.uid, u.username FROM (reservation r JOIN \"user\" u ON r.user_id=u.uid) ORDER BY u.uid;";
        List<Map<String,Object>> reportUserRes;
        try (Connection con = database.open()) {
            reportUserRes = con.createQuery(sqlUserRes).executeAndFetchTable().asList();
        }
        request.setAttribute("userres", reportUserRes);

        Map<String, Object> userreservation = new HashMap<>();

        Iterator iterator = reportUserRes.iterator();
        Map<String,Object> temp;

        while (iterator.hasNext()) {
            temp =(Map<String,Object>) iterator.next();
            userreservation.put(temp.get("username").toString(), new ArrayList<Map>());
        }

        String sqlUserReservation = "SELECT DISTINCT u.uid, u.username, m.title, r.id AS reservation, s.date_time AS data, st.column, st.row  FROM (((reservation r join \"user\" u ON r.user_id=u.uid) JOIN show s ON s.id=r.show_id) JOIN seat st ON st.id = r.seat_id) JOIN movie m ON s.movie_id=m.id ORDER BY u.uid;";
        List<Map<String,Object>> reportUserReservation;
        try (Connection con = database.open()) {
            reportUserReservation = con.createQuery(sqlUserReservation).executeAndFetchTable().asList();
        }

        Iterator iteratorlist = reportUserReservation.iterator();

        while (iteratorlist.hasNext()) {
            temp =(Map<String,Object>) iteratorlist.next();
            ((ArrayList<Map>)userreservation.get(temp.get("username").toString())).add(temp);
        }

        request.setAttribute("userreservations", userreservation);

        RequestDispatcher rd = request.getRequestDispatcher("templates/admin.jsp");
        rd.forward(request, response);
    }

}
