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

/**
 *
 * Servlet che serve la homepage del sito
 */

@WebServlet(name = "HomeServlet", urlPatterns = {"/"})
public class HomeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Sql2o database = (Sql2o) getServletContext().getAttribute("database");


        String movieshow = "SELECT title,poster_uri,plot FROM current_movies ORDER BY random() LIMIT 3";

        List<Map<String, Object>> movieShow;
        try (Connection con = database.open()) {
            movieShow = con.createQuery(movieshow).executeAndFetchTable().asList();
        }
        request.setAttribute("movieShow", movieShow);


        RequestDispatcher rd = request.getRequestDispatcher("templates/home.jsp");
        rd.forward(request, response);
    }
}
