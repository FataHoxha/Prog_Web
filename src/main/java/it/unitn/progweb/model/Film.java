package it.unitn.progweb.model;

/**
 * Created by gas on 08/06/15.
 */
public class Film {
    private Integer idFilm;
    private String title;
    private Integer idGenre;
    private String urlTrailer;
    private Integer duration;
    private String plot;
    private String uriPoster;

    public Film(Integer idFilm, String title, Integer idGenre, String urlTrailer, Integer duration, String plot, String uriPoster) {
        this.idFilm = idFilm;
        this.title = title;
        this.idGenre = idGenre;
        this.urlTrailer = urlTrailer;
        this.duration = duration;
        this.plot = plot;
        this.uriPoster = uriPoster;
    }

    @Override
    public String toString() {
        return "Film{" +
                "id_film=" + idFilm +
                ", title='" + title + '\'' +
                ", poster='" + uriPoster + '\'' +
                '}';
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setUrlTrailer(String urlTrailer) {
        this.urlTrailer = urlTrailer;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public void setPlot(String plot) {
        this.plot = plot;
    }

    public void setUriPoster(String uriPoster) {
        this.uriPoster = uriPoster;
    }

    public Integer getId_film() {
        return idFilm;
    }

    public String getTitle() {
        return title;
    }

    public Integer getIdGenre() {
        return idGenre;
    }

    public String getUrlTrailer() {
        return urlTrailer;
    }

    public Integer getDuration() {
        return duration;
    }

    public String getPlot() {
        return plot;
    }

    public String getUriPoster() {
        return uriPoster;
    }
}
