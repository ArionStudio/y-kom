<?php
    $page->getHeader();
    if(isset($_POST['how'])){
        $how = $_GET['how'];
    }else{
        $how = 10;
    }
?>


<main id="orders">
    <div class="title">Zamówienie nr </div>
    <?php
        $page->showUserOrder($_GET['id']);
    ?>
</main>

<?php
    $page->getFooter();