<?php
    class ProductModel extends Database{
        public function getCategoryProducts($id, $count = FALSE){
            
            if(!$count){
                $query = 'SELECT idProduct, name, Quantity, idFoto, Specification FROM products WHERE idCategory = ?';
            }else{
                $query = 'SELECT idProduct, name, Quantity, idFoto, Specification FROM products WHERE idCategory = ? LIMIT '. $count;
            }
            
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id]);
            return $stmt->fetchAll();
        }
        public function Bestsellers($count = FALSE){
            // $stmt = $this->connect()->prepare('SELECT idProduct, name, price, idFoto FROM product WHERE Quantity > 10 and idProduct in (SELECT idProduktu from productsincarts ORDER BY count(idCart) GROUP BY idProduktu) Limit ?');
            if(!$count){
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE Quantity > 1';
            }else{
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE Quantity > 1 Limit '. $count;
            }
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([]);
            //var_dump($stmt->fetchAll());
            return $stmt->fetchAll();
        }
        
        public function getProductData($id){
            $query = 'SELECT idProduct, name, price, idFoto, Specification from products where idProduct = ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id]);
            return $stmt->fetch();
        }

        public function getPrice($id){
            $query = 'SELECT price from products where idProduct = ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id]);
            return $stmt->fetch()['price'];
        }

        public function getAllProduct($idCat){
            $query = 'SELECT idProduct, name, price, idFoto, Specification from products where idCategory LIKE ? ';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$idCat]);
            return $stmt->fetchAll();
        }

        public function addProduct($name, $price, $Quantity, $Specification, $category){
            $query = 'INSERT into products(name, price, Quantity, Specification, idCategory) values (?,?,?,?,?)';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$name,$price,$Quantity,$Specification, $category]);
            return $stmt;
        }

        public function getNewProductID(){
            $query = "SELECT max(idProduct) as id FROM products";
            $stmt = $this->connect()->query($query);
            return $stmt->fetch()['id'];
        }
        public function getNewFotoID($id){
            $query = "SELECT max(idFoto) as id FROM productgallery where idProduct = ?";
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id]);
            return $stmt->fetch()['id'];
        }

        public function addPhotos($id){
            $path = "../dist/files/product/{$id}/";
            $fileName = "main.png";
            $fullpath = $path . $fileName;
            $tmp = $_FILES['photoMain']['tmp_name'];
            file_exists($fullpath) or touch($fullpath);
            move_uploaded_file($tmp, $fullpath);
            $query = "INSERT INTO productgallery VALUES(null, ?, ?)";
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id, $fileName]);
            
            $mainId = $this->getNewFotoID($id);
            $query = "UPDATE products SET idFoto = ? WHERE idProduct = ?";
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$mainId, $id]);

            for($i = 0; $i < count($_FILES['photoGallery']['name']); $i++){
                $k = $i + 1;
                $fileName = "gallery{$k}.png";
                $fullpath = $path . $fileName;
                $tmp = $_FILES['photoGallery']['tmp_name'][$i];
                file_exists($fullpath) or touch($fullpath);
                move_uploaded_file($tmp, $fullpath);
                $query = "INSERT INTO productgallery VALUES(null, ?, ?)";
                $stmt = $this->connect()->prepare($query);
                $stmt->execute([$id, $fileName]);
            }

        }

    }