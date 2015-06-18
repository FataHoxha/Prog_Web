<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:basepage>
    <jsp:attribute name="extrahead">
        <title>Profilo utente</title>
    </jsp:attribute>

  <jsp:body>

    <c:forEach items="${errors}" var="error">
      <blockquote>${error}</blockquote>
    </c:forEach>

    <h1>Le tue Prenotazioni</h1>
      <div class="col-md-8">
        <h2>Film imminenti</h2>
        <ul class="list-group">
          <li class="list-group-item">
              <div class="row">
                  <div class="col-xs-12 col-md-8">
                    <strong>Film: </strong>Fury </br>
                    <strong>Quando: </strong>data, ora </br>
                    <strong>Dove: </strong>sala1, posto x </br>
                  </div>

                  <div class="col-xs-6 col-md-4">
                      <button class=" input-field btn waves-effect waves-light" type="submit" name="action" > Annulla prenotazione
                          <i class="mdi-content-send right"></i>
                      </button>
                  </div>
              </div>

          </li>
          <li class="list-group-item">Film, data, ora, sala</li>
          <li class="list-group-item">Film, data, ora, sala</li>
          <li class="list-group-item">Film, data, ora, sala</li>
          <li class="list-group-item">Film, data, ora, sala</li>
        </ul>
      </div>
      <div class="col-md-8">
          <h2>Film visti</h2>
          <ul class="list-group">
              <li class="list-group-item">Film, data, ora, sala</li>
              <li class="list-group-item">Film, data, ora, sala</li>
              <li class="list-group-item">Film, data, ora, sala</li>
              <li class="list-group-item">Film, data, ora, sala</li>
              <li class="list-group-item">Film, data, ora, sala</li>
          </ul>
      </div>
  </jsp:body>
</t:basepage>
