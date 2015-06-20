<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<t:basepage>
    <jsp:body>
        <c:forEach items="${movies}" var="movie">
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-heading">${movie.title}</div>
                    <div class="panel-body">
                        <div class="col-sm-6 col-md-8">
                            <div class="col-sm-3 col-md-4">
                                <img src="${movie.poster_uri}" width="100px">
                            </div>
                            <div class="col-sm-3 col-md-4">
                                <p>Genere: ${movie.genre}</p>
                                <h4>Trama:</h4>
                                <p>${movie.plot}</p>
                                <a href="${movie.trailer_url}">Guarda il trailer »</a>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="list-group">
                                <c:forEach items="${movie.shows}" var="show">
                                    <fmt:formatDate var="date" value="${show.date_time}" pattern="H:m d/M/y"/>
                                    <a href="/prenota?show_id=${show.id}" class="list-group-item">
                                        <h4 class="list-group-item-heading">Sala ${show.theater}</h4>
                                        <p class="list-group-item-text">${date}</p>
                                        <p class="list-group-item-text">Durata: ${movie.duration} minuti</p>
                                    </a>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </jsp:body>
</t:basepage>
