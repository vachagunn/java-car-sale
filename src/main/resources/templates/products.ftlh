<!DOCTYPE html>
<html lang="ru">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title>CARSALE</title>
</head>

<body">
<div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
        <div class="col-md-3 mb-2 mb-md-0">
            <h1><a href="/" class="d-inline-flex link-body-emphasis text-decoration-none">CARSALE</a></h1>
        </div>

        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="#" class="nav-link px-2 link-secondary">Автомобили</a></li>
            <li><a href="/announcement/" class="nav-link px-2">Разместить объявление</a></li>
        </ul>

        <div class="col-md-3 text-end">
            <a href="/login-user" class="btn btn-outline-primary me-2">Войти</a>
<#--            <button type="button" class="btn btn-primary">Sign-up</button>-->
        </div>
    </header>
</div>

<#--<form action="/logout" method="post">-->
<#--    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--    <input type="submit" value="Выйти">-->
<#--</form>-->


<main>
    <div style="display: flex; justify-content: center; padding: 0 20px; width: 100%;">
        <form action="/" method="get">
            <div class="input-group mb-3" style="width: 500px;">
                <input type="text" name="title" class="form-control" placeholder="Поиск автомобилей по названию" aria-label="Recipient's username" aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary" type="submit" id="button-addon2">Поиск</button>
            </div>
        </form>
    </div>

    <div class="album py-5 bg-light">
        <div class="container">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                <#list products as product>
                    <div style="display: flex;">
                        <div class="card" style="width: 18rem;">
<#--                            <img src="..." class="card-img-top" alt="...">-->
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
</body>
</html>