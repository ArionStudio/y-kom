<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/../dist/src/css/style.css">
    <link rel="shortcut icon" href="/../dist/files/page/small-logo.ico" type="image/x-icon">
    <title>y-kom.pl - Sklep komputerowy</title>
</head>
<body id="adminPanel">
    <header class="clear">
        <section>
            <div class="logo">
                <a href="/admin/"><img src="/dist/files/page/big-logo.png" height="70" width="70" alt=""></a>
            </div>
            <?php if(isset($_SESSION['LoggedSlaveData'])){ ?>
                <div>Zalogowany: <?php echo $_SESSION['LoggedSlaveData']['name'];?></div>
            <?php } ?>
        </section>
    </header>
    <div>