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
<a href="/login">Login</a>

<a href="/registration">Registration</a>

<p><%= u.getUsername() %></p>
</body>
</html>
