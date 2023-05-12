<!DOCTYPE html>
<html>
<head>
    <title>BUYONG</title>
</head>
<body>
<h1>Login</h1>
<form action="/login" method="post">
    Email: <input type="email" name="username"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Log in"/>
</form>
<a href="/registration">Sign up</a>
</body>
</html>