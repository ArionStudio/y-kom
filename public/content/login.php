<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/dist/src/css/style.css">
    <title>Logowanie</title>
</head>
<body>
    <header>
            <section>
                <div>
                    <a href="/"><img src="/dist/files/product/example/example.png" height="40" width="40" alt=""></a>
                </div>
            </section>
        </header>

        <?php
            $array = ["",""];
            if(isset($_SESSION[''])){
                $array = $_SESSION[''];
                unset($_SESSION['']);
            }
        ?>
        <form action="login.html" method='POST'>
            <div class="title">Zaloguj się</div>
            <div>
                <fieldset>
                    <legend> E-mail </legend>
                    <input placeholder="E-mail" type="text" name="email" value="<?php echo $array[0]; ?>" />
                </fieldset>
                
            </div>
            <div>
            <fieldset>
                <legend> Hasło </legend>
                <input placeholder="Hasło" type="password" name="password" value="<?php echo $array[1]; ?>" />
            </fieldset>
            </div>
            <div class="button" type="submit">Zaloguj się</div>
        </form>
        <div>
            <form action="">
            <a href="/f/rejestracja/">Zarejestruj się</a>
            </form>
        </div>
</body>