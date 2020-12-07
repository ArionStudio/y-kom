<?php

    class SlaveModel extends Database{
        public function getSlave($prem =  "%"){
            $query = 'SELECT * from employees NATURAL JOIN permissions where idPrem LIKE ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$prem]);
            return $stmt->fetchAll();
        }
        
        public function addSlave($array){
            $query = 'INSERT INTO employees VALUES (null, ?, ?, ?, ?, ?)';//idEmloyee, idPrem, name, surname, email, password
            $st = $this->connect()->prepare($query);
            $st->execute($array);
            return ($st ? TRUE : FALSE);
        }

        public function delSlave($id){
            $query = 'DELETE from employees where idEmployee = ?';
            $st = $this->connect()->prepare($query);
            $st->execute([$id]);
            return ($st ? TRUE : FALSE);
        }

        public function getSlaveDataForEditForm($id){
            $query = 'SELECT * FROM employees where idEmployee = ?';
            $st = $this->connect()->prepare($query);
            $st->execute([$id]);
            $row = $st->fetch();
            return [$row['name'], $row['surname'], $row['email'], $row['idPrem']];
        }

        public function editSlave($array){
            if(count($array) == 6){
                $query = 'UPDATE employees SET name = ?, surname = ?, email = ?, password = ?, idPrem = ? WHERE idEmployee = ? ';
            }else{
                $query = 'UPDATE employees SET name = ?, surname = ?, email = ?, idPrem = ? WHERE idEmployee = ? ';
            }
            $st = $this->connect()->prepare($query);
            $st->execute($array);
            return ($st ? TRUE : FALSE);
        }
    }