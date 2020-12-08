<?php
    if(isset($_GET['type']) && !empty($_GET['id'])){
        $link = (
            $_GET['type'] == "c" ? "/{$_GET['type']}/{$_GET['id']}/": "/"
        );
    }else{
        $link = "/";
    }
    $id = $_GET['id'];
    if(!empty($_POST['howMuchProductsShow'])){
        $how = $_POST['howMuchProductsShow'];
    }else{
        $how = FALSE;
    }
    function select($how, $link){
    ?>
        <form action="<?php echo $link; ?>" method="post" >
            <input type="hidden" name="szukaj" value="<?php echo (!empty($_POST['szukaj']) ? $_POST['szukaj'] : "" );?>"/>
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
    $page->getHeader();
?>


<main id="category">
    <div class="cat_title howSelect"> <?php echo $page->getName($id); ?><?php select($how, $link);?></div>
    <section class="pro">
        <?php $page->getCategoryProducts($id, $how, (!empty($_POST['szukaj']) ? $_POST['szukaj'] : FALSE )); ?>
    </section>
</main>



<?php
    $page->getFooter();
?>