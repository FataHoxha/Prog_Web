<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@tag import="it.unitn.progweb.model.User" %>
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
    <link rel="stylesheet" href="/assets/css/footer.css">

    <!-- scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <script>
        // TODO: collassare navbar
    </script>

    <jsp:invoke fragment="extrahead"/>
</head>

<body>
    <!-- header -->
    <%@ include file="/assets/fragments/header.html"%>

    <!-- body -->
    <div class="container">
        <jsp:doBody/>
    </div>

    <!-- footer -->
    <%@ include file="/assets/fragments/footer.html"%>

</body>

</html>
