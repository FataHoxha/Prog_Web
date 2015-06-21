package it.unitn.progweb.model;

import com.google.common.base.Joiner;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class Reservation {

    private static final List<String> order = ImmutableList.of(
            "username", "email", "title", "date_time", "kind", "amount", "description", "row", "column"
    );
    private static final Map<String, String> mapping = new ImmutableMap.Builder<String, String>()
            .put("username", "Nome utente")
            .put("email", "Email")
            .put("title", "Film")
            .put("date_time", "Data e ora")
            .put("kind", "Tipo biglietto")
            .put("amount", "Prezzo")
            .put("description", "Sala")
            .put("row", "Fila")
            .put("column", "Posto")
            .build();
    private Integer id;
    private Integer user_id;
    private Integer show_id;
    private Integer price_id;
    private Integer seat_id;
    private Date created; // TIMESTAMP

    public String details(Sql2o database) {
        ArrayList<String> frags = new ArrayList<>();
        List<Map<String, Object>> reports;
        String sql = "select * from reservation_complete where id=:id";

        try (Connection con = database.open()) {
            reports = con.createQuery(sql).addParameter("id", id).executeAndFetchTable().asList();
        }
        for (Map<String, Object> report : reports) {
            for (String field : order) {
                String readable = mapping.get(field);
                assert report.containsKey(field) : "the row from database should contain " + field + " but it doesnt";
                Object value = report.get(field);
                frags.add(readable + ": " + (value == null ? "" : value.toString()));
            }
        }

        return Joiner.on("\n").join(frags);
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getShow_id() {
        return show_id;
    }

    public void setShow_id(Integer show_id) {
        this.show_id = show_id;
    }

    public Integer getPrice_id() {
        return price_id;
    }

    public void setPrice_id(Integer price_id) {
        this.price_id = price_id;
    }

    public Integer getSeat_id() {
        return seat_id;
    }

    public void setSeat_id(Integer seat_id) {
        this.seat_id = seat_id;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }
}