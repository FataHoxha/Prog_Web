package it.unitn.progweb.model;

import it.unitn.progweb.Utils;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import javax.validation.constraints.NotNull;
import java.util.UUID;

public class UserManager {

    private final String userQuery = "select * from \"user\" where email=:email";
    private final String resetTokenValid = "select count(*) from \"user\" where password_reset_token=:token and current_timestamp < token_expiration";
    private final String setResetToken = "update \"user\" set password_reset_token=:token, token_expiration=current_timestamp + interval '1 day' where email=:email";
    private final String getUserByToken = "select uid,username,email,password from \"user\" where password_reset_token=:token and current_timestamp - token_expiration < interval '1 day'";
    private final String updatePassword = "update \"user\" set password=:password, token_expiration=null, password_reset_token=null where uid=:id";
    private final User anonymousUser = new User();
    private Sql2o database;

    public UserManager(Sql2o database) {
        this.database = database;
    }

//autenticazione dell'utente
    public
    @NotNull
    User authenticateUser(final @NotNull String email, final @NotNull String password) {
        User u;
        try (Connection conn = database.open()) {
            u = conn.createQuery(userQuery)
                    .addParameter("email", email)
                    .addColumnMapping("uid", "id")
                    .throwOnMappingFailure(false)
                    .executeAndFetchFirst(User.class);
        }
        if (u == null) {
            return anonymousUser;
        }

        final String hash = Utils.sha512(password);
        if (u.getPassword().equalsIgnoreCase(hash)) {
            return u;
        }

        return anonymousUser;
    }

    //controllo che la password sia valida
    public
    @NotNull
    Boolean isValidResetPasswordToken(final @NotNull String token) {
        int count;
        try (Connection conn = database.open()) {
            count = conn.createQuery(resetTokenValid)
                    .addParameter("token", token)
                    .executeScalar(Integer.class);
            if (count > 0)
                return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }


    //recupero della password via mail
    public
    @NotNull
    String generateResetPasswordToken(final @NotNull String email) {
        String token = Utils.sha512(UUID.randomUUID().toString());

        try (Connection conn = database.open()) {
            conn.createQuery(setResetToken)
                    .addParameter("email", email)
                    .addParameter("token", token)
                    .executeUpdate();
        }
        return token;
    }

    //reset della password tramite link
    public void resetPassword(String token, String password) {
        User u;
        try (Connection conn = database.open()) {
            u = conn.createQuery(getUserByToken)
                    .addParameter("token", token)
                    .addColumnMapping("uid", "id")
                    .executeAndFetchFirst(User.class);
        }
        if (u != null) {
            u.setAndHashPassword(password);
            String hashed_password = u.getPassword();

//aggiorna la nuova password inserita dall'utente
            try (Connection conn = database.open()) {
                conn.createQuery(updatePassword)
                        .addParameter("id", u.getId())
                        .addParameter("password", hashed_password)
                        .addColumnMapping("uid", "id")
                        .executeUpdate();
            }
        }
    }
}
