<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:basepage>
    <jsp:attribute name="extrahead">
        <title>Registrazione</title>
    </jsp:attribute>

    <jsp:body>
        <div class="col-md-6">
            <c:forEach items="${errors}" var="error">
                <div class="alert alert-danger">${error}</div>
            </c:forEach>

            <h1>Registrati</h1>

            <form action="/registration" method="post">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" placeholder="Username" name="username">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" placeholder="Email" name="email">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" placeholder="Password" name="password">
                </div>
                <div class="form-group">
                    <label for="passwordcheck">Confirm password</label>
                    <input type="password" class="form-control" id="passwordcheck" placeholder="Confirm password" name="passwordcheck">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div>
    </jsp:body>
</t:basepage>
