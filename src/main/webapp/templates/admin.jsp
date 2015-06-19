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
                        <a href="#" onclick="show(3);">Prenotazioni</a>
                    </li>
                    <li>
                        <a href="#" onclick="show(4);">Best film</a>
                    </li>
                </ul>
            </div>
            <!-- /#sidebar-wrapper -->

            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div id="page0">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>Pannello Amministrazione</h1>
                        </div>
                    </div>
                </div>
                </div>

                <div id="page1">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <h1>Riepilogo</h1>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="page2">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <h1>Clienti top</h1>
                                <canvas id="clientiChart" width="500" height="500"></canvas>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="page3">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <h1>Prenotazioni</h1>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="page4">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <h1>Best film</h1>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /#page-content-wrapper -->

        </div>
        <script>

            var datas = {
                labels: ["Fabiano", "Io", "Bampi", "Gaspa", "Dalla", "Fhathbhardha"],
                datasets: [
                    {
                        label: "Acquisti",
                        fillColor: "rgba(220,220,220,0.5)",
                        strokeColor: "rgba(220,220,220,0.8)",
                        highlightFill: "rgba(220,220,220,0.75)",
                        highlightStroke: "rgba(220,220,220,1)",
                        data: [3, 5, 8, 4, 9, 5]
                    }
                ]
            };


                var ctx = $("#clientiChart").get(0).getContext("2d");
                var myNewChart = new Chart(ctx).Bar(datas);



function show(id)
{
    for(var i=0;i<5;i++)
    {
        $('#page'+i).hide();
    }
    $('#page'+id).fadeIn();
}
        </script>
    </jsp:body>
</t:basepage>