package it.unitn.progweb.controller;

import it.unitn.progweb.model.Movie;
import it.unitn.progweb.model.MovieManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ScreeningServlet", urlPatterns = {"/programmazione"})
public class ScreeningServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MovieManager manager = (MovieManager) request.getServletContext().getAttribute("movie_manager");
        List<Movie> movies = manager.currentMovies();
        for(Movie m: movies) {
            manager.setShows(m);
        }

        request.setAttribute("movies", movies);
        RequestDispatcher rd = request.getRequestDispatcher("templates/screening.jsp");
        rd.forward(request, response);
    }
}
