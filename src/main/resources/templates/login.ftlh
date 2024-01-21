<!DOCTYPE html>
<html lang="ru">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title>Авторизация</title>
</head>

<body>
<h1>CARSALE</h1><hr>
<h3>Авторизация</h3>
<form action="/login-user" method="post">
    Имя пользователя: <input type="text" name="username"><br>
    Пароль: <input type="password" name="password"><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <input type="submit" value="Вход" />
</form>

<a href="/registration-user">Зарегистрироваться</a>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
</body>
</html>