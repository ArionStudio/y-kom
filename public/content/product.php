<?php
    $page->getHeader();
    if(isset($_POST['how'])){
        $how = $_GET['how'];
    }else{
        $how = 10;
    }
?>


<main id="product">
    <?php
        $page->showProductPage($_GET['id']);
    ?>
</main>

<?php
    $page->getFooter();