<?php 
    $categories = $_POST['categories'];
    unset($_POST['categories']);
?>

    <section>
        <menu type="context">
            <?php
                foreach ($categories as $key => $value) { ?>
                    <div><a href="/c/<?php echo $value[0]; ?>/"><?php echo $value[1]; ?></a></div>
            <?php
                }
            ?>
        </menu>
    </section>

</header>