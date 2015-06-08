package it.unitn.progweb.model;

import org.sql2o.Connection;
import org.sql2o.Sql2o;

/**
 * Created by gas on 08/06/15.
 */
public class FilmManager {

    private Sql2o database;

    private String allFilms = "select id,title from film";
    private String addFilm = "insert into film(title, id_genre, url_trailer, duration, plot, uri_poster) values (:title, :id_genre, :url_trailer, :duration, :plot, :uri_poster;";
    public FilmManager(Sql2o manager) {
        this.database = manager;
    }

    public void addFilm2DB(String title, Integer idGenre, String urlTrailer, Integer duration, String plot, String uriPoster){
        Film f;
        try(Connection conn = database.open()) {
            f = conn.createQuery(addFilm)
                    .addParameter("title", title)
                    .addParameter("id_genre", idGenre)
                    .addParameter("url_trailer", urlTrailer)
                    .addParameter("duration", duration)
                    .addParameter("plot", plot)
                    .addParameter("uri_poster", uriPoster)
                    .executeAndFetchFirst(Film.class);
        }
    }
}
