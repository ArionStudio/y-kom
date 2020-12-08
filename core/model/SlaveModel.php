<?php

    class SlaveModel extends Database{
        public function getSlave($prem =  "%"){
            $query = 'SELECT * from employees NATURAL JOIN permissions where idPrem LIKE ? AND archive = 0';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$prem]);
            return $stmt->fetchAll();
        }
        
        public function addSlave($array){
            $query = 'INSERT INTO employees(archive, name, surname, email, password, idPrem) VALUES (0, ?, ?, ?, ?, ?)';//idEmloyee, idPrem, archive, name, surname, email, password
            $st = $this->connect()->prepare($query);
            $st->execute($array);
            $this->addNewRegisterAction($_SESSION['LoggedSlaveData']['id'], "Dodanie nowego użytkownika  name:{$array[0]}");
            return ($st ? TRUE : FALSE);
        }

       

        public function delSlave($id){
            $query = 'UPDATE Employees SET archive = 1 WHERE idEmployee = ?';
            $st = $this->connect()->prepare($query);
            $st->execute([$id]);
            $this->addNewRegisterAction($_SESSION['LoggedSlaveData']['id'], "Usuwanie użytkownika o id: {$id}");
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
            $id = (isset($array[5]) ? $array[5] : $array[4]);
            $this->addNewRegisterAction($_SESSION['LoggedSlaveData']['id'], "Edycja danych użytkownika {$id}");
            return ($st ? TRUE : FALSE);
        }

        public function addNewRegisterAction($id, $com){
            $query = 'INSERT INTO actions(idEmployee, description, time) VALUES (?, ?, null)';
            $st = $this->connect()->prepare($query);
            $st->execute([$id, $com]);
            return ($st ? TRUE : FALSE);
        }
    }