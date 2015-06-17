package it.unitn.progweb.model;


import com.lowagie.text.Image;
import com.sun.mail.iap.ByteArray;

import java.util.ArrayList;

public class Order {

    private ArrayList<Reservation> reservations;
    private User user;

    public Order(User user){

        this.user = user;
        return;
    }

    public ArrayList<Reservation> getReservations(){ return this.reservations; }

    //Qui aggiungi singole nuove reservation all'ordine
    public void addReservation(Reservation newReservation){

        this.reservations.add(newReservation);
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



    //


}
