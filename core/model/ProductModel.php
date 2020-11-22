<?php
    class ProductModel extends Database{
        public function getProductsCategory($id){
            $stmt = $this->connect()->prepare('SELECT idProduct, name, Quantity, Specification, idFoto FROM product WHERE idCategory = ?');
            $stmt->execute([$id]);
            return $stmt->fetchAll();
        }
        public function Bestsellers($count = 10){
            // $stmt = $this->connect()->prepare('SELECT idProduct, name, price, idFoto FROM product WHERE Quantity > 10 and idProduct in (SELECT idProduktu from productsincarts ORDER BY count(idCart) GROUP BY idProduktu) Limit ?');
            $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE Quantity > 1 Limit 10';
            if($count == 20){
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE Quantity > 1 Limit 20';
            }elseif($count == 30){
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE Quantity > 1 Limit 30';
            }elseif($count == 10){
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE Quantity > 1 Limit 20';
            }else{
                $query = 'SELECT idProduct, name, price, idFoto FROM products WHERE Quantity > 1';
            }
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$count]);
            return $stmt->fetchAll();
        }
    }