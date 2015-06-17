<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:basepage>
    <jsp:attribute name="extrahead">
        <title>Il mio login</title>
    </jsp:attribute>
    <jsp:body>
        <form action="/login" method="post">
            email:<input name="email" type="text"/>
            password:<input name="password" type="password"/>
            <button type="submit">login!</button>
        </form>
    </jsp:body>
</t:basepage>
