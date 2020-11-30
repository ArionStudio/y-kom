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
        <div class="title">Formularz edycji produktu</div>
            <div>
                <fieldset>
                    <legend> Name </legend>
                    <input placeholder="Name" type="text" name="name" value="<?php echo $array[0]; ?>" />
                </fieldset>
            </div>
            <div>
                <fieldset>
                    <legend> Price </legend>
                    <input placeholder="Price" type="number" min="0" step="0.01" name="price" value="<?php echo $array[1]; ?>" />
                </fieldset>
            </div>
            <div>
                <fieldset>
                    <legend> Specification* </legend>
                    <textarea maxlength="400" placeholder="Specification" type="text" name="specification" ><?php echo $array[2]; ?></textarea>
                </fieldset>
                <div class="info">*Format specyfikacji -> Właściwość: wartość; </div>
            </div>
            <div>
                <fieldset>
                    <legend> Category </legend>    
                    <select name='category'>
                        <?php 
                            foreach($category as $key=>$value){
                                echo "<option value='{$value['idCategory']}'>{$value['category']}</a></option>";
                            }
                        ?>
                    </select>
                </fieldset>
            </div>
            <div>
                
                <fieldset>
                    <legend> Zdjęcie główne* </legend>
                    <input placeholder="Photo main" type="file" name="photoMain" accept=".png" capture/>
                </fieldset>
                <div class="info">*Upload nowego głównego zdjęcia usuwa stare</div>
            </div>
            <div>
                
                <fieldset>
                    <legend> Dodaj zdjęcia do galeri </legend>
                    <input placeholder="Photo gallery" type="file" name="photoGallery[]" multiple accept=".png" files/>
                </fieldset>
            </div>
            <div class="buttons">
                <button>Edytuj</button><button><a href="/admin/page/product/">Anuluj</a></button>
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
                        echo "<div><img src='/dist/files/product/{$array[5]}/main.png'/><a href='/admin/fun/delFoto/{$array[5]}/'>".
                            '<svg width="20" height="20" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg"><path id="erase1" d="M10.192 0.343994L5.949 4.58599L1.707 0.343994L0.292999 1.75799L4.535 5.99999L0.292999 10.242L1.707 11.656L5.949 7.41399L10.192 11.656L11.606 10.242L7.364 5.99999L11.606 1.75799L10.192 0.343994Z" fill="black"/></svg>'
                        ."</a></div>";
                    }
                ?>
            </div>
            <div class="title">Galeria</div>
            <div class="gallery">
                <?php
                    foreach ($gallery as $key => $value) {
                        echo "<div><img src='/dist/files/product/{$array[5]}/{$value['photo']}'/><a href='/admin/fun/delFoto/{$array[5]}/{$value['idFoto']}/'>".
                        '<svg width="20" height="20" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg"><path id="erase2" d="M10.192 0.343994L5.949 4.58599L1.707 0.343994L0.292999 1.75799L4.535 5.99999L0.292999 10.242L1.707 11.656L5.949 7.41399L10.192 11.656L11.606 10.242L7.364 5.99999L11.606 1.75799L10.192 0.343994Z" fill="black"/></svg>'
                        ."</a></div>";
                    }
                    if(empty($gallery)){
                        echo "<div>Brak zdjęć w galerii.</div>";
                    }
                ?>
            </div>
        </form>
    </section>
</main>