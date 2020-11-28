<?php
    $page->getHeader();
    if(isset($_POST['how'])){
        $how = $_GET['how'];
        
    }else{
        $how = FALSE;
    }
?>



<main id="home">
    <section class="pro">
        <div class="pro__title">Bestsellery</div>
        <?php $page->showBestsellers(1); ?>
    </section>
    <section class="pro">
        <div class="pro__title">Bestsellery</div>
        <?php $page->showBestsellers(2); ?>
    </section>
    <section class="pro">
        <div class="pro__title">Bestsellery</div>
        <?php $page->showBestsellers(3); ?>
    </section>
</main>

<?php
    $page->getFooter();