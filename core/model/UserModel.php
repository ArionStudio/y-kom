<?php
    class UserModel extends Database{
        public function getUser(){

        }

        public function setUser(){

        }

        public function login(){
            $query = 'SELECT password FROM users WHERE email = "' . $email . '"';
            $st = $pdo->prepare($query);
            $st->execute();
            $row = $st->fetch();
            if(password_verify($password, $row['password'])){
                echo "Dobre haslo";
            }else{
                echo "Zle haslo";
            }
            return false;
        }

        public function register($array = []){
            if(count($array) == 0) return false;
            $query = 'INSERT INTO users VALUES(null, ?, ?, ?, ?, ?, ?, ?, ?)';
            $st = $this->connect()->prepare($query);
            $st->execute($array);
            return $st;
        }


    }