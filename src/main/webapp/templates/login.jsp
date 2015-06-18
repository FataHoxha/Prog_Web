<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:basepage>
    <jsp:attribute name="extrahead">
        <title>Il mio login</title>
    </jsp:attribute>
    <jsp:body>
        <h1>Fai il login:  </h1>
        <form action="/login" class="horizontal" method="post">

            <div class=form-group" class="center">
                <input name="username" id="username" type="text">
                <label class="col-sm-2 control-label" for="username">Username</label>
            </div>

            <div class="form-group">
                    <input name="password" id="password" type="password">
                    <label class="col-sm-2 control-label" for="password">Password</label>
            </div>


            <button class=" input-field btn waves-effect waves-light" type="submit" name="action"> Login
                <i class="mdi-content-send right"></i>
            </button>
        </form>
    </jsp:body>
</t:basepage>
