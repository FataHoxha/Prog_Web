package it.unitn.progweb.model;

import org.sql2o.Connection;
import org.sql2o.Sql2o;
import org.sql2o.Sql2oException;

import javax.validation.constraints.NotNull;
import java.util.List;

public class MovieManager {
    private Sql2o database;

    public MovieManager(Sql2o database) {
        this.database = database;
    }

    public @NotNull List<Movie> currentMovies() throws Sql2oException {
        String currentMovies = "select * from \"current_movies\"";
        List<Movie> result;
        try(Connection conn = database.open()){
            result = conn.createQuery(currentMovies).executeAndFetch(Movie.class);
        } catch (Sql2oException exc) {
            throw exc;
        }
        return result;
    }

    public void setShows(Movie movie) throws Sql2oException {
        String showsForMovie = "select * from \"show_theater\" where movie_id=:id and date_time > current_timestamp";
        List<Show> shows;
        try(Connection conn = database.open()){
            shows = conn
                    .createQuery(showsForMovie)
                    .bind(movie)
                    .executeAndFetch(Show.class);
        } catch (Sql2oException exc) {
            throw exc;
        }
        movie.setShows(shows);
    }

    public Integer validateShow(String idString){

        Integer id = Integer.parseInt(idString);
        if(id!=null) {
            String sqlShow = "select count(*) from \"show\" where id=:id and date_time > current_timestamp";
            Integer result;
            try (Connection conn = database.open()) {
                result = conn.createQuery(sqlShow).addParameter("id", id).executeScalar(Integer.class);
            } catch (Sql2oException exc) {
                throw exc;
            }

            if(result>0) return id;
        }

        return null;
    }
}
