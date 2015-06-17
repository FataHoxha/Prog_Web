package it.unitn.progweb.lib;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.util.Properties;

public class Mailer {

    final String username = "movieswebprog2015@gmail.com";
    final String password = "birdwatching";
    final String sender = "movieswebprog2015@gmail.com";
    Properties props;
    Session mailsession;


    public Mailer() {


        this.props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        this.mailsession = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });


    }


    public void sendMail(String recipient, String subject, String messageText){


    }

    public void sendMailAttachment(String recipient, String subject, String messageText, String filename){


        try {

            Message message = new MimeMessage(this.mailsession);
            message.setFrom(new InternetAddress(this.sender));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(recipient));
            message.setSubject(subject);
            message.setText(messageText);


            //Create the multipart message
            Multipart multipart = new MimeMultipart();
            //Create the textual part of the message
            BodyPart messageBodyPart1 = new MimeBodyPart();
            messageBodyPart1.setText("Invio allegato");
            //Create the Word part of the message
            DataSource source =  new FileDataSource(filename);
            BodyPart messageBodyPart2 = new MimeBodyPart();
            messageBodyPart2.setDataHandler( new DataHandler(source) );
            messageBodyPart2.setFileName( filename );
            //Add the parts to the Multipart message
            multipart.addBodyPart( messageBodyPart1 );
            multipart.addBodyPart( messageBodyPart2 );
            message.setContent(multipart);

            Transport.send(message);

        } catch (MessagingException e) {
            throw new RuntimeException(e);

        }

        return;


    }
}
