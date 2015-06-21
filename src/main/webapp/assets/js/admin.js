//tiene traccia della scheda attualmente selezionata
var current_page = 0;

//codice di selezione della sala per cui vedere i posti piu' popolari
var html_code_select_theatre = $('#page5inside').html();


//mostra la scheda contrassegnata da id. Nel caso abbia grafici li genera
function show(id) {
    $('#page' + current_page).hide();
    current_page = id;
    $('#page' + current_page).fadeIn();
    switch (id) {
        case(2):
            var ctx = $("#clientiChart").get(0).getContext("2d");
            var myNewChart = new Chart(ctx).Bar(datac);
            break;
        case(3):
            var ctx = $("#incassiChart").get(0).getContext("2d");
            var myNewChart = new Chart(ctx).Bar(datai);
            ctx = $("#incassiChart2").get(0).getContext("2d");
            myNewChart = new Chart(ctx).Doughnut(datap);
            break;
        default:
            break;
    }
}

//mostra i posti piu' popolari di una determinata sala
function showTheatre(id) {
    $('#select_theatre').remove();
    $.ajax({
        type: "POST",
        url: '',
        data: {"id": id.toString()},
        contentType: "text/html",
        success: function (data) {
            var to_append = '<div id="select_theatre"><div id="row"><table class="table table-hover center-block"><thead><tr><th>Fila</th><th>Posto</th><th>Numero prenotazioni</th></tr></thead><tbody>';
            for (var i = 0; i < data.length; i++) {
                to_append += '<tr><td>' + data[i].row + '</td><td>' + data[i].column + '</td><td>' + data[i].count + '</td></tr>';
            }
            to_append += '</tbody></table><button type="button" class="list-group-item" onclick="selectTheatre();">Torna indietro</button></div></div>';
            $('#page5inside').html(to_append);
        }
    });
}

//richiede di cancellare una prenotazione
function requestDelete(id) {
    $('#resid' + id).remove();
    $.post("/deletereservation", {delete: id});
}

//torna indietro dai posti piu' popolari di una sala alla selezione di quale sala visualizzare
function selectTheatre() {
    $('#page5inside').html(html_code_select_theatre);
}
