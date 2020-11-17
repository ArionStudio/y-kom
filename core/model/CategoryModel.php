<?php
    class CategoryModel extends Database{
        public function getCategories(){
            $stmt = $this->connect()->query('SELECT * FROM categories');
            return $stmt->fetchAll();
        }
    }