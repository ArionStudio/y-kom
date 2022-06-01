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
            //TODO: check Time
            $query = 'INSERT INTO employeelogintime(idEmployee, IP, Time) VALUES (?, ?, now())'; //id, ip
            $st = $this->connect()->prepare($query);
            $st->execute([$id, $_SERVER['REMOTE_ADDR']]);
            return $st;           
        }

        public function getLoginRegister($how){//employeelogintime idLogged, idEmployee, Time, IP
            if(empty($how)){
                $query = 'SELECT idLogged, CONCAT(name, " ", surname) as emp, Time, IP from employeelogintime natural join employees ORDER BY idLogged DESC LIMIT 10';
            }elseif($how == "X"){
                $query = 'SELECT idLogged, CONCAT(name, " ", surname) as emp, Time, IP from employeelogintime natural join employees ORDER BY idLogged DESC';
            }else{
                $query = 'SELECT idLogged, CONCAT(name, " ", surname) as emp, Time, IP from employeelogintime natural join employees ORDER BY idLogged DESC LIMIT ' .$how;

            }
            $st = $this->connect()->prepare($query);
            $st->execute();
            return $st->fetchAll();
        }

        public function getActions($how = FALSE){//employeelogintime idLogged, idEmployee, Time, IP
            if(empty($how)){
                $query = 'SELECT idAction as idLogged, CONCAT(name, " ", surname) as emp, Time, Description as IP from actions natural join employees ORDER BY idAction DESC LIMIT 10';
            }elseif($how == "X"){
                $query = 'SELECT idAction as idLogged, CONCAT(name, " ", surname) as emp, Time, Description as IP from actions natural join employees ORDER BY idAction DESC';
            }else{
                $query = 'SELECT idAction as idLogged, CONCAT(name, " ", surname) as emp, Time, Description as IP from actions natural join employees ORDER BY idAction DESC LIMIT ' . intval($how);

            }
            $st = $this->connect()->prepare($query);
            $st->execute();
            return $st->fetchAll();
        }

    }