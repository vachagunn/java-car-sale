<!DOCTYPE html>
<html lang="ru">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title>CARSALE</title>
</head>

<body>
<h1>CARSALE</h1>

<form action="/" method="get">
    Поиск по названию: <input type="text" name="title"><br>
    <input type="submit" value="Поиск" />
</form>

<#list products as product>
    <div>
        <p>${product.title} ${product.price} руб. <a href="/product/${product.id}">Подробнее</a></p>
    </div>
</#list>

<h3>Добавить объявление</h3>
<form action="/product/create" method="post">
    Марка и модель автомобиля: <input type="text" name="title"><br>
    Год выпуска: <input type="number" name="year"><br>
    Текущий пробег: <input type="number" name="mileage"><br>
    Тип двигателя: <input type="text" name="engine"><br>
    Объем двигателя: <input type="number" name="capacity"><br>
    Мощность двигателя: <input type="number" name="power"><br>
    Описание: <input type="text" name="description"><br>
    Цена: <input type="number" name="price"><br>
    Город: <input type="text" name="city"><br>
    Автор объявления: <input type="text" name="author"><br>
    <input type="submit" value="Создать объявление"/>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
</body>
</html>