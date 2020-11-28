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
    }