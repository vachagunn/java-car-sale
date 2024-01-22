<!DOCTYPE html>
<html lang="ru">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title>CARSALE</title>
</head>

<body>
<div class="container">
    <h3 style="margin-top: 20px;">Подробная информация</h3>
    <#list images as img>
        <img src="/images/${img.id}" height="60px"/><br>
    </#list>
    <ul class="list-group">
        <li class="list-group-item">Марка и модель автомобиля: <b>${product.title}</b></li>
        <li class="list-group-item">Текущий пробег: <b>${product.mileage} км</b></li>
        <li class="list-group-item">Тип двигателя: <b>${product.engine}</b></li>
        <li class="list-group-item">Объем двигателя: <b>${product.capacity}</b></li>
        <li class="list-group-item">Мощность двигателя: <b>${product.power} л.с.</b></li>
        <li class="list-group-item">Описание: <b>${product.description}</b></li>
        <li class="list-group-item">Цена: <b>${product.price} руб.</b></li>
        <li class="list-group-item">Город: <b>${product.city}</b></li>
        <li class="list-group-item">Владелец: <b>${product.author}</b></li>
    </ul>

    <form action="/product/delete/${product.id}" method="post" style="margin-top: 20px;">
        <input type="submit" class="btn btn-danger" value="Удалить объявление" />
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
</body>
</html>