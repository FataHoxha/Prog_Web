<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:basepage>
    <jsp:attribute name="extrahead">
        <title>Il mio login</title>
    </jsp:attribute>
    <jsp:body>
        <div class="col-md-6">

        <c:forEach items="${errors}" var="error">
            <div class="alert alert-danger">${error}</div>
        </c:forEach>

        <div class="page-header">
            <h1>Accedi</h1>
        </div>



        <form action="/login${next}" method="post">

            <div class="form-group">
                <label for="username">Email</label>
                <input type="text" class="form-control" id="username" placeholder="Email" name="email">
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" name="password" placeholder="Password" id="password">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </jsp:body>
</t:basepage>
