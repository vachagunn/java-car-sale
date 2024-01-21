<!DOCTYPE html>
<html lang="ru">
    <head>
        <title>CARSALE</title>
    </head>

    <body>
        <h1>CARSALE</h1>
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
            <input type="submit" value="Создать объявление" />
        </form>
    </body>
</html>