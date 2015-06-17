<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:basepage>
    <jsp:attribute name="extrahead">
        <title>Registrazione</title>
    </jsp:attribute>

    <jsp:body>

        <c:forEach items="${errors}" var="error">
            <blockquote>${error}</blockquote>
        </c:forEach>

        <h1 class="center">Registrati</h1>

        <form action="/registration" class="center col s12" method="post">
            <div class="input-field col s4">
                <input name="username" id="username" type="text" class="validate">
                <label for="username">Username</label>
            </div>

            <div class="input-field col s4">
                <input name="mail" id="email" type="email" class="validate">
                <label for="email">Email</label>
            </div>

            <div class="input-field col s4">
                <input name="password" id="password" type="password" class="validate">
                <label for="password">Password</label>
            </div>

            <div class="input-field col s4">
                <input name="passwordcheck" id="passwordcheck" type="password" class="validate">
                <label for="passwordcheck">Check Password</label>
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
