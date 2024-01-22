<!DOCTYPE html>
<html lang="ru">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title>CARSALE</title>
</head>

<body>
<div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
        <div class="col-md-3 mb-2 mb-md-0">
            <h1><a href="/" class="d-inline-flex link-body-emphasis text-decoration-none">CARSALE</a></h1>
        </div>

        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="/" class="nav-link px-2">Автомобили</a></li>
            <li><a href="#" class="nav-link px-2 link-secondary">Разместить объявление</a></li>
        </ul>

        <div class="col-md-3 text-end">
            <a href="/login-user" class="btn btn-outline-primary me-2">Войти</a>
        </div>
    </header>
</div>

<main>
    <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="font-weight-light" style="margin-bottom: 20px;">Размещение объявления</h1>
        <form action="/product/create" method="post" enctype="multipart/form-data">
            <div style="display: flex; gap: 10px; flex-direction: column">
                <div class="row">
                    <div class="col">
                        <input type="text" name="title" class="form-control"
                               placeholder="Марка и модель">
                    </div>
                    <div class="col">
                        <input type="number" name="year" class="form-control" placeholder="Год выпуска">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <input type="number" name="mileage" class="form-control" placeholder="Текущий пробег">
                    </div>
                    <div class="col">
                        <input type="text" name="engine" class="form-control" placeholder="Тип двигателя">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <input type="text" name="capacity" class="form-control" placeholder="Объем двигателя">
                    </div>
                    <div class="col">
                        <input type="number" name="power" class="form-control" placeholder="Мощность двигателя">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <input type="text" name="description" class="form-control" placeholder="Описание">
                    </div>
                    <div class="col">
                        <input type="number" name="price" class="form-control" placeholder="Цена">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <input type="text" name="city" class="form-control" placeholder="Город">
                    </div>
                    <div class="col">
                        <input type="text" name="author" class="form-control" placeholder="Собственник">
                    </div>
                </div>
<#--                <div style="text-align: start">-->
<#--                    <div class="col">-->
<#--                        Первая фотография: <input type="file" name="file1" class="form-control">-->
<#--                    </div>-->
<#--                    <div class="col">-->
<#--                        Вторая фотография: <input type="file" name="file2" class="form-control">-->
<#--                    </div>-->
<#--                    <div class="col">-->
<#--                        Третья фотография: <input type="file" name="file3" class="form-control">-->
<#--                    </div>-->
<#--                </div>-->
                <input type="submit" class="form-control btn btn-primary" value="Создать объявление"/>
            </div>
        </form>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
</body>
</html>