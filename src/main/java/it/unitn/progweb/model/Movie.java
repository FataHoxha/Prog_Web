package it.unitn.progweb.model;

import java.util.ArrayList;
import java.util.List;

public class Movie {

    private Integer id;

    private String title;
    private String genre;
    private String trailer_url;
    private String plot;
    private String poster_uri;
    private List<Show> shows;
    private Integer duration;

    public Movie(){
        shows = new ArrayList<>();
    }

    public List<Show> getShows() {
        return shows;
    }

    public void setShows(List<Show> shows) {
        this.shows = shows;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getTrailer_url() {
        return trailer_url;
    }

    public void setTrailer_url(String trailer_url) {
        this.trailer_url = trailer_url;
    }

    public String getPlot() {
        return plot;
    }

    public void setPlot(String plot) {
        this.plot = plot;
    }

    public String getPoster_uri() {
        return poster_uri;
    }

    public void setPoster_uri(String poster_uri) {
        this.poster_uri = poster_uri;
    }
}
