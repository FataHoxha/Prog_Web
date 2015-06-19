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
import java.util.List;
import java.util.Map;

@WebServlet(name = "AdminAreaServlet", urlPatterns = {"/adminarea"})
public class AdminAreaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Sql2o database = (Sql2o) getServletContext().getAttribute("database");


        String sqlshow = "select s.id, COUNT(r.id), SUM(p.amount) from ((reservation r join show s on s.id=r.show_id) join price p on r.price_id=p.id) GROUP BY s.id;";
        List<Map<String,Object>> reportsShowStats;
        try (Connection con = database.open()) {
            reportsShowStats = con.createQuery(sqlshow).executeAndFetchTable().asList();
        }

        request.setAttribute("showstats", reportsShowStats);

        String sqlTopUsers = "select u.uid, COUNT(r.id) as numeroreservation from (\"user\" u join reservation r on u.uid = r.user_id) group by u.uid ORDER BY numeroreservation DESC LIMIT 10;";
        List<Map<String,Object>> reportsTopUsers;
        try (Connection con = database.open()) {
            reportsTopUsers = con.createQuery(sqlTopUsers).executeAndFetchTable().asList();
        }

        request.setAttribute("topusers", reportsTopUsers);

        String sqlTopIncassiFilm = "";
        List<Map<String,Object>> reportTopIncassiFilm;
        try (Connection con = database.open()) {
            reportTopIncassiFilm = con.createQuery(sqlTopIncassiFilm).executeAndFetchTable().asList();
        }

        request.setAttribute("topmovie", reportTopIncassiFilm);



        RequestDispatcher rd = request.getRequestDispatcher("templates/admin.jsp");
        rd.forward(request, response);
    }

}
