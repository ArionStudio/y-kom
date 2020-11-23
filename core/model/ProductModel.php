<?php
    class ProductModel extends Database{
        public function getCategoryProducts($id, $count){
            
            if($count == 10){
                $query = 'SELECT idProduct, name, Quantity, idFoto, Specification FROM products WHERE idCategory = ? LIMIT 10';
            }elseif($count == 20){
                $query = 'SELECT idProduct, name, Quantity, idFoto, Specification FROM products WHERE idCategory = ? LIMIT 20';
            }elseif($count == 30){
                $query = 'SELECT idProduct, name, Quantity, idFoto, Specification FROM products WHERE idCategory = ? LIMIT 30';
            }else{
                $query = 'SELECT idProduct, name, Quantity, idFoto, Specification FROM products WHERE idCategory = ?';
            }
            
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id]);
            return $stmt->fetchAll();
        }
        public function Bestsellers($count = 10){
            // $stmt = $this->connect()->prepare('SELECT idProduct, name, price, idFoto FROM product WHERE Quantity > 10 and idProduct in (SELECT idProduktu from productsincarts ORDER BY count(idCart) GROUP BY idProduktu) Limit ?');
            if($count == 10){
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE Quantity > 1 Limit 10';
            }elseif($count == 20){
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE Quantity > 1 Limit 20';
            }elseif($count == 30){
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE Quantity > 1 Limit 30';
            }else{
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE Quantity > 1';
            }
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$count]);
            return $stmt->fetchAll();
        }
    }