package it.unitn.progweb.model;

public class Seat {

    private Integer id;
    private Integer row;
    private Integer column;
    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    //riga riferita alla sala del cinema

    public Integer getRow() {
        return row;
    }

    public void setRow(Integer row) {
        this.row = row;
    }

    //colonna riferita alla sala del cinema

    public Integer getColumn() {
        return column;
    }

    public void setColumn(Integer column) {
        this.column = column;
    }

    //stato dei posti a sedere (liberi o occupati)

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
