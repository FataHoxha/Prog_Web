<%--
  Created by IntelliJ IDEA.
  User: fabianozenatti
  Date: 15/06/15
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reg</title>
</head>
<body>
    <form action="/registration" method="post">
        Email: <input name="email" type="text"/>
        Name: <input name="username" type="text"/>
        Password: <input name="password" type="password"/>
        <button type="submit">Reg!</button>
    </form>
</body>
</html>
