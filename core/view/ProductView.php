<?php
    class ProductView{
        public function showProductTiles($id, $name, $price, $idFoto){ //1, KOMPUTER, 1200pl, foto
            ?>
                <div class="pro__tiles">
                    <a class="pro__link" href="/p/<?php echo $id;?>/">
                        <?php 
                            if(empty($idFoto)){ ?>
                                <div class="pro__foto"><img src="/dist/files/product/example/example.png" alt=""></div>
                        <?php
                            }else{
                        ?>
                            <div class="pro__foto"><img src="<?php echo $idFoto;?>" alt=""></div>

                        <?php
                            }
                        ?>
                        <div class="pro__name"><?php echo $name;?></div>
                        <div class="pro__price">
                            <span>Cena: <?php echo $price;?> zł</span>
                            <a href="/s/addToCart/<?php echo $id;?>/"><img src="/dist/files/page/addToCard.svg" alt=""></a>
                        </div>
                    </a>
                </div>
            <?php
        }
        public function showProductList($id, $name, $price, $idFoto){ //1, KOMPUTER, 1200pl, foto
            ?>
                <div class="pro__list">
                    <a class="pro__link" href="/p/<?php echo $id;?>/">
                        
                        
                    </a>
                    <?php 
                            if(empty($idFoto)){ ?>
                                <span class="pro__foto"><img src="/dist/files/product/example/example.png" alt=""></span>
                        <?php
                            }else{
                        ?>
                            <span class="pro__foto"><img src="<?php echo $idFoto;?>" alt=""></span>

                        <?php
                            }
                        ?>
                    <span class="pro__name"><?php echo $name;?></span>
                    <span class="pro__price">
                    <span>Cena: <?php echo $price;?> zł</span>
                    <span><a href="/s/addToCart/<?php echo $id;?>/"><img src="/dist/files/page/addToCard.svg" alt=""></a></span>
                </div>
            <?php
        }
        public function showProductCart($id, $name, $price, $idFoto, $how){ //1, KOMPUTER, 1200pl, foto
            ?>
                <div class="pro__list">
                    
                    <span>
                        <?php 
                                if(empty($idFoto)){ ?>
                                    <span class="pro__foto"><img src="/dist/files/product/example/example.png" alt=""></span>
                            <?php
                                }else{
                            ?>
                                <span class="pro__foto"><img src="<?php echo $idFoto;?>" alt=""></span>

                            <?php
                                }
                            ?>
                        <span class="pro__name"><?php echo $name;?></span>
                    </span>
                    <span>
                        <span class="pro__price">Cena: <?php echo $price;?> zł</span>
                        <span>
                                <a href="/s/addToCart/<?php echo $id;?>/">+</a><?php echo $how; ?><a href="/s/addToCart/<?php echo $id;?>-/">-</a>
                        </span>
                        <span><a href="/s/delFromCart/<?php echo $id;?>/"><img src="/dist/files/page/trash.svg" alt=""></a></span>
                    </span>
                </div>
            <?php
        }
        public function showProductsList($array, $count){
            foreach ($array as $key => $value) {
                $this->showProductList($value[0],$value[1], $value[2],$value[3]);
            }
        }
        public function showProductsFromQuery($value, $how){
            $this->showProductCart($value['idProduct'],$value['name'], $value['price'],$value['idFoto'], $how);
        }
        public function showProductsFromQueryMany($array){
            foreach ($array as $key => $value) {
                $this->showProductCart($value[0],$value[1], $value[2],$value[3], $value[4]);
            }
        }
        public function showProductsTiles($array, $count){
            foreach ($array as $key => $value) {
                $this->showProductTiles($value[0],$value[1], $value[2],$value[3]);
            }
        }

        public function showProductPage($data){
            //name, price, idFoto, Specification
            ?>
                <div>
                    <?php
                        if(empty($data['idFoto'])){ 
                    ?>
                    <div class="pmain">
                        <div class="pfoto">
                            <img src="/dist/files/product/example/example.png"/>
                        </div>
                        <?php 
                            }else{ 
                        ?>
                            <div class="pfoto">
                                <img src="<?php echo $data['idFoto'];?>" alt=""/>
                            </div>
                        <?php 
                            }
                        ?>
                        <div>
                            <div class="pname">
                                <?php echo $data['name']; ?>
                            </div>
                            <div class="pprice">
                                Cena: <?php echo $data['price']; ?>
                            </div>
                        </div>
                    </div>
                    <div class="pspecification">
                        <div>Specyfikacja</div>
                        <?php echo $this->showSpecProductOnPage($data['Specification']); ?>
                    </div>
                </div>

            <?php
        }

        public function showSpecProductOnPage($spec){
            $col1 = strtok($spec, ':');
            $col2 = strtok(';');
            ?>
            <div>
                <?php while($col1 !== false && $col2 !== false){
                if($col1!==false){
                    echo "<div>";
                    echo "<span>" . $col1 ."</span> <span>". $col2 ."</span>";
                    $col1 = strtok(":");
                    $col2 = strtok(";");
                    echo "</div>";
                }
            } ?>
            </div>
            <?php
             
        }

    }