package it.unitn.progweb.listeners;

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
            Class.forName("org.sqlite.JDBC");
        } catch (ClassNotFoundException exc) {
            logger.severe(exc.getMessage());
        }
        String dbpath = sce.getServletContext().getInitParameter("dbpath");
        logger.info("path is " + dbpath);
        database = new Sql2o("jdbc:sqlite:" + dbpath, null, null);
        sce.getServletContext().setAttribute("database", database);
        sce.getServletContext().setAttribute("user_manager", new UserManager(database));
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
