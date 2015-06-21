<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:basepage>
    <jsp:attribute name="extrahead">
        <title>Dove siamo</title>

        <!-- Leaflet stuff -->
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.3/leaflet.css"/>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.3/leaflet.js"></script>

        <style type="text/css">
            #map {
                width: 100%;
                height: 300px;
                padding-left: 0;
                padding-right: 0;
            }
        </style>

        <script type="application/javascript">
            $(document).ready(function () {
                // create a map in the "map" div, set the view to a given place and zoom
                var map = L.map('map').setView([46.067019, 11.150361], 17);

                // add an OpenStreetMap tile layer
                L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
                    attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
                }).addTo(map);

                // add a marker in the given location, attach some popup content to it and open the popup
                L.marker([46.067019, 11.150361]).addTo(map)
                        .bindPopup('SampleText cinema. <br> We\'re fabolous.')
                        .openPopup();
            });
        </script>
    </jsp:attribute>

    <jsp:body>
        <div class="row">
            <div class="col-md-12">

                <div class="page-header">
                    <h1>Dove puoi trovarci</h1>
                </div>

                <div class="jumbotron" id="map">
                </div>
                <div class="col-xs-12 col-sm-4">
                    <address>
                        <h2>Inidirizzo</h2><br>

                        <p>Via Sommarive n 5</p>

                        <p>Trento, TN 94107</p>
                    </address>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <address>
                        <h2>Email</h2><br>
                        <a href="mailto:first.last@cinema.com">first.last@cinema.com</a>
                    </address>
                </div>
                <!-- Optional: clear the XS cols if their content doesn't match in height -->
                <div class="col-xs-12 col-sm-4">
                    <address>
                        <h2>Telefono</h2><br>

                        <p>0464 654312</p>
                    </address>

                </div>
            </div>
        </div>
    </jsp:body>
</t:basepage>
