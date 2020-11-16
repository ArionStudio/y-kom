<?php
    class ProductView{
        function connect(){
            $dbh = "mysql:dbname=ykom;host=127.0.0.1;port=3306";
            $user = "root";
            $password = "";
            try{
                $pdo = new PDO($dbh, $user, $password);
            }catch(PDOException $e){
                $pdo = null;
                session_start();
                $_SESSION['error'] = [$e->getCode(), $e->getMessage()];
                header("Location: dberror.php");
                exit;
            }
            return $pdo;
        }
        public function getCategorySelect(){
            $query = 'SELECT idCategory, category FROM categories';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute();
            $selectCategoryField = '<select name="category" >';
            while($row = $stmt->fetch()){
                $selectCategoryField .= '<option value="'. $row['idCategory'] .'">';
                $selectCategoryField .= $row['category'];
                $selectCategoryField .= '</option>';
            }
            $selectCategoryField .= '</select>';
            return $selectCategoryField;
        }
        public function renderView(){
            $sCF = $this->getCategorySelect();
            require_once('core/view/admin/html/product.php');
            
            $query = 'SELECT * FROM products';
            $sst = $this->connect()->prepare($query);
            $sst->execute();




            while($row = $sst->fetch()){
                echo $row['idProduct'] . " " . $row['name'] . " " . $row['price'] . "zł"  . " " . $row['idCategory'] .  "</br>";        
            }

            

        }
    }