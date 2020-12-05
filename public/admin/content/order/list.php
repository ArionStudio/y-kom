<main id="orders">
    <article  class="admin">
    <div class="title special">
        <span>Zamówienia</span>
        <form action="" method="post">
                <span>Stan</span>
                <select name="status">
                    <option value="%">Wszystkie</option>
                    <?php
                        $oM = new OrderModel();
                        foreach($oM->getStatusAll() as $value){
                            if(isset($_POST['status'])){
                                if($_POST['status'] == $value[0]){
                                    echo "<option selected value={$value[0]}>{$value[1]}</option>";
                                }else{
                                    echo "<option value={$value[0]}>{$value[1]}</option>";
                                }
                            }else{
                                echo "<option value={$value[0]}>{$value[1]}</option>";  
                            }
                        }
                    ?>
                </select>
                <button class="button" type='submit'><span>Filtruj</span></button>
            </form>
    </div>
    <?php
        if(isset($_POST['status'])){
            $aC->showOrders($_POST['status']);
        }else{
            $aC->showOrders();  
        }
    ?> 
    </article>
</main>
