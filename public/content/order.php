<?php
    $categoryData;
    $page->getHeader();
    
    $summaryPrice = 0;
    if(!empty($_SESSION['cartUnloggedUser'])){
        foreach ($_SESSION['cartUnloggedUser'] as $value) {
            $summaryPrice += $page->getProductPrice($value[0]) * $value[1];
        }
    }if(isset($_SESSION['loggedUserData']['id'])){
        if(!$summaryPrice = $page->sumaryPriceCart($_SESSION['loggedUserData']['id'])){
            $summaryPrice = 0;
        }
    }

    $array = ["", "", "", "", "", "", "", ""];
    
    if(isset($_SESSION['loggedUserData']['id'])){
        if(isset($_SESSION['orderData'])){
            $array = $_SESSION['orderData'];
            unset($_SESSION['orderData']);
        }else{
            $array = $page->uC->getUserData();
        }
    }
    // echo "<pre>";
    // var_export($_SESSION['cartUnloggedUser']);
    // echo "</pre>";
?>
<main id="order">

    <form method="post" action="/s/orderAdd/">
        
        
        <section>
            <div class="title">Dane do wysyłki</div>
            <div>
                <fieldset>
                    <legend> Imię </legend>
                    <input 
                        placeholder="Imię" 
                       ype="text" 
                        name="name" 
                        value="<?php echo $array[0]; ?>"
                        pattern="[A-Ż]{1}[a-ż]{2,20}"
                        title="Imie musi zawierać od 3 do 20 liter"
                        />
                </fieldset>
                
            </div>
            <div>
                <fieldset>
                    <legend> Nazwisko </legend>
                    <input 
                    placeholder="Nazwisko" 
                    type="text" 
                    name="surname" 
                    value="<?php echo $array[1]; ?>" 
                    pattern="[A-Ż]{1}[a-ż]{2,29}"
                    title="Nazwisko musi zawierać od 3 do 40 liter"
                    />
                </fieldset>
                
            </div>
            <div>
                <fieldset>
                    <legend> Poczta </legend>
                    <input 
                    placeholder="Poczta" 
                    type="text" name="postCity" 
                    value="<?php echo $array[2]; ?>"
                    pattern="[A-Ż]{1}[a-ż]{2,39}"
                    title="Nazwa miejscowości poczty powinna mieć od 3 do 40 znaków"
                    />
                 
            </div>
            <div>
                <fieldset>
                    <legend> Kod pocztowy </legend>
                    <input 
                    placeholder="Kod" 
                    type="text" 
                    name="postCode" 
                    value="<?php echo $array[3]; ?>"
                    pattern="[0-9]{2}-[0-9]{3}"
                    title='Kod pocztowy powinien zawierać liczby w układzie "xx-xxx"'
                    />
                </fieldset>
                
            </div>
            <div>
                <fieldset>
                    <legend> Adres </legend>
                    <input 
                    placeholder="Adres" 
                    type="text" 
                    name="address" 
                    value="<?php echo $array[4]; ?>" 
                    pattern="[A-Ża-ż0-9 ]{2,100}"
                    title="Adres powinien zawierać od 2 do 100 znaków"
                    />
                </fieldset>
                
            </div>
            <div>
                <fieldset>
                    <legend> Telefon </legend>
                    <input 
                    placeholder="Telefon" 
                    type="text" name="phone" 
                    value="<?php echo $array[5]; ?>" 
                    pattern="[0-9]{9}"
                    title="To nie jest numer telefonu"
                    />
                </fieldset>
                
            </div>
            <div>
                <fieldset>
                    <legend> E-mail </legend>
                    <input 
                    placeholder="E-mail" 
                    type="text" name="email" 
                    value="<?php echo $array[6]; ?>"
                    pattern="[A-Za-z0-9.-_]{3,30}@[a-z0-9]{1,20}.[a-z]{1,4}"
                    title="example@gmail.com"
                    />
                </fieldset>
                
            </div>
        </section>
        <section>
            <div class="title">Zamówione produkty</div>
            <div class="cart">
                <div class="pro">
                    <?php
                        if(isset($_SESSION['loggedUserData'])){
                            if(!$page->sumaryPriceCart($_SESSION['loggedUserData']['id'])){
                                echo "<div>Koszyk jest pusty</div>";
                                echo "<div class='goToHome'><a  href='/'>Dodaj coś do mnie!</a></div>";
                            }else{
                                $page->showProductCart($_SESSION['loggedUserData']['id']);
                            }
                            
                        }else{
                            if(!empty($_SESSION['cartUnloggedUser'])){
                                foreach ($_SESSION['cartUnloggedUser'] as $key => $value) {
                                    $page->showProductCartUnLogged($value[0], $value[1]);
                                }
                            }else{
                                echo "<div>Koszyk jest pusty</div>";
                                echo "<div class='goToHome'><a  href='/'>Dodaj coś do mnie!</a></div>";
                            }
                        }
                        
                    ?>
                </div>
            </div>
            <div class="summaryPrice">
            <span>Łączna kwota: </span><span><?php echo number_format($summaryPrice, 2);?>zł</span>
            </div>
            <div class="pro_button">
                <button class="button" type="submit"><span>Zamów</span></button>
            </div>
        </section>
    </form>
</main>