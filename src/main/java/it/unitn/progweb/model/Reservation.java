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

    private Integer id;
    private Integer user_id;
    private Integer show_id;
    private Integer price_id;
    private Integer seat_id;
    private Date created; // TIMESTAMP

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

    public String details(Sql2o database){
        ArrayList<String> frags = new ArrayList<>();
        List<Map<String,Object>> reports;
        String sql = "select * from reservation_complete where id=:id";

        try (Connection con = database.open()) {
            reports = con.createQuery(sql).addParameter("id", id).executeAndFetchTable().asList();
        }
        for(Map<String, Object> report: reports) {
            for(String field: order) {
                String readable = mapping.get(field);
                assert report.containsKey(field): "the row from database should contain " + field + " but it doesnt";
                Object value = report.get(field);
                frags.add(readable + ": " + (value == null? "": value.toString()));
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
}