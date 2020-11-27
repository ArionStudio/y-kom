<?php
    class UserModel extends Database{
        public function getUser(){

        }

        public function setUser(){

        }

        public function login($email){
            $query = 'SELECT password FROM users WHERE email = ?';
            $st = $this->connect()->prepare($query);
            $st->execute([$email]);
            return $st;
        }

        public function register($array = []){
            if(count($array) == 0) return false;
            $query = 'INSERT INTO users VALUES(null, ?, ?, ?, ?, ?, ?, ?, ?)';
            $st = $this->connect()->prepare($query);
            $st->execute($array);
            return $st;
        }

        public function getIdByEmail($email){
            $query = 'SELECT idUser FROM users WHERE email = ?';
            $st = $this->connect()->prepare($query);
            $st->execute($email);
            return $st->fetch();
        }

        public function getNameByEmail($email){
            $query = 'SELECT name FROM users WHERE email = ?';
            $st = $this->connect()->prepare($query);
            $st->execute($email);
            return $st->fetch();
        }
    }