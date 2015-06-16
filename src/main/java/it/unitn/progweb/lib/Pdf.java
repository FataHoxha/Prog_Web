package it.unitn.progweb.lib;

/**
 * Created by fabianozenatti on 16/06/15.
 */

import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.Image;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfWriter;
import net.glxn.qrgen.QRCode;
import net.glxn.qrgen.image.ImageType;

import java.io.*;


public class Pdf {

    public String generaPDF(String qrtext){

        Document document = new Document();

        try {
            // step 2:
            // we create a writer that listens to the document
            // and directs a PDF-stream to a file
            PdfWriter.getInstance(document, new FileOutputStream("/tmp/email.pdf"));

            // step 3: we open the document
            document.open();

            // step 4:
            document.add(new Paragraph("QR"));

            ByteArrayOutputStream qrout = QRCode.from(qrtext) .to(ImageType.JPG).stream();
            Image jpg = Image.getInstance(qrout.toByteArray());
            document.add(jpg);

        }
        catch(DocumentException de) {
            System.err.println(de.getMessage());
        }
        catch(IOException ioe) {
            System.err.println(ioe.getMessage());
        }

        // step 5: we close the document
        document.close();


        return "/tmp/email.pdf";

    }

    public Pdf(){

        return;
    }
}
