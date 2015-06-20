<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

                    <p>Riepilogo di ogni proiezione, con numero di posti venduto e prezzo</p>

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

                            <c:forEach items="${showstats}" var="showstat">
                                <tr>
                                    <td>${showstat.title}</td>
                                    <td>${showstat.data}</td>
                                    <td>${showstat.postivenduti}</td>
                                    <td>${showstat.amount}</td>
                                </tr>
                            </c:forEach>

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
                    <c class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">



                        <!-- PER OGNI UTENTE -->

                        <c:forEach items="${userreservations}" var="userreservation">

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading${userreservation.key}">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse${userreservation.key}"
                                       aria-expanded="true" aria-controls="collapse2">
                                       ${userreservation.key}
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse${userreservation.key}" class="panel-collapse collapse" role="tabpanel"
                                 aria-labelledby="heading2">
                                <div class="panel-body">

                                <c:forEach items="${userreservation.value}" var="userreservatio">


                                    <div id="resid${userreservatio.reservation}"><span onclick="requestDelete(${userreservatio.reservation});" style="cursor:pointer;"
                                                           class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                                        ${userreservatio.title} - ${userreservatio.data} - posto ${userreservatio.column} fila ${userreservatio.row}
                                    </div>

                                </c:forEach>

                                </div>
                            </div>
                        </div>

                        </c:forEach>


                    </div>
                </div>

            </div>

        </div>


        <script>
            var current_page = 0;
            var datac = {
                labels: [

                <c:forEach items="${topusers}" var="user">
                        "${user.username}",
                </c:forEach>
                ],

                datasets: [
                    {
                        label: "Acquisti",
                        fillColor: "rgba(220,220,220,0.5)",
                        strokeColor: "rgba(220,220,220,0.8)",
                        highlightFill: "rgba(220,220,220,0.75)",
                        highlightStroke: "rgba(220,220,220,1)",
                        data: [

                            <c:forEach items="${topusers}" var="user">
                            ${user.numeroreservation},
                            </c:forEach>

                            ] //inser
                    }
                ]
            };

            var datai = {
                labels: [
                    <c:forEach items="${topmovie}" var="movie">
                    "${movie.title}",
                    </c:forEach>
                ],

                datasets: [
                    {
                        label: "Vendite",
                        fillColor: "rgba(220,220,220,0.5)",
                        strokeColor: "rgba(220,220,220,0.8)",
                        highlightFill: "rgba(220,220,220,0.75)",
                        highlightStroke: "rgba(220,220,220,1)",
                        data: [
                            <c:forEach items="${topmovie}" var="movie">
                            ${movie.incasso},
                            </c:forEach>
                        ]
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