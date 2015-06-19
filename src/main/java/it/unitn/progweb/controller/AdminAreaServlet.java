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


        String sqlshow = "WITH showprice AS (SELECT s.id, COUNT(r.id) as postivenduti, SUM(p.amount) as amount FROM ((reservation r join show s on s.id = r.show_id) join price p on r.price_id=p.id) GROUP BY s.id) SELECT sp.postivenduti as postivenduti, sp.amount, m.title, s.date_time as data FROM ((showprice sp JOIN show s ON sp.id= s.id) JOIN movie m on m.id=s.movie_id);";

        List<Map<String,Object>> reportsShowStats;
        try (Connection con = database.open()) {
            reportsShowStats = con.createQuery(sqlshow).executeAndFetchTable().asList();
        }
        request.setAttribute("showstats", reportsShowStats);

        String sqlTopUsers = "select u.uid, u.username as username, COUNT(r.id) as numeroreservation from (\"user\" u join reservation r on u.uid = r.user_id) group by u.uid ORDER BY numeroreservation DESC LIMIT 10;";
        List<Map<String,Object>> reportsTopUsers;
        try (Connection con = database.open()) {
            reportsTopUsers = con.createQuery(sqlTopUsers).executeAndFetchTable().asList();
        }
        request.setAttribute("topusers", reportsTopUsers);

        String sqlTopIncassiFilm = "select m.id, m.title, sum(p.amount) as incasso from (((movie m join show sh on m.id=sh.movie_id) join reservation r on sh.id=r.show_id) join price p on p.id=r.price_id) group by m.id order by incasso desc limit 10;";
        List<Map<String,Object>> reportTopIncassiFilm;
        try (Connection con = database.open()) {
            reportTopIncassiFilm = con.createQuery(sqlTopIncassiFilm).executeAndFetchTable().asList();
        }

        request.setAttribute("topmovie", reportTopIncassiFilm);


        String sqlUserRes = "select distinct u.uid, u.username from (reservation r join \"user\" u on r.user_id=u.uid) order by u.uid;";
        List<Map<String,Object>> reportUserRes;
        try (Connection con = database.open()) {
            reportUserRes = con.createQuery(sqlUserRes).executeAndFetchTable().asList();
        }

        request.setAttribute("userres", reportUserRes);

        Map<String, Object> userreservation = new HashMap<>();

        Iterator iterator = reportUserRes.iterator();
        Map<String,Object> temp;
/*
        while (iterator.hasNext()) {
            temp =(Map<String,Object>) iterator.next();
            userreservation.put(temp.get("username").toString(), new HashMap<String, Object>());
        }

        String sqlUserReservation = "select distinct u.uid, u.username,  from ((reservation r join \"user\" u on r.user_id=u.uid) join show s on s.id=r.show_id) join seat st on st.id = s.seat_id   order by u.uid;";
        List<Map<String,Object>> reportUserReservation;
        try (Connection con = database.open()) {
            reportUserReservation = con.createQuery(sqlUserReservation).executeAndFetchTable().asList();
        }



        for(Map<String, Object> field: reportUserRes) {

            //reportAllreservation.put(field, );
        }
*/

            RequestDispatcher rd = request.getRequestDispatcher("templates/admin.jsp");
        rd.forward(request, response);
    }

}
