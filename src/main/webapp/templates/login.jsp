<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Il mio login</title>
</head>
<body>
    <form action="/login" method="post">
        email:<input name="email" type="text"/>
        password:<input name="password" type="password"/>
        <button type="submit">login!</button>
    </form>
</body>
</html>
