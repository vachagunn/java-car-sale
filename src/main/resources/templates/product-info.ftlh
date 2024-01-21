<!DOCTYPE html>
<html lang="ru">
<head>
    <title>CARSALE</title>
</head>

<body>
<h1>CARSALE</h1>
<h3>Подробная информация</h3>
<p>Марка и модель автомобиля: <b>${product.title}</b></p>
<p>Текущий пробег: <b>${product.mileage}</b></p>
<p>Тип двигателя: <b>${product.engine}</b></p>
<p>Объем двигателя: <b>${product.capacity}</b></p>
<p>Мощность двигателя: <b>${product.power}</b></p>
<p>Описание: <b>${product.description}</b></p>
<p>Цена: <b>${product.price}</b></p>
<p>Город: <b>${product.city}</b></p>
<p>Владелец: <b>${product.author}</b></p>

<h3>Добавить объявление</h3>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить объявление" />
</form>
</body>
</html>