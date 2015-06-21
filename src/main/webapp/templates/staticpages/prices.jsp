<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:basepage>
    <jsp:attribute name="extrahead">
        <title>Prezzi</title>
    </jsp:attribute>

    <!-- visualizza tabella dei prezzi in modo statico-->
    <jsp:body>
        <div class="page-header">
            <h1 class="center">Listino Prezzi</h1>
        </div>

        <table class="table table-hover">
            <thead>
            <tr>
                <th></th>
                <th> Normale</th>
                <th> Ridotto</th>
                <th> Militari</th>
                <th> Disabili</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th> NORMALI</th>
                <td> 8,00 &euro; </td>
                <td> 5,00 &euro; </td>
                <td> 4,00 &euro; </td>
                <td> 3,00 &euro; </td>
            </tr>

            <tr>
                <th> 3D</th>
                <td> 10,00 &euro; </td>
                <td> 7,00 &euro; </td>
                <td> 6,00 &euro; </td>
                <td> 5,00 &euro; </td>
            </tr>
            </tbody>
        </table>
    </jsp:body>
</t:basepage>
