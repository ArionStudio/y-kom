<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dodawanie produktu</title>
    <style>
        form {
            padding: 32px;
            width: 500px;
        }
        
        div {
            padding: 16px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
    </style>
</head>

<body>
    <form action="produktAdd.php" method="post">
        <div>Nazwa produktu: <input type="text" name="name"></div>
        <div>Cena:<input type="number" name="price" min="0" max="99999"></div>
        <div>Specyfikacja: <input type="text" name="specification"></div>
        <div>Kategoria: <?php echo $sCF ?></div>
        <div>Ilość: <input type="text" name="quantity" min="0" max="1000"></div>
        <div><button type="submit">Dodaj produkt</button></div>
    </form>
</body>

</html>