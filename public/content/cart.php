<?php
    if(isset($_POST['how'])){
        $how = $_GET['how'];
    }else{
        $how = 10;
    }
    $categoryData;
    $page->getHeader();
    if(!empty($_SESSION['cartUnloggedUser'])){
        $summaryPrice = 0;
        foreach ($_SESSION['cartUnloggedUser'] as $value) {
            $summaryPrice += $page->getProductPrice($value[0]) * $value[1];
        }
    }
    
?>

<main id="cart">
    <div class="title">Koszyk</div>
    <div class="cart">
        <div class="pro">
            <?php
                if(isset($_SESSION['loggedUserData']) && !isset($_SESSION['orderCompeate'])){
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
                    }elseif(!isset($_SESSION['orderCompeate'])){
                        echo "<div>Koszyk jest pusty</div>";
                        echo "<div class='goToHome'><a  href='/'>Dodaj coś do mnie!</a></div>";
                    }
                }
                
            ?>
        </div>
        <?php
            if(isset($_SESSION['loggedUserData']) ){
                if($page->sumaryPriceCart($_SESSION['loggedUserData']['id'])){ ?>
                    <div class="bou">
                        <span>
                            Łączna kwota: <?php echo number_format($page->sumaryPriceCart($_SESSION['loggedUserData']['id']), 2);?> zł
                        </span>
                        <button class="button">
                            <a href="/f/order/">Zamów</a>
                        </button>
                    </div>
            <?php }
            }elseif(isset($summaryPrice) ){ 
                

                ?>
                    <div class="bou">
                        <span>
                            Łączna kwota: <?php echo number_format($summaryPrice, 2);?> zł
                        </span>
                        <button class="button">
                            <a href="/f/order/">Zamów</a>
                        </button>
                    </div>
            <?php } ?>
            
    </div>
    <div>
        <?php 
            if(isset($_SESSION['orderCompeate'])){
                echo "<div class='succesOrder'>" . $_SESSION['orderCompeate'] . "</div>";
                echo "<div style='text-align: center;'>Dalsza konwersacja będzie prowadzona przez maila.</div>";
                echo "<div class='goToHome' style='text-align: center;'><a  href='/'>Poszukaj nowych produktów!</a></div>";
            }
            unset($_SESSION['orderCompeate']);
            ?>
    </div>
</main>

<?php
    $page->getFooter();
?>