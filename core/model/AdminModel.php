<?php
    class AdminModel extends Database{
        public function login($email){
            $query = 'SELECT password FROM employees WHERE email = ?';
            $st = $this->connect()->prepare($query);
            $st->execute([$email]);
            return $st;
        }
        public function getIdByEmail($email){
            $query = 'SELECT idEmployee FROM employees WHERE email = ?';
            $st = $this->connect()->prepare($query);
            $st->execute([$email]);
            return $st->fetch()['idEmployee'];
        }
        public function getNameByEmail($email){
            $query = 'SELECT name FROM employees WHERE email = ?';
            $st = $this->connect()->prepare($query);
            $st->execute([$email]);
            return $st->fetch()['name'];
        }
        public function getPremByEmail($email){
            $query = 'SELECT idPrem FROM employees WHERE email = ?';
            $st = $this->connect()->prepare($query);
            $st->execute([$email]);
            return $st->fetch()['idPrem'];
        }

        public function registerLoginAction($id){
            $query = 'INSERT INTO employeelogintime(idEmployee, IP) VALUES (?, ?)'; //id, ip
            $st = $this->connect()->prepare($query);
            $st->execute([$id, $_SERVER['REMOTE_ADDR']]);
            return $st;           
        }

        public function getLoginRegister(){//employeelogintime idLogged, idEmployee, Time, IP
            $query = 'SELECT idLogged, CONCAT(name, " ", surname) as emp, Time, IP from employeelogintime natural join employees ORDER BY idLogged DESC LIMIT 10';
            $st = $this->connect()->prepare($query);
            $st->execute();
            return $st->fetchAll();
        }

        public function getActions(){//employeelogintime idLogged, idEmployee, Time, IP
            $query = 'SELECT idAction as idLogged, CONCAT(name, " ", surname) as emp, Time, Description as IP from actions natural join employees ORDER BY idAction DESC LIMIT 10';
            $st = $this->connect()->prepare($query);
            $st->execute();
            return $st->fetchAll();
        }

    }