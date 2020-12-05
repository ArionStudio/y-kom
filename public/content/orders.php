<?php
    $page->getHeader();
    if(isset($_POST['how'])){
        $how = $_GET['how'];
    }else{
        $how = 10;
    }
?>


<main id="orders">
    <div class="title">Zamówienia</div>
    <?php
        $page->showUserOrders();
    ?>
</main>

<?php
    $page->getFooter();