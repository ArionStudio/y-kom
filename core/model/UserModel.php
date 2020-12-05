<?php
    class UserModel extends Database{

        public function login($email){
            $query = 'SELECT password FROM users WHERE email = ?';
            $st = $this->connect()->prepare($query);
            $st->execute([$email]);
            return $st;
        }

        public function register($array = []){
            if(count($array) == 0) return false;
            $query = 'INSERT INTO carts VALUES(NULL, NULL, 0)';
            $st = $this->connect()->query($query);
            $query = 'INSERT INTO users VALUES(null, ?, ?, ?, ?, ?, ?, ?, ?, (SELECT max(idCart) FROM carts))';
            $st = $this->connect()->prepare($query);
            $st->execute($array);
            return $st;
        }

        public function getIdByEmail($email){
            $query = 'SELECT idUser FROM users WHERE email = ?';
            $st = $this->connect()->prepare($query);
            $st->execute([$email]);
            return $st->fetch()['idUser'];
        }

        public function getNameByEmail($email){
            $query = 'SELECT name FROM users WHERE email = ?';
            $st = $this->connect()->prepare($query);
            $st->execute([$email]);
            return $st->fetch()['name'];
        }

        public function getUserData($id){
            $query = 'SELECT name, surname, postcity, postcode, address, phone, email from users where idUser = ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id]);
            return $stmt->fetch();
        }

        public function editUser($array){
            if(count($array) == 9){
                $query = 'UPDATE users SET name = ?, surname = ?, postCity = ?, postCode = ?, address = ?, phone = ?, email = ?, password = ? WHERE idUser = ? ';
            }else{
                $query = 'UPDATE users SET name = ?, surname = ?, postcity = ?, postCode = ?, address = ?, phone = ?, email = ? WHERE idUser = ? ';
            }
            $st = $this->connect()->prepare($query);
            $st->execute($array);
            return ($st ? TRUE : FALSE);
        }
    }
    