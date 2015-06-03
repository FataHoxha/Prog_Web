package it.unitn.progweb.model;

import it.unitn.progweb.Utils;

public class User {
    private static final int ANONYMOUS_ID = -1;

    private Integer id;
    private String name;
    private String password;

    public User() {
        this.id = ANONYMOUS_ID;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
