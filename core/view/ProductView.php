<?php
    class ProductView{
        public function showProduct($id, $name, $price, $idFoto, $type){ //1, KOMPUTER, 1200pl, foto
            ?>
                <div class="product__<?php echo $type; ?>">
                    <?php echo $idFoto;?>
                    <a href="/p/<?php echo $id;?>/"></a>
                    <h4 class="productTileName"><?php echo $name;?></h4>
                    <p class="productTilePrice">Cena: <?php echo $price;?></p>
                </div>
            <?php
        }
        public function showProductsList($array, $count){
            $this->showProduct($value[0],$value[1], $value[2],$value[3], "list");
        }
        public function showProductsTiles($array, $count){
            echo '<div>';
            foreach ($array as $key => $value) {
                $this->showProduct($value[0],$value[1], $value[2],$value[3], "tiles");
            }
            echo '</div>';
        }
    }