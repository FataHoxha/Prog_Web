<%@ page import="it.unitn.progweb.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    User u = (User) session.getAttribute("user");
%>
<html>
<head>
    <title>Welcome </title>
</head>
<body>
<%@ include file="../assets/temp_views/header.html"%>
<%@ include file="../assets/temp_views/index.html"%>
<%@ include file="../assets/temp_views/footer.html"%>
</body>
</html>
