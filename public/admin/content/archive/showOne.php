<?php
    $array = $aC->getProductDataForEditProduct($_GET['id']); //name, price, spec, cate, idProduct
    if(isset($_SESSION['productData'])){
        $array = $_SESSION['productData'];
        unset($_SESSION['productData']);
    }
    $_POST['idProduct'] = $_GET['id'];
    $gallery = $aC->getGallery($_GET['id']);
    $category = $aC->getCategorySelectField();
?>
<main id="editProduct">
    <section>
        <form action="/admin/fun/productEdit/<?php echo $array[5];?>/" method="post" class="productAddForm" enctype="multipart/form-data">
            <!-- <input type="number" name="name" value="<?php echo $array[0]; ?>" /> -->
        <div class="title">Podgląd produktu</div>
            <div>
                <fieldset>
                    <legend> Name </legend>
                    <span><?php echo $array[0]; ?></span>
                </fieldset>
            </div>
            <div>
                <fieldset>
                    <legend> Price </legend>
                    <span><?php echo $array[1]; ?> </span>
                </fieldset>
            </div>
            <div>
                <fieldset>
                    <legend> Specification* </legend>
                    <span class="bigSpan"><?php echo $array[2]; ?></span>
                </fieldset>
                <div class="info">*Format specyfikacji -> Właściwość: wartość; </div>
            </div>
            <div>
                <fieldset>
                    <legend> Category </legend>
                    <span>
                        <?php 
                            foreach($category as $key=>$value){
                                if($array[3] == $value['idCategory']){
                                    echo $value['category'];
                                }
                            }
                        ?>
                    </span>
                    <!-- <select name='category'>
                        
                    </select> -->
                </fieldset>
            </div>
            
            <div class="buttons one">
                <button><a href="/admin/page/archive/">Powrót</a></button>
            </div>

        </form>
    </section>
    <section>
        <form class="productAddForm">
            <div class="title">Zdjęcie główne</div>
            <div class="gallery">
                <?php
                    if(empty($array[4])){
                        echo "<div><img src='/dist/files/product/example/example.png'/></div>";
                    }else{
                        echo "<div><img src='/dist/files/product/{$array[5]}/main.png'/></div>";
                    }
                ?>
            </div>
            <div class="title">Galeria</div>
            <div class="gallery">
                <?php
                    foreach ($gallery as $key => $value) {
                        echo "<div><img src='/dist/files/product/{$array[5]}/{$value['photo']}'/></div>";
                    }
                    if(empty($gallery)){
                        echo "<div>Brak zdjęć w galerii.</div>";
                    }
                ?>
            </div>
        </form>
    </section>
</main>