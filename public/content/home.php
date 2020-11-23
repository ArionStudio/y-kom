<?php
    $page->getHeader();
    if(isset($_POST['how'])){
        $how = $_GET['how'];
    }else{
        $how = 10;
    }
?>


<main id="home">
    <section class="pro">
        <div class="pro__title">Bestsellery</div>
        <?php $page->showBestsellers($how); ?>
    </section>
    <section class="pro">
        <div class="pro__title">Bestsellery</div>
        <?php $page->showBestsellers($how); ?>
    </section>
    <section class="pro">
        <div class="pro__title">Bestsellery</div>
        <?php $page->showBestsellers($how); ?>
    </section>
</main>

<?php
    $page->getFooter();