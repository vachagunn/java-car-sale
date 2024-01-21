<!DOCTYPE html>
<html lang="ru">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title>CARSALE</title>
</head>

<body>
<h1>CARSALE | <a href="/login-user">Войти</a></h1><hr>

<#--<form action="/logout" method="post">-->
<#--    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--    <input type="submit" value="Выйти">-->
<#--</form>-->


<main>
    <div style="padding: 0 20px; width: 600px">
        <form action="/" method="get">
            <div class="input-group mb-3">
                <input type="text" name="title" class="form-control" placeholder="Поиск автомобилей по названию" aria-label="Recipient's username" aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary" type="submit" id="button-addon2">Поиск</button>
            </div>
        </form>
    </div>

    <div class="album py-5 bg-light">
        <div class="container">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                <#list products as product>
                    <div style="display: flex; gap: 5px">
                        <div class="card" style="width: 18rem;">
                            <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">${product.title} (${product.year} год)</h5>
                                <p class="card-text">${product.price} руб.</p>
                                <p class="card-text">${product.city}</p>
                                <a href="/product/${product.id}" class="btn btn-primary">Подробнее</a>
                            </div>
                        </div>
                    </div>
                <#else>
                    <h3>Объявлений нет</h3>
                </#list>
            </div>
        </div>
    </div>
</main>

<#--    <div>-->
<#--        <p>${product.title} ${product.price} руб. <a href="/product/${product.id}">Подробнее</a></p>-->
<#--    </div>-->
<#--    <#else>-->
<#--    <h3>Объявлений нет</h3>-->
<#--</#list>-->

<h3>Добавить объявление</h3>
<form action="/product/create" method="post">
    Марка и модель автомобиля: <input type="text" name="title"><br>
    Год выпуска: <input type="number" name="year"><br>
    Текущий пробег: <input type="number" name="mileage"><br>
    Тип двигателя: <input type="text" name="engine"><br>
    Объем двигателя: <input type="text" name="capacity"><br>
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