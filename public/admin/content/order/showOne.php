<?php
    if(isset($_POST['how'])){
        $how = $_GET['how'];
    }else{
        $how = 10;
    }
?>


<main id="orders" class="single">
    <?php
        $aC->showOrder($_GET['id'], TRUE);
    ?>
</main>
