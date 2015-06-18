<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:basepage>
    <jsp:body>
        <c:forEach items="${movies}" var="movie">
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-heading">${movie.title}</div>
                    <div class="panel-body">
                        <div class="col-sm-6 col-md-8">
                            <div class="thumbnail">
                                <img src="${movie.url}" width="100px">
                                <div class="caption">
                                    <p>Durata: ${movie.duration}</p>
                                    <h4>Trama</h4>
                                    <p>
                                        aisjdiasjdijasd
                                        asdjiasjds
                                        dasidjasd
                                        ashdiasjdasfasjiasjfa
                                        sfasfiajsfias
                                        fasifjasfasf
                                        as
                                        fjiasfjasijfiasjfjias
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                    <h4 class="list-group-item-heading">Cinema Minchia</h4>
                                    <p class="list-group-item-text">Ore 22.10</p>
                                    <p class="list-group-item-text">2D</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <h4 class="list-group-item-heading">Cinema Minchia</h4>
                                    <p class="list-group-item-text">Ore 22.10</p>
                                    <p class="list-group-item-text">2D</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <h4 class="list-group-item-heading">Cinema Minchia</h4>
                                    <p class="list-group-item-text">Ore 22.10</p>
                                    <p class="list-group-item-text">2D</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <h4 class="list-group-item-heading">Cinema Minchia</h4>
                                    <p class="list-group-item-text">Ore 22.10</p>
                                    <p class="list-group-item-text">2D</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </jsp:body>
</t:basepage>
