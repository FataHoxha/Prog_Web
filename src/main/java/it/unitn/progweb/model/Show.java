package it.unitn.progweb.model;

import java.util.Date;

public class Show {
    private Integer id;
    private Integer movie_id;
    private String theater;
    private Date date_time;
    private Integer duration;

    @Override
    public String toString() {
        return "Show{" +
                "id=" + id +
                ", movie_id=" + movie_id +
                ", theater='" + theater + '\'' +
                ", date_time=" + date_time +
                ", duration=" + duration +
                '}';
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTheater() {
        return theater;
    }

    public void setTheater(String theater) {
        this.theater = theater;
    }

    public Date getDate_time() {
        return date_time;
    }

    public void setDate_time(Date date_time) {
        this.date_time = date_time;
    }

    public Integer getMovie_id() {
        return movie_id;
    }

    public void setMovie_id(Integer movie_id) {
        this.movie_id = movie_id;
    }
}
