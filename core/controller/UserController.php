<?php
    class UserController{

        public function loginFail($email, $password, $info){
            session_start();
            $_SESSION['loginData'] = array();
            array_push($_SESSION['loginData'], $email);
            array_push($_SESSION['loginData'], $password);
            array_push($_SESSION['loginData'], $info);
        }
        public function loginSuccess($id, $name){
            $_SESSION['loggedUserData'] = array();
            $_SESSION['loggedUserData']['id'] = $id;
            $_SESSION['loggedUserData']['name'] = $name;
        }

        public function login(){
            $usr = new UserModel(); 
            $email = $_POST['email'];
            $password = $_POST['password'];
            if($stmt = $usr->login($email)){
                if(!$row = $stmt->fetch()){ //jeżeli nie znalazło żadnego urzytkownika
                    $this->loginFail(
                        $email, $password, "Błędny email lub hasło!!!"
                    );
                    return false;
                }
                elseif(password_verify($password, $row['password'])){ //jeżeli hasło się zgadza
                    $this->loginSuccess($usr->getIdByEmail($email), $usr->getNameByEmail($email));
                    return true;
                }else{ //jeżeli nie
                    $this->loginFail(
                        $email, $password, "Błędny email lub hasło!!!"
                    );
                    return false;
                }
            }else{
                $this->loginFail(
                    $email, $password, "Problem z połączeniem spróbuj pózniej!!!"
                );
                return false;
            }
        }

        public function register(){
            if(isset($_POST['email'])){
                $array = [
                    "name" => [$_POST['name'], '/^[A-Ż]{1}[a-ż]{2,19}$/'],
                    "surname" => [$_POST['surname'], '/^[A-Ż]{1}[a-ż]{2,29}$/'],
                    "postCity" => [$_POST['postCity'],'/^[A-Ż]{1}[a-ż]{2,39}$/'],
                    "postCode" => [$_POST['postCode'], '/^[0-9]{2}-[0-9]{3}$/'],
                    "address" => [$_POST['address'] , '/^[A-Ża-ż0-9 ]{2,100}$/'],
                    "phone" => [$_POST['phone'], '/^[0-9]{9}$/'],
                    "email" => [$_POST['email'], '/^[A-Za-z0-9.-_]{3,30}@[a-z0-9]{1,20}.[a-z]{1,4}$/'],
                    "password" => [$_POST['password'], '/^[a-zA-Z0-9]{6,24}$/']
                ];    
            }else{
                return FALSE;
            }
            $newArray = array();
            foreach($array as $key => $value){
                if(!preg_match($value[1], $value[0])){
                    $_SESSION['registerData'] = array();
                    foreach ($array as $key => $value) {
                        array_push($_SESSION['registerData'],$value[0]);
                    }
                    return false;
                }else{
                    array_push($newArray,$value[0]);
                }
            }
        
            $newArray[7] = password_hash($array["password"][0], PASSWORD_DEFAULT);

            $usr = new UserModel();
            if($usr->register($newArray)){
                $this->mail();
                $this->loginSuccess(
                    $newArray[0], 
                    $usr->getNameByEmail($newArray[6])
                );
                return true;
            }else{
                return false;
            }

        }
        public function mail($email = ""){
            $od  = "From: leerock.zero@gmail.com \r\n";
            $od .= 'MIME-Version: 1.0'."\r\n";
            $od .= 'Content-type: text/html; charset=iso-8859-2'."\r\n";
            $adres = "leerock.zero@gmail.com";
            $tytul = "Potwierdzenie rejestracji konta w sklepie y-kom";
            $wiadomosc = "Cześć";

            // użycie funkcji mail
            
            $success = mail($adres, $tytul, $wiadomosc, $od);
            
        }

        public function getUserData(){
            $uM = new UserModel();
            return $uM->getUserData($_SESSION['loggedUserData']['id']);  
        }

        public function editUser($id){
            if(isset($_POST['email'])){
                $array = [
                    "name" => [$_POST['name'], '/^[A-Ż]{1}[a-ż]{2,19}$/'],
                    "surname" => [$_POST['surname'], '/^[A-Ż]{1}[a-ż]{2,29}$/'],
                    "postCity" => [$_POST['postCity'],'/^[A-Ż]{1}[a-ż]{2,39}$/'],
                    "postCode" => [$_POST['postCode'], '/^[0-9]{2}-[0-9]{3}$/'],
                    "address" => [$_POST['address'] , '/^[A-Ża-ż0-9 ]{2,100}$/'],
                    "phone" => [$_POST['phone'], '/^[0-9]{9}$/'],
                    "email" => [$_POST['email'], '/^[A-Za-z0-9.-_]{3,30}@[a-z0-9]{1,20}.[a-z]{1,4}$/'],
                    "password" => [$_POST['password'], '/^[a-zA-Z0-9]{6,24}$/']
                ];    
            }else{
                return FALSE;
            }
            if(empty($_POST['password'])){
                array_splice($array, 7, 1);
            }

            $newArray = array();
            foreach($array as $key => $value){
                if(!preg_match($value[1], $value[0])){
                    $_SESSION['userData'] = array();
                    foreach ($array as $key => $value) {
                        array_push($_SESSION['userData'],$value[0]);
                    }
                    return false;
                }else{
                    array_push($newArray,$value[0]);
                }
            }
            array_push($newArray, $id);
            if(!empty($_POST['password'])){
                $newArray[7] = password_hash($array["password"][0], PASSWORD_DEFAULT);
            }
            $uM = new UserModel();
            if($uM->editUser($newArray)){
                return true;
            }else{
                return false;
            }
    
        }
    }
