<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:basepage>
    <jsp:attribute name="extrahead">
        <title>Accedi</title>
    </jsp:attribute>
    <jsp:body>
        <div class="col-md-6">
<!-- visualizza gli errori che si possono verificare nel login, segnalati dalla LoginServlet -->
            <c:forEach items="${errors}" var="error">
                <div class="alert alert-danger">${error}</div>
            </c:forEach>

            <div class="page-header">
                <h1>Accedi</h1>
            </div>
            <!-- parametri di login passati tramite metodo post -->
            <form action="/login${next}" method="post">

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" class="form-control" id="email" placeholder="Email" name="email">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" name="password" placeholder="Password" id="password">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
                <a href="/resetpassword" class="btn btn-danger">Recupero password</a>
            </form>
        </div>
    </jsp:body>
</t:basepage>
