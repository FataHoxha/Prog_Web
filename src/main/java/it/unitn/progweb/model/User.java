package it.unitn.progweb.model;

import it.unitn.progweb.Utils;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class User {
    private static final int ANONYMOUS_ID = -1;


    private Integer id;
    @NotNull
    @Pattern(regexp = "[A-Za-z][A-Za-z0-9]+")
    @Size(min=2, max=100)
    private String username;

    @NotNull
    private String password;

    @NotNull
    private String email;

    public User() {
        this.id = ANONYMOUS_ID;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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
