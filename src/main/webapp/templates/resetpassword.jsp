<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:basepage>
    <jsp:attribute name="extrahead">
        <title>Ripristino password</title>
    </jsp:attribute>

    <jsp:body>
        <div class="row">

            <c:choose>
                <%--@elvariable id="stage" type=""--%>
                <c:when test="${stage==0}">
                    <%-- show 'insert email' form --%>

                    <div class="col-md-6">
                        <div class="page-header">
                            <h1 class="center">Ripristina la tua password</h1>
                        </div>

                        <form action="/resetpassword" method="post">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" placeholder="Email" name="email">
                            </div>

                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>

                </c:when>

                <c:when test="${stage==1}">
                    <%-- confirm that mail has been sent --%>
                    <%-- note that we should ALWAYS confirm that a mail has been sent,
                         even if the user does not exist, for security reasons. --%>
                    <div class="alert alert-success" role="alert">
                        <strong>Fatto!</strong>
                        Se la mail inserita è corretta, riceverai una mail con le istruzioni per reimpostare la tua
                        password entro pochi minuti.
                    </div>

                    <a href="/login">Torna al login</a>
                </c:when>

                <c:when test="${stage==2}">
                    <%-- show reset password form --%>
                    <form action="/resetpassword" method="post">
                        <div class="form-group">
                            <label for="password">New password</label>
                            <input type="password" class="form-control" id="password" placeholder="New password"
                                   name="password">
                            <input type="hidden" name="token" value="${token}">
                        </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </c:when>

                <c:when test="${stage==3}">
                    <h1>Fatto!</h1>
                </c:when>

            </c:choose>
        </div>
    </jsp:body>
</t:basepage>
