package it.unitn.progweb.model;

import it.unitn.progweb.Utils;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import javax.validation.constraints.NotNull;

public class UserManager {

    private Sql2o database;

    private final String userQuery = "select ID_user,username,email,password from user where email=:email";
    private final User anonymousUser = new User();

    public UserManager(Sql2o manager) {
        this.database = manager;
    }

    public @NotNull User authenticateUser(final @NotNull String email, final @NotNull String password) {
        User u;
        try(Connection conn = database.open()) {
            u = conn.createQuery(userQuery)
                    .addParameter("email", email)
                    .addColumnMapping("ID_user", "id")
                    .executeAndFetchFirst(User.class);
        }
        if(u == null){
            return anonymousUser;
        }

        final String hash = Utils.sha512(password);
        if(u.getPassword().equalsIgnoreCase(hash)) {
            return u;
        }

        return anonymousUser;
    }
}
