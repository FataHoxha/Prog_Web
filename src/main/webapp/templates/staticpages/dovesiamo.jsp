<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:basepage>
    <jsp:attribute name="extrahead">
        <title>Dove siamo</title>

        <!-- Leaflet stuff -->
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.3/leaflet.css" />
        <script src="http://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.3/leaflet.js"></script>

        <style type="text/css">
            #map {
                height: 180px;
            }
        </style>

        <script type="application/javascript">
            $(document).ready(function() {
                var map = L.map('map').setView([51.505, -0.09], 13);
            });
        </script>
    </jsp:attribute>

    <jsp:body>

        <div class="row">
            <div class="col-xs-6 col-sm-4">
                <address>
                    <strong>Inidirizzo</strong><br>
                    Via Venezia n 456<br>
                    Trento, TN 94107<br>

                </address>

            </div>
            <div class="col-xs-6 col-sm-4">
                <address>
                    <strong>Email</strong><br>
                    <a href="mailto:#">first.last@cinema.com</a>
                </address>
            </div>
            <!-- Optional: clear the XS cols if their content doesn't match in height -->
            <div class="col-xs-6 col-sm-4">
                <address>
                    <strong>Telefono</strong><br> 0464 654312
                </address>

            </div>
        </div>


        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div id="map"></div>
            </div>
        </div>
    </jsp:body>
</t:basepage>
