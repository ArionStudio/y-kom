<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/dist/src/css/style.css">
    <title>Rejestracja</title>
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
            $array = ["", "", "", "", "", "", "", ""];
            if(isset($_SESSION['registerData'])){
                $array = $_SESSION['registerData'];
                unset($_SESSION['registerData']);
            }
            
        ?>

    <form method="post">
        <div class='title'>Rejestracja</div>
        <div>
                <fieldset>
                    <legend> Imię </legend>
                    <input placeholder="Imię" type="text" name="name" value="<?php echo $array[0]; ?>" />
                </fieldset>
                
            </div>
        <div>
                <fieldset>
                    <legend> Nazwisko </legend>
                    <input placeholder="Nazwisko" type="text" name="surname" value="<?php echo $array[1]; ?>" />
                </fieldset>
                
            </div>
        <div>
                <fieldset>
                    <legend> Poczta </legend>
                    <input placeholder="Poczta" type="text" name="postcity" value="<?php echo $array[2]; ?>" />
                </fieldset>
                
            </div>
        <div>
                <fieldset>
                    <legend> Kod pocztowy </legend>
                    <input placeholder="Kod" type="text" name="postcode" value="<?php echo $array[3]; ?>" />
                </fieldset>
                
            </div>
        <div>
                <fieldset>
                    <legend> Adres </legend>
                    <input placeholder="Adres" type="text" name="address" value="<?php echo $array[4]; ?>" />
                </fieldset>
                
            </div>
        <div>
                <fieldset>
                    <legend> Telefon </legend>
                    <input placeholder="Telefon" type="text" name="phonenumber" value="<?php echo $array[5]; ?>" />
                </fieldset>
                
            </div>
        <div>
                <fieldset>
                    <legend> E-mail </legend>
                    <input placeholder="E-mail" type="text" name="email" value="<?php echo $array[6]; ?>" />
                </fieldset>
                
            </div>
        <div>
                <fieldset>
                    <legend> Hasło </legend>
                    <input placeholder="Hasło" type="password" name="password" value="<?php echo $array[7]; ?>" />
                </fieldset>
                
            </div>
        <div class="button" type="submit">Zarejestruj się</div>
    </form>
</body>