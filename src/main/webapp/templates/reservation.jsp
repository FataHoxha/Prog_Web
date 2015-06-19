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
                {row:${seat.row},column:${seat.column},status:"${seat.status}"},
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
                    var pclass = (a[i].status == "true") ? "available" : (a[i].status == "false") ? "disabled" : "unavailable";
                    pclass += " cell";
                    $('#board').append('<div id="' + pid + '"class="' + pclass + '" onclick="process(\'' + pid + '\');"></div>');
                }

                $('head').append('<style>.board{width:' + 29 * max_col + 'px;height:' + 32 * max_row + 'px;display:inline-block;margin:auto;}</style>');
            });

            function deleteReservation(id) {
                $('#d' + id).remove();
                $('#p' + id).removeClass('unavailable');
                $('#p' + id).addClass('available');
            }

            function process(pid) {

                if ($('#' + pid).hasClass('available')) {
                    $('#' + pid).removeClass('available');
                    $('#' + pid).addClass('unavailable');

                    var did = pid.substr(1, 4);
                    var value;
                    $('#done').append('<div id="d' + did + '" data-cat="' + $('#category_selector').val() + '">Fila ' +
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
                    res.push({
                        row: parseInt(this.id.substr(1, 2)),
                        column: parseInt(this.id.substr(3, 4)),
                        type: parseInt($('#' + this.id).data('cat'))
                    });
                });
                console.log(res);
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
                border: 1px dashed black;
                border-sizing: border-box;
                cursor: pointer;
            }

            .available:hover {
                border: 1px dashed white;
            }

            .disabled {
                background-color: slategrey;
                cursor: auto;
            }

            .available {
                background-color: mediumseagreen;
            }

            .unavailable {
                background-color: crimson;
                cursor: auto;
            }

            #dimmer {
                position: fixed;
                display: none;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.5);
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
                <div class="row">
                    <p>Inserisci il numero della carta di credito:</p>
                </div>
                <div class="row">
                    <form>
                        <input type="text">
                    </form>
                </div>
            </div>
        </div>

        <h1>Seleziona il posto</h1>

        <div class="container">
            <div class="row">
                <div class="well">
                    <form>
                        <label>Seleziona la tua categoria (no bugie pls):</label>
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
                    <div id="board" class="board">
                    </div>
                </div>
                <div id="done" class="col-sm-4">
                    <br>
                    <button class="btn btn-default" type="submit" onclick="sendJson();">Paga</button>
                </div>
            </div>
        </div>
    </jsp:body>
</t:basepage>