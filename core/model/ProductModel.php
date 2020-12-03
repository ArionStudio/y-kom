<?php
    class ProductModel extends Database{
        public function getCategoryProducts($id, $count = FALSE){
            
            if(!$count){
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE archive = FALSE and idCategory = ?';
            }else{
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE archive = FALSE and idCategory = ? LIMIT '. $count;
            }
            
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id]);
            return $stmt->fetchAll();
        }
        public function Bestsellers($count = FALSE){
            // $stmt = $this->connect()->prepare('SELECT idProduct, name, price, idFoto FROM product WHERE Quantity > 10 and idProduct in (SELECT idProduktu from productsincarts ORDER BY count(idCart) GROUP BY idProduktu) Limit ?');
            if(!$count){
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE archive = FALSE';
            }else{
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE archive = FALSE Limit '. $count;
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
            $query = 'SELECT idProduct, name, price, idFoto, Specification from products where idCategory LIKE ? AND archive = FALSE';
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

        public function addPhotos($id, $edit=FALSE){
            $path = "../dist/files/product/{$id}/";
            if(!file_exists($path)){
                mkdir($path);
            }
            $fileName = "main.png";
            $fullpath = $path . $fileName;
            $tmp = $_FILES['photoMain']['tmp_name'];
            if(!empty($tmp)){
                file_exists($fullpath) or touch($fullpath);
                move_uploaded_file($tmp, $fullpath);
                
                $query = "UPDATE products SET idFoto = ? WHERE idProduct = ?";
                $stmt = $this->connect()->prepare($query);
                $stmt->execute([1, $id]);
            }
            if(empty($_FILES['photoGallery']['name'][0])) return;
            if(count($_FILES['photoGallery']['name']) > 0){
                for($i = 0; $i < count($_FILES['photoGallery']['name']); $i++){
                    $fileName = $_FILES['photoGallery']['name'][$i];
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

        public function delProduct($id){
            $query = 'UPDATE products set archive = TRUE WHERE idProduct = ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id]);
        }
       
        public function getProductDataForEditProduct($id){
            $query = 'SELECT name, price, Specification, idCategory, idFoto, idProduct from products where idProduct = ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id]);
            $row = $stmt->fetch();
            return [$row['name'], $row['price'], $row['Specification'], $row['idCategory'], $row['idFoto'], $row['idProduct']];
        }

        public function getGallery($id){
            $query = 'SELECT idFoto, photo from productgallery where idProduct = ? AND photo <> ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id, "main.png"]);
            return $stmt->fetchAll();
        }


        public function editProduct($name, $price, $Specification, $category, $idProduct){
            $query = 'UPDATE products SET name = ?, price = ?, Specification = ?, idCategory = ? WHERE idProduct = ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$name,$price,$Specification, $category, $idProduct]);
            return $stmt;
        }

        public function delProductGalleryFoto($idPro, $idFoto){
            $query = "SELECT * FROM productgallery where idProduct = ? AND idFoto = ?";
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$idPro, $idFoto]);
            unlink("../dist/files/product/{$idPro}/" . $stmt->fetch()['photo']);
            $query = "DELETE FROM productgallery where idProduct = ? AND idFoto = ?";
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$idPro, $idFoto]);
        }
        public function delProductMainFoto($id){
            unlink("../dist/files/product/{$id}/main.png");
            $query = "UPDATE products SET idFoto = ? WHERE idProduct = ?";
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([0, $id]);
        }

        public function archive($idCategory = "%"){
            $query = "SELECT * FROM products WHERE archive = TRUE and idCategory Like ?";
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$idCategory]);
            return $stmt->fetchAll();
        }

        public function archiveAddToProduct($id){
            $query = 'UPDATE products set archive = FALSE where idProduct = ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id]);
            return $stmt;
        }

        public function getProductIdCategory($id){
            $query = 'SELECT idCategory from products where idProduct = ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id]);
            return $stmt;
        }
        
        public function warehouse($idCategory = "%"){
            $query = "SELECT idProduct, name, Quantity, idFoto FROM products WHERE archive = FALSE and idCategory Like ?";
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$idCategory]);
            return $stmt->fetchAll();
        }
        public function setProductQuantity($id, $newQua){
            $query = 'UPDATE products set Quantity = ? where idProduct = ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$newQua, $id]);
            return $stmt;
        }
    }