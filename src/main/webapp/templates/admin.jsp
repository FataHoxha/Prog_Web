<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:basepage>
    <jsp:attribute name="extrahead">
        <link rel="stylesheet" href="../assets/css/admin.css">
        <script src="../assets/js/chart.js"></script>
        <title>Amministrazione</title>
    </jsp:attribute>

    <jsp:body>
        <div id="wrapper">

            <!-- Sidebar -->
            <div id="sidebar-wrapper">
                <ul class="sidebar-nav">
                    <li class="sidebar-brand">
                        <a href="#">
                            Pannello amministratore
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="show(1);">Riepilogo</a>
                    </li>
                    <li>
                        <a href="#" onclick="show(2);">Clienti top</a>
                    </li>
                    <li>
                        <a href="#" onclick="show(3);">Incassi</a>
                    </li>
                    <li>
                        <a href="#" onclick="show(4);">Prenotazioni</a>
                    </li>
                    <li>
                        <a href="#" onclick="show(5);">Posti pi&ugrave; frequenti</a>
                    </li>
                </ul>
            </div>

            <div id="page-content-wrapper">
                <div id="page0">
                    <h1>Benvenuto, nomeutente!</h1>

                    <p>Da questa pagina puoi verificare alcuni aspetti amministrativi del sito</p>

                    <p>e cancellare le prenotazioni degli utenti</p>
                </div>


                <div id="page1">
                    <h1>Riepilogo</h1>

                    <p>Riepilogo di ogni film, con numero di posti venduto e prezzo</p>

                    <div id="row">
                        <table class="table table-hover center-block">
                            <thead>
                            <tr>
                                <th>Film</th>
                                <th>Ora</th>
                                <th>Posti venduti</th>
                                <th>Incasso totale</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>King Kong</td>
                                <td>00:00</td>
                                <td>346</td>
                                <td>3245</td>
                            </tr>
                            <tr>
                                <td>Cars</td>
                                <td>00:00</td>
                                <td>565</td>
                                <td>5567</td>
                            </tr>
                            <tr>
                                <td>Jurassic World</td>
                                <td>00:00</td>
                                <td>876</td>
                                <td>8235</td>
                            </tr>
                            <tr>
                                <td>American Sniper</td>
                                <td>00:00</td>
                                <td>345</td>
                                <td>4789</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>


                <div id="page2">
                    <h1>Clienti Top</h1>

                    <p> Numero biglietti acquistati dai clienti nelle ultime n settimane </p>

                    <div class="row">
                        <canvas id="clientiChart" width="700" height="500" class="center-block"></canvas>
                    </div>
                </div>


                <div id="page3">
                    <h1>Incassi</h1>

                    <p> Incassi per ogni film nelle ultime n settimane</p>

                    <div class="row">
                        <canvas id="incassiChart" width="700" height="500" class="center-block"></canvas>
                    </div>
                    <div class="row">
                        <canvas id="incassiChart2" width="300" height="300" class="center-block"></canvas>
                    </div>
                </div>

                <div id="page4">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading1">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse1"
                                       aria-expanded="true" aria-controls="collapse1">
                                        Utente 1
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse1" class="panel-collapse collapse" role="tabpanel"
                                 aria-labelledby="heading1">
                                <div class="panel-body">

                                    <div id="resid1"><span onclick="requestDelete(1);" style="cursor:pointer;"
                                                           class="glyphicon glyphicon-remove" aria-hidden="true"></span>King
                                        kong,
                                        posto 5 fila 5
                                    </div>
                                    <div id="resid2"><span onclick="requestDelete(2);" style="cursor:pointer;"
                                                           class="glyphicon glyphicon-remove" aria-hidden="true"></span>King
                                        kong,
                                        posto 5 fila 5
                                    </div>
                                    <div id="resid3"><span onclick="requestDelete(3);" style="cursor:pointer;"
                                                           class="glyphicon glyphicon-remove" aria-hidden="true"></span>King
                                        kong,
                                        posto 5 fila 5
                                    </div>

                                </div>
                            </div>
                        </div>


                        <!-- PER OGNI UTENTE -->

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading2">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse2"
                                       aria-expanded="true" aria-controls="collapse2">
                                        Utente 2
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse2" class="panel-collapse collapse" role="tabpanel"
                                 aria-labelledby="heading2">
                                <div class="panel-body">

                                    <div id="resid4"><span onclick="requestDelete(4);" style="cursor:pointer;"
                                                           class="glyphicon glyphicon-remove" aria-hidden="true"></span>King
                                        kong,
                                        posto 5 fila 5
                                    </div>
                                    <div id="resid5"><span onclick="requestDelete(5);" style="cursor:pointer;"
                                                           class="glyphicon glyphicon-remove" aria-hidden="true"></span>King
                                        kong,
                                        posto 5 fila 5
                                    </div>
                                    <div id="resid6"><span onclick="requestDelete(6);" style="cursor:pointer;"
                                                           class="glyphicon glyphicon-remove" aria-hidden="true"></span>King
                                        kong,
                                        posto 5 fila 5
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading3">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion"
                                       href="#collapse3"
                                       aria-expanded="true" aria-controls="collapse3">
                                        Utente 3
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse3" class="panel-collapse collapse" role="tabpanel"
                                 aria-labelledby="heading3">
                                <div class="panel-body">

                                    <div id="resid7"><span onclick="requestDelete(7);" style="cursor:pointer;"
                                                           class="glyphicon glyphicon-remove" aria-hidden="true"></span>King
                                        kong,
                                        posto 5 fila 5
                                    </div>
                                    <div id="resid8"><span onclick="requestDelete(8);" style="cursor:pointer;"
                                                           class="glyphicon glyphicon-remove" aria-hidden="true"></span>King
                                        kong,
                                        posto 5 fila 5
                                    </div>
                                    <div id="resid9"><span onclick="requestDelete(9);" style="cursor:pointer;"
                                                           class="glyphicon glyphicon-remove" aria-hidden="true"></span>King
                                        kong,
                                        posto 5 fila 5
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>


        <script>
            var current_page = 0;
            var datac = {
                labels: ["Fabiano", "Io", "Bampi", "Gaspa", "Dalla", "Fhathbhardha"], //inserire utenti top 10
                datasets: [
                    {
                        label: "Acquisti",
                        fillColor: "rgba(220,220,220,0.5)",
                        strokeColor: "rgba(220,220,220,0.8)",
                        highlightFill: "rgba(220,220,220,0.75)",
                        highlightStroke: "rgba(220,220,220,1)",
                        data: [3, 5, 8, 4, 9, 5] //inser
                    }
                ]
            };

            var datai = {
                labels: ["King Kong", "Cars", "Jurassic World", "American Sniper"],
                datasets: [
                    {
                        label: "Vendite",
                        fillColor: "rgba(220,220,220,0.5)",
                        strokeColor: "rgba(220,220,220,0.8)",
                        highlightFill: "rgba(220,220,220,0.75)",
                        highlightStroke: "rgba(220,220,220,1)",
                        data: [3245, 5567, 8235, 4789]
                    }
                ]
            };

            var datap = [
                {
                    value: 3245,
                    color: "#F7464A",
                    highlight: "#FF5A5E",
                    label: "King Kong"
                },
                {
                    value: 5567,
                    color: "#46BFBD",
                    highlight: "#5AD3D1",
                    label: "Cars"
                },
                {
                    value: 8235,
                    color: "#FDB45C",
                    highlight: "#FFC870",
                    label: "Jurassic World"
                },
                {
                    value: 4789,
                    color: "#F7364A",
                    highlight: "#FF3A5E",
                    label: "American Sniper"
                }
            ];

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

            function requestDelete(id)
            {
                $('#resid'+id).remove();
                $.post( "/deletereservation", {delete: id});
            }
        </script>
    </jsp:body>
</t:basepage>