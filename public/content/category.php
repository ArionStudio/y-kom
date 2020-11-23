<?php
    $id = $_GET['id'];
    if(isset($_POST['how'])){
        $how = $_GET['how'];
    }else{
        $how = 10;
    }
    $categoryData;
    $page->getHeader();
?>

<main>
    <div class="cat_title">Kategoria nr <?php echo $id; ?></div>
    <section class="pro">
        <?php $page->getCategoryProducts($id, $how); ?>
    </section>
</main>

<?php
    $page->getFooter();
?>