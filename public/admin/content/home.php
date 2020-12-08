<?php
    if(!empty($_POST['howMuchProductsShow'])){
        $how = $_POST['howMuchProductsShow'];
    }else{
        $how = FALSE;
    }
    
?>
<main>
    <section>
        <?php $aC->register($how);?>
    </section>
</main>