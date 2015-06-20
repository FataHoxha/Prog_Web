<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--    HEADER  -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">MyMovies</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="/programmazione">Programmazione</a></li>
                <li><a href="/prices">Prezzi</a></li>
                <li><a href="/dovesiamo">Dove siamo</a></li>
                <c:if test="${sessionScope.user.getIs_admin()}">
                    <li><a href="/adminarea">Area di amministrazione</a></li>
                </c:if>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <c:if test="${sessionScope.user.isAuthenticated()}">
                    <li><p class="navbar-text">Credito: <strong> <fmt:formatNumber value="${sessionScope.user.getCredit()}" maxFractionDigits="2" type="currency"/></strong></p></li>
                    <li><p class="navbar-text">Autenticato come <strong>${sessionScope.user.getUsername()}</strong> (<a href="/logout">disconnetti</a>)</p></li>
                </c:if>
                <c:if test="${!sessionScope.user.isAuthenticated()}">
                    <li><a href="/registration">Registrati</a></li>
                    <li><a href="/login">Accedi</a></li>
                </c:if>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
