package it.unitn.progweb.model;

import org.sql2o.Connection;
import org.sql2o.Sql2o;
import java.util.List;
import java.util.Map;

public class Reservation {

    private Integer id;
    private Integer user_id;
    private Integer show_id;
    private Integer price_id;
    private Integer seat_id;
    private Integer created; // TIMESTAMP


    private Sql2o database;

    public Reservation(Sql2o database){ this.database= database; }

    @Override
    public String toString(){
        //TODO se serve per riempire i qr e le mail
        //"SELECT U.username AS username, U.email AS email, M.title AS title, P.amount AS amount, P.kind AS kind, SW.date_time AS date_time, T.description AS description, ST.row AS row, ST.column AS column FROM ((((((\"user\" U JOIN \"reservation\" R ON U.uid = R.user_id) JOIN \"seat\" ST ON R.seat_id = ST.id) JOIN \"show\" SW ON R.show_id = SW.id) JOIN \"movie\" M ON SW.movie_id = M.id) JOIN \"price\" P ON R.price_id = P.id) JOIN \"theater\" T ON SW.theater_id = T.id);"
        String res="Dati prenotazione\n";
        List<Map<String,Object>> getReportData;

        String complexSql = "SELECT U.username AS username, U.email AS email, M.title AS title, P.amount AS amount, P.kind AS kind, SW.date_time AS date_time, T.description AS description, ST.row AS row, ST.column AS column FROM ((((((\"user\" U JOIN \"reservation\" R ON U.uid = R.user_id) JOIN \"seat\" ST ON R.seat_id = ST.id) JOIN \"show\" SW ON R.show_id = SW.id) JOIN \"movie\" M ON SW.movie_id = M.id) JOIN \"price\" P ON R.price_id = P.id) JOIN \"theater\" T ON SW.theater_id = T.id) WHERE R.id= :reservationId;";

        try (Connection con = this.database.open()) {

            getReportData = con.createQuery(complexSql).addParameter("reservationId", this.id).executeAndFetchTable().asList();
        }

        for(int i=0; i < getReportData.size(); i++){

            res+="\n Nome utente: " + getReportData.get(i).get("username").toString();
            res+="\n Email: " + getReportData.get(i).get("email").toString();
            res+="\n Film: " + getReportData.get(i).get("title").toString();
            res+="\n Data e ora: " + getReportData.get(i).get("date_time").toString();
            res+="\n Tipologia biglietto: " + getReportData.get(i).get("kind").toString();
            res+="\n Prezzo: " + getReportData.get(i).get("amount").toString();
            //res+="\n Sala: " + getReportData.get(i).get("description").toString();
            res+="\n Posto: fila " + getReportData.get(i).get("row").toString()+
                    " colonna " + getReportData.get(i).get("column").toString();
        }
        return res;

    }

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUser_id() {
        return user_id;
    }
    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getShow_id() {
        return show_id;
    }
    public void setShow_id(Integer show_id) {
        this.show_id = show_id;
    }

    public Integer getPrice_id() { return price_id; }
    public void setPrice_id(Integer price_id) {
        this.price_id = price_id;
    }

    public Integer getSeat_id() {
        return seat_id;
    }
    public void setSeat_id(Integer seat_id) {
        this.seat_id = seat_id;
    }

    public Integer getCreated() {
        return created;
    }
    public void setCreated(Integer created) {
        this.created = created;
    }

}