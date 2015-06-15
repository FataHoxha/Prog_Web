package it.unitn.progweb.model;

import it.unitn.progweb.Utils;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

public class User {
    private static final int ANONYMOUS_ID = -1;


    private Integer id;
    @NotNull
    @Pattern(regexp = "[A-Za-z][A-Za-z0-9]*")
    private String username;
    private String password;

    public User() {
        this.id = ANONYMOUS_ID;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setAndHashPassword(final String password) {
        final String hash = Utils.sha512(password);
        this.password = hash;
    }

    public boolean isAuthenticated() {
        return id != ANONYMOUS_ID;
    }
}
