<?php
    class ProductView{
        public function showProduct($id, $name, $price, $idFoto, $type){ //1, KOMPUTER, 1200pl, foto
            ?>
                <div class="pro__<?php echo $type; ?>">
                    <a class="pro__link" href="/p/<?php echo $id;?>/">
                        <?php 
                            if(empty($idFoto)){ ?>
                                <p class="pro__foto"><img src="/dist/files/product/example/example.png" alt=""></p>
                        <?php
                            }else{
                        ?>
                            <p class="pro__foto"><img src="<?php echo $idFoto;?>" alt=""></p>

                        <?php
                            }
                        ?>
                        <p class="pro__name"><?php echo $name;?></p>
                        <p class="pro__price">Cena: <?php echo $price;?> zł</p>
                    </a>
                </div>
            <?php
        }
        public function showProductsList($array, $count){
            $this->showProduct($value[0],$value[1], $value[2],$value[3], "list");
        }
        public function showProductsTiles($array, $count){
            foreach ($array as $key => $value) {
                $this->showProduct($value[0],$value[1], $value[2],$value[3], "tiles");
            }
        }
    }