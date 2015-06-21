<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:basepage>
    <jsp:attribute name="extrahead">
        <title>SampleText Cinema</title>
    </jsp:attribute>

    <jsp:body>

        <div class="row">
            <div class="page-header">
                <h1>I film di oggi</h1>
            </div>
<!-- home page
    tag foreach per iterare sui 3 film presenti in hompage, servita dalla classe Movie-->
            <c:forEach items="${movieShow}" var="movie">
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img width="214" height="339" src="${movie.poster_uri}">

                        <div class="caption">
                            <h3>${movie.title}</h3>

                            <p>${movie.plot}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>
    </jsp:body>
</t:basepage>