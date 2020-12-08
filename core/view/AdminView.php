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
        public function showRegisterAll($array, $admin = FALSE){
            if($admin){
                $header = "Ostatnie akcje";
                $sp1 = "Opis";
            }
            else{
                $header = "Ostatnie logowania";
                $sp1 = "IP";
            }
            
            echo "<div class='title' style='text-align: center;'>{$header}</div>";
            echo "<table>";
            echo "<tr><td>id</td><td>Pracownik</td><td>Czas</td><td>{$sp1}</td></tr>";
            foreach($array as $key => $value){
                $this->showRegister($value['idLogged'], $value['emp'], $value['Time'], $value['IP']);
            }
            echo "</table>";
        }
    }