package it.unitn.progweb.controller;

import org.sql2o.Connection;
import org.sql2o.Sql2o;
import org.sql2o.Sql2oException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "DeleteReservationServlet", urlPatterns = {"/deletereservation"})
public class DeleteReservationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer reservation = this.validateReservation(request.getParameter("reservation"));

        if(reservation!=null){

            Sql2o database = (Sql2o) getServletContext().getAttribute("database");
            String sqldelete = "delete from reservation where id=:id";
            try (Connection conn = database.open()) {
                conn.createQuery(sqldelete).addParameter("id", reservation).executeUpdate();
            } catch (Sql2oException exc) {
                throw exc;
            }
            response.setStatus(200);

            return;

        }

        response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        return;


    }

    public Integer validateReservation(String idString){

        Integer id = null;

        try{ id = Integer.parseInt(idString);}
        catch (NumberFormatException exc){
            return null;
        }
        if(id!=null) {

            Sql2o database = (Sql2o) getServletContext().getAttribute("database");
            String sqlShow = "select count(*) from (\"reservation\" r join \"show\" s on s.id=r.show_id) where r.id=:id and date_time > current_timestamp";
            Integer result;
            try (Connection conn = database.open()) {
                result = conn.createQuery(sqlShow).addParameter("id", id).executeScalar(Integer.class);
            } catch (Sql2oException exc) {
                throw exc;
            }

            if(result>0) return id;
        }

        return null;
    }
}
