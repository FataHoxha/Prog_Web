package it.unitn.progweb.lib;

/**
 * Created by fabianozenatti on 16/06/15.
 */
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
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

        try {

            Message message = new MimeMessage(this.mailsession);
            message.setFrom(new InternetAddress(this.sender));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(recipient));
            message.setSubject(subject);
            message.setText(messageText);

            Transport.send(message);

        } catch (MessagingException e) {
            throw new RuntimeException(e);

        }

        return;
    }

}
