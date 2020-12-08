<?php
    if(!empty($_SESSION['accountActivated'])){
        ?>
            <script>
                alert("<?php echo $_SESSION['accountActivated']; ?>");
            </script>
        <?php
        unset($_SESSION['accountActivated']);
    }
    $page->getHeader();
    if(!empty($_POST['howMuchProductsShow'])){
        $how = $_POST['howMuchProductsShow'];
        
    }else{
        $how = FALSE;
    }
    function select($how){
    ?>
        <form action="/" method="post" >
            <input type="hidden" name="szukaj" value="<?php echo $_POST['szukaj'];?>"/>
            <select name="howMuchProductsShow" id="">
                <option value="">Wszystkie</option>
                <option value="10" <?php echo ($how == 10 ? " selected ": "");?>>10</option>
                <option value="20" <?php echo ($how == 20 ? " selected ": "");?>>20</option>
                <option value="30" <?php echo ($how == 30 ? " selected ": "");?>>30</option>
            </select>
            <button class='button'>Potwierdź</button>
        </form>


    <?php
    }

?>




<main id="home">
    <?php 
        if(!empty($_POST['szukaj'])){ ?>

        <section class="pro">
            <div class="pro__title  howSelect">Wyszukane <?php select($how);?></div>
            <?php $page->Search($how, $_POST['szukaj']); ?>
        </section>

    <?php
        }else{
    ?>
    <section class="pro">
        <div class="pro__title">Bestsellery</div>
        <?php $page->showBestsellers(6); ?>
    </section>
    <section class="pro">
        <div class="pro__title">Polecane</div>
        <?php $page->showRecommended(6); ?>
    </section>
    <?php
        }
    ?>

</main>

<?php
    $page->getFooter();