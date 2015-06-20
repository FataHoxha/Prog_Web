<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:basepage>
    <jsp:attribute name="extrahead">
        <title>Seleziona posto</title>

        <script text="javascript">
            var max_col = 0;
            var max_row = 0;

            var a = [
            <c:forEach items="${seats}" var="seat">
                { seatid:${seat.id}, row:${seat.row},column:${seat.column},status:${seat.status}},
            </c:forEach>
                ];

            for(var i=0;i< a.length;i++)
            {
                if(a[i].column>max_col) max_col = a[i].column;
                if(a[i].row>max_row) max_row = a[i].row;
            }

            $(document).ready(function () {
                for (var i = 0; i < a.length; i++) {
                    var pid = "p" + pad(a[i].row, 2) + pad(a[i].column, 2);
                    var pclass = (a[i].status == 1) ? "available" : (a[i].status == 0) ? "disabled" : "unavailable";
                    pclass += " cell";
                    $('#board').append('<div data-seatid="'+a[i].seatid+'" id="' + pid + '"class="' + pclass + '" onclick="process(\'' + pid + '\');"></div>');
                }

                $('head').append('<style>#theatre-screen{width:'+29 * max_col + 'px;margin-bottom: 25px;border:2px dotted slategray;text-align:center;}' +
                        '.board{width:' + 29 * max_col + 'px;height:' + 32 * max_row + 'px;display:inline-block;margin:auto;}</style>');
            });

            function deleteReservation(id) {
                $('#d' + id).remove();
                $('#p' + id).removeClass('checked');
                $('#p' + id).addClass('available');
            }

            function process(pid) {

                if ($('#' + pid).hasClass('available')) {
                    $('#' + pid).removeClass('available');
                    $('#' + pid).addClass('checked');

                    var did = pid.substr(1, 4);
                    var value;
                    $('#done').append('<div id="d' + did + '" data-seatid="'+$('#'+pid).data('seatid')+'" data-cat="' + $('#category_selector').val() + '">Fila ' +
                            pid.substr(1, 2) + ', Posto ' + pid.substr(3, 4) + ' ~ ' + $('#category_selector option:selected').text() + ' <span onclick ="deleteReservation(\'' + did + '\');" style="cursor:pointer;"' +
                            ' class="glyphicon glyphicon-remove" aria-hidden="true"></span></div>');
                }
            }

            function pad(num, size) {
                var s = "000000000" + num;
                return s.substr(s.length - size);
            }

            function submit() {
                $('#dimmer').show();
                $('#pay').show();
            }

            function sendJson() {
                $('#dimmer').hide();
                $('#pay').hide();
                var res = [];
                $('#done > div').each(function () {
                    var val = {};
                    val["seat_id"] = parseInt($('#' + this.id).data('seatid'));
                    val["type"] = parseInt($('#' + this.id).data('cat'));
                    res.push(val);
                    });
                jsonString = JSON.stringify(res);
                $.ajax({
                    type: "POST",
                    data: jsonString,
                    dataType: 'json',
                    contentType: 'application/json',
                    success: function()
                    {
                        document.location.href = '/';
                    }
                });
            }
        </script>
        <style>

            .cell {
                float: left;
                border-radius: 3px;
                height: 25px;
                width: 25px;
                margin:2px;
                padding-bottom: 25px;
                border: 1px dashed slategray;
                border-sizing: border-box;
                cursor: pointer;
            }

            .available:hover {
                border: 1px solid midnightblue;
            }

            .disabled {
                background-color: white;
                border:none;
                cursor: auto;
            }

            .available {
                background-color: whitesmoke;
            }

            .unavailable {
                cursor: auto;
                background-color: lightslategray;
            }

            .checked
            {
                background-color: crimson;
                border:1px solid transparent;
                cursor:auto;
            }

            #dimmer {
                position: fixed;
                display: none;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.8);
                z-index: 1500;
            }

            #pay {
                position: fixed;
                display: none;
                top: 35%;
                left: 35%;
                width: 300px;
                height: 200px;
                background-color: white;
                z-index: 1501;
            }
        </style>

    </jsp:attribute>
    <jsp:body>

        <div id="dimmer"></div>
        <div id="pay">
            <div class="container">
                <form>
                    <div class="form-group">
                        <label>Inserisci il numero della carta di credito:</label>
                        <div>
                        <input type="text">
                        </div>
                    </div>
                    </form>
                    <button class="btn btn-default" type="submit" onclick="sendJson();">Paga</button>
            </div>
        </div>

        <h1>Seleziona il posto</h1>

        <div class="container">
            <div class="row">
                <div class="well">
                    <form>
                        <label>Seleziona la tua categoria:</label>
                        <select id="category_selector" class="form-control">

                            <c:forEach items="${prices}" var="price">
                                <option value="${price.id}">${price.kind}</option>
                            </c:forEach>
                        </select>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-8">
                    <div id="theatre-screen">Schermo</div>
                    <div id="board" class="board">
                    </div>
                </div>
                <div id="done" class="col-sm-4">
                    <br>
                    <button class="btn btn-default" type="submit" onclick="submit();">Paga</button>
                </div>
            </div>
        </div>
    </jsp:body>
</t:basepage>