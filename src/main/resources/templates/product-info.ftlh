<!DOCTYPE html>
<html lang="ru">
<head>
    <title>CARSALE</title>
</head>

<body>
<h1>CARSALE</h1>
<h3>Подробная информация</h3>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br>
</#list>
<p>Марка и модель автомобиля: <b>${product.title}</b></p>
<p>Текущий пробег: <b>${product.mileage} км</b></p>
<p>Тип двигателя: <b>${product.engine}</b></p>
<p>Объем двигателя: <b>${product.capacity}</b></p>
<p>Мощность двигателя: <b>${product.power} л.с.</b></p>
<p>Описание: <b>${product.description}</b></p>
<p>Цена: <b>${product.price} руб.</b></p>
<p>Город: <b>${product.city}</b></p>
<p>Владелец: <b>${product.author}</b></p>

<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить объявление" />
</form>
</body>
</html>