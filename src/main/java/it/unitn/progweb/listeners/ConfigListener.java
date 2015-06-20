package it.unitn.progweb.listeners;

import it.unitn.progweb.lib.Mailer;
import it.unitn.progweb.model.MovieManager;
import it.unitn.progweb.model.UserManager;
import org.sql2o.Sql2o;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.logging.Logger;

@WebListener()
public class ConfigListener implements ServletContextListener {

    private Logger logger = Logger.getLogger(getClass().getName());
    private Sql2o database;


    public void contextInitialized(ServletContextEvent sce) {
        try{
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException exc) {
            logger.severe(exc.getMessage());
        }
        String db_url = sce.getServletContext().getInitParameter("db_url");
        String db_user = "movies";
        String db_pass = "movies";
        logger.info("going to connect to " + db_url);
        database = new Sql2o(db_url, db_user, db_pass);

        sce.getServletContext().setAttribute("database", database);
        sce.getServletContext().setAttribute("user_manager", new UserManager(database));
        sce.getServletContext().setAttribute("email_manager", new Mailer());
        sce.getServletContext().setAttribute("movie_manager", new MovieManager(database));
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {


    }
}
