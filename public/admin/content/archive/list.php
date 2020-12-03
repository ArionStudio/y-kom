<?php
    $category = $aC->getCategorySelectField();
?>

<main id="controlPro">
    <section>
        <div class="title">
            
            <span>
                <form action="" method="POST" class="productForm">
                    <span class="add"><span>Archiwum</span></span>
                    <div class="select">
                        <select name='category'>
                            <option value="%">Wszystkie</option>
                            <?php 
                                foreach($category as $key=>$value){
                                    if(isset($_POST['category']) && $_POST['category'] == $value['idCategory']){
                                        echo "<option value='{$value['idCategory']}' selected>{$value['category']}</option>";
                                    }else{
                                        echo "<option value='{$value['idCategory']}'>{$value['category']}</option>";
                                    }
                                    
                                }
                            ?>
                        </select>
                        <button type="submit"><span>Potwierdź</span></button>
                    </div>
                </form>
            </span>
        </div>
        <div class="asortyment">
            <?php
                if(isset($_POST['category'])){
                    $aC->showAllArchiveProducts($_POST['category']);
                }else{
                    $aC->showAllArchiveProducts();
                }
                
            ?>
        </div>
    </section>

    
</main>