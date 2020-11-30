<?php
    $category = $aC->getCategorySelectField();
?>

<main id="controlPro">
    <section>
        <div class="title">
            
            <span>
                <form action="" method="POST" class="productForm">
                    <span class="add"><span>Asortyment</span> <button><a href="/admin/page/productAdd/">Dodaj produkt</a></button></span>
                    <div class="select">
                        <select name='category'>
                            <option value="%">Wszystkie</option>
                            <?php 
                                foreach($category as $key=>$value){
                                    if(isset($_POST['category']) && $_POST['category'] == $value['idCategory']){
                                        echo "<option value='{$value['idCategory']}' selected>{$value['category']}</a></option>";
                                    }else{
                                        echo "<option value='{$value['idCategory']}'>{$value['category']}</a></option>";
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
                    $aC->showAllProducts($_POST['category']);
                }else{
                    $aC->showAllProducts();
                }
                
            ?>
        </div>
    </section>
    <!-- 
        - lista produktów z możliwością filtorwania
        - dodawanie
        - edycji 
        - usuwania

     -->
    
</main>