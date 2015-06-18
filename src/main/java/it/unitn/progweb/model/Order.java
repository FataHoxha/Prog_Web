package it.unitn.progweb.model;


import com.lowagie.text.*;
import com.lowagie.text.pdf.PdfWriter;
import net.glxn.qrgen.QRCode;
import net.glxn.qrgen.image.ImageType;
import org.sql2o.Sql2o;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Iterator;
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
        //TODO questo dovrebbe restituire informazioni testuali relative all'ordine da inviare via email +:)
        return "";
    }

    public ByteArrayOutputStream toPdfOrderDetails(){
        //TODO questo deve restituire il pdf con le info dell'ordine +:)

        Document document = new Document();
        ByteArrayOutputStream fileBiteArray = new ByteArrayOutputStream();

        try {

            PdfWriter.getInstance(document, fileBiteArray);
            //PdfWriter.getInstance(document, new FileOutputStream("/tmp/my.pdf"));
            document.open();

            Iterator<Reservation> it = this.reservations.iterator();
            String reservationDetails;
            Font fontTitle = FontFactory.getFont("Helvetica", 20);
            Font font = FontFactory.getFont("Helvetica", 12);

            while (it.hasNext()) {

                reservationDetails = it.next().details(this.database);

                document.add(new Paragraph("Biglietto Movies", fontTitle));
                ByteArrayOutputStream qrout = QRCode.from(reservationDetails).to(ImageType.JPG).stream();
                Image jpg = Image.getInstance(qrout.toByteArray());
                document.add(jpg);

                document.add(new Paragraph(reservationDetails, font));
                document.newPage();
            }
        }
        catch(DocumentException de) {
            System.err.println(de.getMessage());
        }
        catch(IOException ioe) {
            System.err.println(ioe.getMessage());
        }

        // step 5: we close the document
        document.close();

        return fileBiteArray;
    }
}
