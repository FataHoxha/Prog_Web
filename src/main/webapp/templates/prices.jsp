<%@ page import="it.unitn.progweb.model.User" %>
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <meta charset="utf8">
  <script src="../js/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/css/materialize.min.css">
  <link rel="stylesheet" href="../css/skel.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/js/materialize.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
  <script>
    $(document).ready()
    {
      $(".button-collapse").sideNav({
      });
    }
  </script>
</head>

<title>Prezzi</title>

<body>
<%@ include file="../assets/temp_views/header.html" %>
<%@ include file="../assets/temp_views/prices.html" %>
<%@ include file="../assets/temp_views/footer.html" %>
</body>
</html>
