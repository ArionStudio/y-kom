<?php
    class ProductModel extends Database{
        public function getCategoryProducts($id, $count = FALSE, $x = FALSE){
            
            if(!$count){
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE archive = FALSE and idCategory = ? AND name LIKE CONCAT("%", ?, "%")';
            }else{
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE archive = FALSE and idCategory = ? AND name LIKE CONCAT("%", ?, "%") LIMIT '. $count;
            }
            
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id, $x]);
            return $stmt->fetchAll();
        }
        public function Bestsellers($count = FALSE){
            if(!$count){
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE Quantity > 10 and archive = FALSE and idProduct in (SELECT idProduct from productsincarts GROUP BY idProduct ORDER BY count(idCart))';
            }else{
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE Quantity > 10 and archive = FALSE and idProduct in (SELECT idProduct from productsincarts GROUP BY idProduct ORDER BY count(idCart)) Limit '. $count;
            }
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([]);
            return $stmt->fetchAll();
        }



        public function Recommended($count = FALSE){
            if(!$count){
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE Quantity > 10 and archive = FALSE and idProduct in (?, ?, ?, ?, ?, ?)';
            }else{
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE Quantity > 10 and archive = FALSE and idProduct in (?, ?, ?, ?, ?, ?) Limit '. $count;
            }
            $pro = $this->getIdPro();
            $random = [0, 0, 0, 0, 0, 0];
            for($i = 0; $i < count($random); $i++){
                $random[$i] = $pro[intval(random_int(0, (count($pro) - 1) * 100) / 100)][0];
            }
            $stmt = $this->connect()->prepare($query);
            $stmt->execute($random);
            return $stmt->fetchAll();
        }
        
        public function getIdPro(){
            $query = 'SELECT idProduct FROM products where archive = FALSE';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute();
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
            $query = 'INSERT into products(idCategory, Quantity, price, Specification, name) values (?,?,?,?,?)';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$category, $Quantity,$price,$Specification, $name]);
            $this->addNewRegisterAction($_SESSION['LoggedSlaveData']['id'], "Dodawanie nowego produktu o nazwie: {$name}");
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
                    $now = new DateTime('NOW');
                    $fileName = substr($_FILES['photoGallery']['name'][$i], 0, -4) . $now->format('_Y_m_d_H_i_s') . ".png";
                    $fullpath = $path . $fileName;
                    $tmp = $_FILES['photoGallery']['tmp_name'][$i];
                    file_exists($fullpath) or touch($fullpath);
                    move_uploaded_file($tmp, $fullpath);
                    $query = "INSERT INTO productgallery VALUES(null, ?, ?)";
                    $stmt = $this->connect()->prepare($query);
                    $stmt->execute([$id, $fileName]);
                }
            }
            $this->addNewRegisterAction($_SESSION['LoggedSlaveData']['id'], "Dodawanie zdjęć do produktu nr: {$id}");
        }

        public function delProduct($id){
            $query = 'UPDATE products set archive = TRUE WHERE idProduct = ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id]);
            $this->addNewRegisterAction($_SESSION['LoggedSlaveData']['id'], "Zarchiwizowanie ze sklepu produktu nr: {$id}");
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
            $this->addNewRegisterAction($_SESSION['LoggedSlaveData']['id'], "Edycja produktu nr: {$idProduct}");
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
            $this->addNewRegisterAction($_SESSION['LoggedSlaveData']['id'], "Usunięcie zdjęcia nr: {$idFoto} z galerii produktu nr: {$idPro}");
        }
        public function delProductMainFoto($id){
            unlink("../dist/files/product/{$id}/main.png");
            $query = "UPDATE products SET idFoto = ? WHERE idProduct = ?";
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([0, $id]);
            $this->addNewRegisterAction($_SESSION['LoggedSlaveData']['id'], "Usunięcie głownego zdjęcia produktu nr: {$id}");
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
            $this->addNewRegisterAction($_SESSION['LoggedSlaveData']['id'], "Przywrócenie do sklepu produktu nr: {$id}");
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
            $this->addNewRegisterAction($_SESSION['LoggedSlaveData']['id'], "Zmiana ilości produktu nr: {$id}");
            return $stmt;
        }
        public function addNewRegisterAction($id, $com){
            $query = 'INSERT INTO actions(idEmployee, description, time) VALUES (?, ?, now())';
            $st = $this->connect()->prepare($query);
            $st->execute([$id, $com]);
            return ($st ? TRUE : FALSE);
        }

        public function Search($count = FALSE, $x){
            $count = intval($count);
            if(!$count){
                $query = 'SELECT idProduct, name, price, idFoto FROM products natural join categories WHERE Quantity > 10 and archive = FALSE and (name LIKE CONCAT("%", ?, "%") or category LIKE CONCAT("%", ?, "%"))';
            }else{
                $query = 'SELECT idProduct, name, price, idFoto FROM products natural join categories WHERE Quantity > 10 and archive = FALSE and (name like CONCAT("%", ?, "%") or category like CONCAT("%", ?, "%") )  Limit '. $count;
            }
            
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$x, $x]);
            return $stmt->fetchAll();
        }
    }