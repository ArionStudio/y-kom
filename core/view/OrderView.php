<?php
    class OrderView{
        public function showOrders($array, $admin = FALSE){ ?>
            <div class='orders'>
            <div class='orders__list'>
                <span>Nr</span>
                <span>Status</span>
                <span>Data</span>
                <span>Koszt</span>
                <span>Opcje</span>
            </div>
        <?php
            foreach($array as $value){
                $this->showOrderInList($value[0], $value[1], $value[2], $value[3], $admin);
            }
            echo "</div>";
        }
        public function showOrderInList($id, $status, $date, $price, $admin){ ?>
            <div class='orders__list'>
                <span><?php echo $id; ?> </span>
                <span><?php echo $status; ?> </span>
                <span><?php echo date_format(new DateTime($date),"d-m-Y"); ?> </span>
                <span><?php echo number_format($price,2); ?> zł </span>
                <span>
                    <?php 
                        if(!$admin) $link = "/f/zamowienie/{$id}/";
                        else $link = "/admin/page/order/{$id}/";
                    ?>
                    <a class="edit" href="<?php echo $link; ?>">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <g class="eye" id="bx:bx-show" fill="#505050">
                                <path id="edit1" d="M12 9C11.206 9.00524 10.4459 9.32299 9.88447 9.88447C9.32299 10.4459 9.00524 11.206 9 12C9 13.642 10.358 15 12 15C13.641 15 15 13.642 15 12C15 10.359 13.641 9 12 9Z"/>
                                <path id="edit2" d="M12 5C4.367 5 2.073 11.617 2.052 11.684L1.946 12L2.051 12.316C2.073 12.383 4.367 19 12 19C19.633 19 21.927 12.383 21.948 12.316L22.054 12L21.949 11.684C21.927 11.617 19.633 5 12 5ZM12 17C6.649 17 4.576 13.154 4.074 12C4.578 10.842 6.652 7 12 7C17.351 7 19.424 10.846 19.926 12C19.422 13.158 17.348 17 12 17V17Z" />
                            </g>
                        </svg>
                    </a>
                </span>
            </div>
        <?php
        }

        public function showOrderPage($DATA, $USER_DATA,$USER_ADDRESS, $CART, $admin = FALSE){ ?>
        
            
            <article <?php if($admin) echo 'class="admin"'; ?>>
                <section>
                    <div class="title">Zamówienie nr <?php echo $DATA[0]; ?></div>
                    <div> z <?php echo date_format(new DateTime($DATA[2]), "d-m-Y") ?></div>
                    <div> stan: <?php echo  $DATA[1];?> </div>
                </section>
                
                <section>
                    <section>
                        <div class="title">Dane zamawiającego:</div>
                        <div>
                            <?php echo $USER_DATA[0];?> 
                            
                        </div>
                        <div>
                            email: <?php echo $USER_DATA[1]; ?>
                            
                        </div>
                        <div>
                            tel. <?php echo $USER_DATA[2]; ?>
                        </div>
                    </section>
                    <section>
                        <div class="title">Adres dostawy:</div>
                        <div>
                            <?php echo $USER_ADDRESS[2];?> 
                            
                        </div>
                        <div>
                            <?php echo $USER_ADDRESS[1] . " " . $USER_ADDRESS[0]; ?>
                            
                        </div>
                    </section>
                </section>
                <section>
                    <div class="title">Lista produktów:</div>
                    <?php 
                        $pV = new ProductView();
                        $oM = new OrderModel();
                        $pV->showProductsFromOrder($oM->getProductsFromOrder($CART[0]), $CART[1]); 
                    ?>
                </section>
                <section>
                    <div>
                        <button class="button">
                            <?php   
                                if(!$admin) $link = "/f/moje-zamowienia/"; 
                                else $link = "/admin/page/orders/";
                            ?>

                            <a href="<?php echo $link;?>">
                                Wróć
                            </a>
                        </button>
                    </div>
                    <div>
                    <?php if($admin){ ?>
                        <form action="/admin/fun/changeStatus/<?php echo $DATA[0];?>/" method="post">
                        <span>Zaktualizuj stan</span>
                            <select name="newStatus">
                                <?php
                                    $i=6;
                                    foreach($oM->getStatusAll() as $value){
                                        if($DATA[1] == $value[1]) $i = $value[0];
                                        if($value[0] >= $i){
                                            echo "<option value={$value[0]}>{$value[1]}</option>";
                                        }
                                    }
                                ?>
                            </select>
                            <button class="button" type='submit'><span>Potwierdź</span></button>
                        </form>
                    <?php } ?>
                    </div>
                </section>
            </article>
            
            
        <?php
        }
    }
