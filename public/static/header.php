<?php 
    $categories = $_POST['categories'];
    unset($_POST['categories']);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/dist/src/css/style.css">
    <title>y-kom.pl - Sklep komputerowy</title>
</head>
<body>
    <header>
        <section>
            <div class="logo">
                <a href="/"><img src="/dist/files/page/logo.png" height="70" width="70" alt=""></a>
            </div>
            <div class="toolbar">
                <menu type="toolbar">
                    <div>
                        <a href="/f/logowanie/">
                            <img style="width:32px;height:32px;" src="/dist/files/page/konto.svg" alt="" srcset="">
                            <span>twoje konto</span>
                        </a>
                    </div>
                    <div>
                        <a href="/f/listy/">
                            <img style="width:32px;height:32px;" src="/dist/files/page/lista.svg" alt="" srcset="">
                            <span>twoje listy</span>
                        </a>
                    </div>
                    <div>
                        <a href="/f/koszyk/">
                            <img style="width:32px;height:32px;" src="/dist/files/page/koszyk.svg" alt="" srcset="">
                            <span>koszyk</span>
                        </a>
                    </div>
                </menu>
            </div>
        </section>
        <section>
            <menu type="context">
                <?php
                    foreach ($categories as $key => $value) { ?>
                        <div><a href="/c/<?php echo $value[0]; ?>/"><?php echo $value[1]; ?></a></div>


                <?php
                    }
                ?>
            </menu>
        </section>
    </header>