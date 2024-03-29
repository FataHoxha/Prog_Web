<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="extrahead" fragment="true" %>

<!DOCTYPE html>
<html>

<head>
    <!-- meta -->
    <meta charset="utf8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <!-- stylesheets -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/bootstrap-simplex-min.css">

    <link rel="stylesheet" href="/assets/css/base.css">
    <link rel="stylesheet" href="/assets/css/footer.css">

    <!-- scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <jsp:invoke fragment="extrahead"/>
</head>

<body>
<!-- header -->
<%@ include file="/templates/fragments/navbar.jsp" %>

<div class="container" id="body">
    <!-- body -->
    <jsp:doBody/>

</div>

<!-- footer -->
<%@ include file="/templates/fragments/footer.html" %>

</body>

</html>
