<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:basepage>
    <jsp:attribute name="extrahead">
        <title>Il mio login</title>
    </jsp:attribute>
    <jsp:body>
        <div class="col-md-6">
        <div class="page-header">
            <h1>Accedi</h1>
        </div>

        <form action="/login" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" placeholder="Username" name="username">
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" name="password" placeholder="Password" id="password">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </jsp:body>
</t:basepage>
