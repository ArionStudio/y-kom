<?php

class Database{
    /* Heroku remote server */
    //"mysql://b7bed490c4e82e:632bffd9@eu-cdbr-west-02.cleardb.net/heroku_b826439da56d6ea?reconnect=true"
    private $dbh = "eu-cdbr-west-02.cleardb.net";
    private $user = "b7bed490c4e82e";
    private $password = "632bffd9";

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

