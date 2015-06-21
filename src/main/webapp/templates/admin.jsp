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
                    <h1>Benvenuto, ${sessionScope.u

                    1>

                     p>Da quest  pagin  puoi v rificare alcun  as etti amm

                    p>

                    <p>e ca cella e le prenonti</p
                 </d v>
        1">


                    1>

                    <p>Riepi ogo di ogn  p oiezi ne, con n mero di po

                    p>


                                                <table class="table ta










                            <c:forEach items="${sho

                                                        <t
                                                        <
                                     <td>${sho
                                                        <td





                    le>

                 </div
                 </d v>
        2">


                    1>

                                            <p> Num ro  igliett  acqu stati  a  clienti  elle

                    p>


                                                < anvas id="c ientiChart"  idth="700" height="500" class=
                    as>

                 </div
                 </d v>
        3">


                    1>

                                            < > Inc ssi pe   gni film nell

                    p>


                                                < anvas id="i cassiChart"  idth="700" height="500" class=
                    as>

                    iv>

                                                <c nvas id="in assiChart2"  idth="300" height="300" class=
                    as>

                 </div
                 </d v>

                    4"
                    <c class="pan l-group" id="a cordion" role="tablist" aria




                        <c:forEach items="${userreservations}

                                                <div clas
                                                    <d v class="p nel-heading" role="tab" id="heading

                                                            <a role="button  data-toggle="collapse"
                                                               href="#collaps
                                                               aria-expanded="true" ar




                                                    <div id="collaps ${userreservation.key}" class=" anel-collapse c
                                                         ari


                                    <c:forEach items="${userreservation.value


                                                            <div id="resid${userreserv
                                                                    onclick="requestDelete(${userre

                                                                    class="gly hicon glyphicon-remove" ar
                                                                $ userreservatio.title}
                                              posto {use reservatio.column} fi









                Each>


                 </d v>
        5">
                     h1> P

                    h1>
                    < >Selez ona una  al  per  eder  l'elenc  di post  piu' po

                    /p>

                                                <ul id="select_theatre" class="list-group">
                            <c:forEach items="${
                                                    <button type="button"
                                    class="list-group-item" onclick="showTheatre(${theater.id}); >${theate


                    ul>

                 </div
                 <

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

        ]
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

        var html_code_select_theatre = $('#page5inside').html();


        var datap = [];
        for (var i = 0; i < datai.labels.length; i++) {
        var obj = {};
        obj.value = datai.datasets[0].data[i];
        obj.color = "#" + ((1 << 24) * Math.random() | 0).toString(16);
        obj.highlight = obj.color;
        obj.label = datai.labels[i];
        datap.push(obj);
        }

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

        function showTheatre(id)
        {
        $('#select_theatre').remove();
        $.ajax({
        type: "POST",
        url: '',
        data: {"id":id.toString()},
        contentType: "text/html",
        success: function(data){
        var to_append = '<div id="select_theatre"><div id="row"><table class="table table-hover center-block"><thead><tr><th>Fila</th><th>Posto</th><th>Numero prenotazioni</th></tr></thead><tbody>';
        for(var i=0;i<data.length;i++)
        {
        to_append += '<tr><td>'+data[i].row+'</td><td>'+data[i].column+'</td><td>'+data[i].count+'</td></tr>';
        }
        to_append += '</tbody></table><button type="button" class="list-group-item" onclick="selectTheatre();">Torna indietro</button></div></div>';
        $('#page5inside').html(to_append);
        }
        });
        }

        function requestDelete(id) {
        $('#resid' + id).remove();
        $.post("/deletereservation", {delete: id});
        }

        function selectTheatre()
        {
        $('#page5inside').html(html_code_select_theatre);
        }
        </script>
    </jsp:body>
</t:basepage>