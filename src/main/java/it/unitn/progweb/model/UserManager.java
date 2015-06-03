package it.unitn.progweb.model;

import it.unitn.progweb.Utils;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

public class UserManager {

    private Sql2o database;

    private final String userQuery = "select * from users where name=:name";
    private final User anonymousUser = new User();

    public UserManager(Sql2o manager) {
        this.database = manager;
    }

    public User authenticateUser(final String name, final String password) {
        User u;
        try(Connection conn = database.open()) {
            u = conn.createQuery(userQuery)
                    .addParameter("name", name)
                    .executeAndFetchFirst(User.class);
        }
        if(u == null){
            return anonymousUser;
        }

        final String hash = Utils.sha512(password);
        if(u.getPassword().equals(hash)) {
            return u;
        }

        return anonymousUser;
    }
}
