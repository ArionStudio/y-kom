<?php
    class UserController{
        public function getUser(){

        }

        public function setUser(){

        }

        public function login(){
            
            return false;
        }

        public function register(){
            if(isset($_POST['email'])){
                $array = [
                    "name" => [$_POST['name'], '/^[A-Ż]{1}[a-ż]{2,19}$/'],
                    "surname" => [$_POST['surname'], '/^[A-Ż]{1}[a-ż]{2,19}$/'],
                    "postCity" => [$_POST['postCity'],'/^[A-Ż]{1}[a-ż]{2,24}$/'],
                    "postCode" => [$_POST['postCode'], '/^[0-9]{2}-[0-9]{3}$/'],
                    "address" => [$_POST['address'] , '/^[A-Ża-ż0-9 ]{2,40}$/'],
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
                    session_start();
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
                return true;
            }else{
                return false;
            }

        }
    }