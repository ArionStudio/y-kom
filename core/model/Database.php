<?php

class Database{
    private $dbh = "mysql:dbname=ykom;host=127.0.0.1;port=3306";
    private $user = "root";
    private $password = "";

    function connect(){
        $dbh = $this->dbh;
        $user = $this->user;
        $password = $this->password;
        try{
            $pdo = new PDO($dbh, $user, $password, array(
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_EMULATE_PREPARES => false,
            ));
            $pdo->exec("SET NAMES binary");
        }catch(PDOException $e){
            $pdo = null;
            session_start();
            $_SESSION['error'] = [$e->getCode(), $e->getMessage()];
            header("Location: dberror.php");
            exit;
        }
        return $pdo;
    }
    
    
}

