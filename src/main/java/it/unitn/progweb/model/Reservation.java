package it.unitn.progweb.model;

public class Reservation {

    private Integer id;
    private Integer user_id;
    private Integer show_id;
    private Integer price_id;
    private Integer seat_id;
    private Integer created; // TIMESTAMP

    public Reservation(){ return;}

    public String toString(){
        //TODO se serve per riempire i qr e le mail
        //"SELECT U.username AS username, U.email AS email, M.title AS title, P.amount AS amount, P.kind AS kind, SW.date_time AS date_time, T.description AS description, ST.row AS row, ST.column AS column FROM ((((((\"user\" U JOIN \"reservation\" R ON U.uid = R.user_id) JOIN \"seat\" ST ON R.seat_id = ST.id) JOIN \"show\" SW ON R.show_id = SW.id) JOIN \"movie\" M ON SW.movie_id = M.id) JOIN \"price\" P ON R.price_id = P.id) JOIN \"theater\" T ON SW.theater_id = T.id);"

        return "";
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