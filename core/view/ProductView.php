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