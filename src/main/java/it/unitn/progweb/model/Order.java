package it.unitn.progweb.model;


import com.lowagie.text.Image;
import com.sun.mail.iap.ByteArray;
import org.sql2o.Sql2o;

import java.util.ArrayList;
import java.util.List;

/**
 * An Order is a list of reservations linked to a User
 */
public class Order {

    private Sql2o database;
    private List<Reservation> reservations;
    private User user;

    public Order(User user, List<Reservation> reservations, Sql2o database){
        this.database = database;
        this.reservations = reservations;
        this.user = user;
    }

    public String toStringOrderDetails(){
        //TODO questo dovrebbe restituire informazioni testuali relative all'ordin da inviare via email +:)
        return "";
    }

    public ByteArray toPdfOrderDetails(){
        //TODO questo deve restituire il pdf con le info dell'ordine +:)
        return null;
    }

    private Image toQrReservationDetails(){
        //TODO questo dovrebbe restituire il QR di una singola reservation +:)
        return null;
    }
}
