<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@tag import="it.unitn.progweb.model.User" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="extrahead" fragment="true" %>

<%
    User u = (User) session.getAttribute("user");
%>

<html>

<head>
    <!-- meta -->
    <meta charset="utf8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <!-- stylesheets -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/css/materialize.min.css">
    <link rel="stylesheet" href="../css/skel.css">

    <!-- scripts -->
    <script src="../js/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/js/materialize.min.js"></script>

    <script>
        $(document).ready(function() {
            $(".button-collapse").sideNav();
        })
    </script>

    <jsp:invoke fragment="extrahead"/>
</head>

<body>
    <!-- header -->
    <%@ include file="/assets/fragments/header.html"%>

    <!-- body -->
    <div id="body">
        <main>
            <div class="container">
                <jsp:doBody/>
            </div>
        </main>
    </div>

    <!-- footer -->
    <%@ include file="/assets/fragments/footer.html"%>

</body>

</html>
