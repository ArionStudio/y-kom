<?php
    class ProductModel extends Database{
        public function getProductsCategory($id){
            $stmt = $this->connect()->prepare('SELECT idProduct, name, Quantity, Specification, idFoto FROM product WHERE idCategory = ?');
            $stmt->execute([$id]);
            return $stmt->fetchAll();
        }
    }