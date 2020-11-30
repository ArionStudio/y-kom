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
        public function showProductCartForAdmin($id, $name, $price, $idFoto){ //1, KOMPUTER, 1200pl, foto
            ?>
                <div class="pro__list">
                    
                    <span>
                        <?php 
                                if(empty($idFoto)){ ?>
                                    <span class="pro__foto"><img src="/dist/files/product/example/example.png" alt=""></span>
                            <?php
                                }else{
                            ?>
                                <span class="pro__foto"><img src="/dist/files/product/<?php echo "{$id}/main.png";?>" alt=""></span>

                            <?php
                                }
                            ?>
                        <span class="pro__name"><?php echo $name;?></span>
                    </span>
                    <span class="function">
                        <span class="pro__price">Cena: <?php echo $price;?> zł</span>
                        <span><a class="edit" href="/fun/delFromProducts/<?php echo $id;?>/">
                        <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <g id="clarity:note-edit-line">
                                <path id="edit1" d="M14 15H3V4H9.61L10.61 3H3C2.73478 3 2.48043 3.10536 2.29289 3.29289C2.10536 3.48043 2 3.73478 2 4V15C2 15.2652 2.10536 15.5196 2.29289 15.7071C2.48043 15.8946 2.73478 16 3 16H14C14.2652 16 14.5196 15.8946 14.7071 15.7071C14.8946 15.5196 15 15.2652 15 15V7.5L14 8.5V15Z" fill="#505050"/>
                                <path id="edit2" d="M16.765 2.92L15.08 1.235C15.0052 1.16002 14.9164 1.10052 14.8186 1.05993C14.7208 1.01934 14.6159 0.998442 14.51 0.998442C14.4041 0.998442 14.2992 1.01934 14.2014 1.05993C14.1036 1.10052 14.0148 1.16002 13.94 1.235L7.085 8.13L6.53 10.535C6.50636 10.6516 6.50884 10.772 6.53728 10.8875C6.56572 11.003 6.6194 11.1107 6.69446 11.203C6.76953 11.2953 6.86411 11.3698 6.97141 11.4211C7.0787 11.4725 7.19605 11.4994 7.315 11.5C7.37648 11.5068 7.43852 11.5068 7.5 11.5L9.925 10.965L16.765 4.06C16.84 3.98522 16.8995 3.89638 16.9401 3.79857C16.9807 3.70076 17.0016 3.5959 17.0016 3.49C17.0016 3.3841 16.9807 3.27924 16.9401 3.18143C16.8995 3.08362 16.84 2.99478 16.765 2.92V2.92ZM9.405 10.04L7.575 10.445L8 8.63L13.16 3.435L14.57 4.845L9.405 10.04ZM15.135 4.28L13.725 2.87L14.5 2.08L15.92 3.5L15.135 4.28Z" fill="#505050"/>
                            </g>
                        </svg>
                        </a></span>
                        <span><a href="/fun/delFromProducts/<?php echo $id;?>/">
                            <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <g fill="#505050" fill-rule="evenodd">
                                    <path id="trash1" d="M8 7v12h8V7H8zM7 6h10v14H7V6z" fill-rule="nonzero"></path>
                                    <path id="trash2" d="M10 5v1h4V5h-4zM9 4h6v3H9V4z" fill-rule="nonzero"></path>
                                    <path id="trash3" d="M10 9h1v7h-1zM13 9h1v7h-1zM6 6h12v1H6z"></path>
                                </g>
                            </svg>
                        </a></span>
                    </span>
                </div>
            <?php
        }
        public function showProductsList($array, $count){
            foreach ($array as $key => $value) {
                $this->showProductList($value[0],$value[1], $value[2],$value[3]);
            }
        }
        public function showProductsFromQuery($value){
            $this->showProductCart($value['idProduct'],$value['name'], $value['price'],$value['idFoto']);
        }
        public function showAllProductsFromQuery($array){
            foreach($array as $key=>$value){
                $this->showProductCartForAdmin($value['idProduct'],$value['name'], $value['price'], $value['idFoto']);
            }
            if(!count($array)){
                echo "Brak produktów tej kategorii.";
            }
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