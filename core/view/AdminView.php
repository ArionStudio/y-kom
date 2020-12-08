<?php
    class AdminView{
        public function showRegister($idLogged, $Employee, $Time, $IP){?>
            <tr>
                <td><?php echo $idLogged ?></td>
                <td><?php echo $Employee ?></td>
                <td><?php echo $Time ?></td>
                <td><?php echo $IP ?></td>
            </tr>
        <?php
        }
        public function showRegisterAll($array, $how, $admin = FALSE){
            if($admin){
                $header = "Ostatnie akcje";
                $sp1 = "Opis";
                $link = "/admin/page/actions/";
            }
            else{
                $header = "Ostatnie logowania";
                $sp1 = "IP";
                $link = "/admin/";
            }
            ?>
            <div class='title cat_title howSelect' style='text-align: center; margin: 21px; '>
                <span><?php echo $header?></span>
                <form action="<?php echo $link; ?>" method="post" class="productForm">
                    <select name="howMuchProductsShow" id="">
                        <option value="X"  <?php echo ($how == "X" ? " selected ": "");?>>Wszystkie</option>
                        <option value="10" <?php echo (intval($how) === 10 ? " selected ": "");?>>10</option>
                        <option value="20" <?php echo (intval($how) === 20 ? " selected ": "");?>>20</option>
                        <option value="30" <?php echo (intval($how) === 30 ? " selected ": "");?>>30</option>
                    </select>
                    <button class='button' style="height: 35px">Potwierdź</button>
                </form>
            </div>
            <table>
            <tr><td>id</td><td>Pracownik</td><td>Czas</td><td><?php echo $sp1;?></td></tr>
            <?php
            foreach($array as $key => $value){
                $this->showRegister($value['idLogged'], $value['emp'], $value['Time'], $value['IP']);
            }
            echo "</table>";
        }
    }