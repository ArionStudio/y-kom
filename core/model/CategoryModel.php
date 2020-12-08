<?php
    class CategoryModel extends Database{
        public function getCategories(){
            $stmt = $this->connect()->query('SELECT * FROM categories');
            return $stmt->fetchAll();
        }

        public function getCategoryName($id){
            $query = 'SELECT category from categories where idCategory = ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([intval($id)]);
            return $stmt->fetch()['category'];
        }
    }