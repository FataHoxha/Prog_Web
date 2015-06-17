<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:basepage>
    <jsp:attribute name="extrahead">
        <title>Registrazione</title>
    </jsp:attribute>

    <jsp:body>

        <c:forEach items="${errors}" var="error">
            <blockquote>${error}</blockquote>
        </c:forEach>

        <h1>Registrati</h1>

        <form action="/registration" class="horizontal" method="post">
            <div class="form-group">
                <input name="username" id="username" type="text">
                <label class="col-sm-2 control-label" for="username">Username</label>
            </div>

            <div class="form-group">
                <input name="email" id="email" type="email">
                <label class="col-sm-2 control-label" for="email">Email</label>
            </div>

            <div class="form-group">
                <input name="password" id="password" type="password">
                <label class="col-sm-2 control-label" for="password">Password</label>
            </div>

            <div class="form-group">
                <input name="passwordcheck" id="passwordcheck" type="password" >
                <label class="col-sm-2 control-label" for="passwordcheck">Check Password</label>
            </div>

            <div class="row">
                <div class="col s3">
                    <button class=" input-field btn waves-effect waves-light" type="submit" name="action">Registrati
                        <i class="mdi-content-send right"></i>
                    </button>
                </div>
            </div>
        </form>

    </jsp:body>
</t:basepage>
