// mi servono per sapere quando grande fare il div della sala
var max_col = 0;
var max_row = 0;

for (var i = 0; i < a.length; i++) {
    if (a[i].column > max_col) max_col = a[i].column;
    if (a[i].row > max_row) max_row = a[i].row;
}

$(document).ready(function () {

    //aggiunge un div rappresentante il posto in sala dentro il div della sala
    for (var i = 0; i < a.length; i++) {
        var pid = "p" + pad(a[i].row, 2) + pad(a[i].column, 2);
        var pclass = (a[i].status == 1) ? "available" : (a[i].status == 0) ? "disabled" : "unavailable";
        pclass += " cell";
        $('#board').append('<div data-seatid="' + a[i].seatid + '" id="' + pid + '"class="' + pclass + '" onclick="process(\'' + pid + '\');"></div>');
    }

    $('head').append('<style>#theatre-screen{min-width:80px;width:' + 29 * max_col + 'px;margin-bottom: 25px;border:2px dotted slategray;text-align:center;}' +
        '.board{width:' + 29 * max_col + 'px;height:' + 32 * max_row + 'px;display:inline-block;margin:auto;}</style>');
});

//elimina dalla lista delle prenotazioni una prenotazione
function deleteReservation(id) {
    $('#d' + id).remove();
    $('#p' + id).removeClass('checked');
    $('#p' + id).addClass('available');
}


//aggiunge alla lista delle prenotazioni una prenotaziona
function process(pid) {

    if ($('#' + pid).hasClass('available')) {
        $('#' + pid).removeClass('available');
        $('#' + pid).addClass('checked');

        var did = pid.substr(1, 4);
        var value;
        $('#done').append('<div id="d' + did + '" data-seatid="' + $('#' + pid).data('seatid') + '" data-cat="' + $('#category_selector').val() + '">Fila ' +
            pid.substr(1, 2) + ', Posto ' + pid.substr(3, 4) + ' ~ ' + $('#category_selector option:selected').text() + ' <span onclick ="deleteReservation(\'' + did + '\');" style="cursor:pointer;"' +
            ' class="glyphicon glyphicon-remove" aria-hidden="true"></span></div>');
    }
}

//funzione extra che serve ad aggiungere un padding di uno zero ai numeri rappresentanti riga e colonna
function pad(num, size) {
    var s = "000000000" + num;
    return s.substr(s.length - size);
}

//mostra il form di pagamento
function submit() {
    $('#dimmer').show();
    $('#pay').show();
}

//invia la richiesta di prenotazione al server e attende la risposta
function sendJson() {
    $('#dimmer').hide();
    $('#pay').hide();
    $('#dimmer').show();
    $('#waiting').show();

    var res = [];
    $('#done > div').each(function () {
        var val = {};
        val["seat_id"] = parseInt($('#' + this.id).data('seatid'));
        val["price_id"] = parseInt($('#' + this.id).data('cat'));
        res.push(val);
    });
    jsonString = JSON.stringify(res);
    $.ajax({
        type: "POST",
        data: jsonString,
        dataType: 'json',
        contentType: 'application/json',
        success: function (data) {
            if (data.success == true) {
                //document.location.href = '/';
                $('#dimmer').hide();
                $('#waiting').hide();
                $('#dimmer').show();
                $('#confirmation').show();
            }
            else
                alert(data.message);
        },
        error: function () {
            $('#dimmer').hide();
            $('#waiting').hide();
            $('#dimmer').show();
            $('#errorres').show();
        },
    });
}