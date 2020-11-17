<?php 
    $categories = $GLOBALS['var']['header']['categories'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/dist/src/css/style.css">
    <title>y-kom</title>
</head>
<body>
    <header>
        <section>
            <div>
                <a href="/">Logo</a>
            </div>
            <div>
                <menu type="toolbar">
                    <div>
                        <a href="/">twoje konto</a>
                    </div>
                    <div>
                        <a href="/">twoje konto</a>
                    </div>
                    <div>
                        <a href="/">koszyk</a>
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