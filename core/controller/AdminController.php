<?php
class AdminController{
        function find(){
            ///
            if(isset($_GET['fun'])){
                switch($_GET['fun']){
                    case "login":{
                        if(isset($_SESSION['LoggedSlaveData'])) header("Location: /admin/");
                        $this->login();
                        unset($_POST['email'], $_POST['password']);
                        header("Location: /admin/");
                        break;
                    }
                    case "logout":{
                        if(!isset($_SESSION['LoggedSlaveData'])) header("Location: /admin/");//
                        unset($_SESSION['LoggedSlaveData']);
                        header("Location: /admin/");
                        break;
                    }
                }
            }elseif(isset($_GET['page'])){
                // switch($_GET['page']){
                //     case ""
                // }
            }else{
                if(isset($_SESSION['LoggedSlaveData'])){
                    $this->homePage();
                }else{
                    $this->loginPage();
                }
            }

        }


        
        function menuContent(){
            require_once('static/menu.php');
        }
        function loginPage(){
            require_once('static/header.php');
            require_once('content/login.php');
        }

        function register(){
            $aM = new AdminModel();
            $aV = new AdminView();
            $aV->showRegisterAll($aM->getLoginRegister());
        }
        public function homePage(){
            require_once('static/header.php');
            $this->menuContent();
            $aC = new AdminController();
            require_once('content/home.php');
            require_once('static/footer.php');
        }

        public function login(){
            $admin = new AdminModel(); 
            $email = $_POST['email'];
            $password = $_POST['password'];
            if($stmt = $admin->login($email)){
                if(!$row = $stmt->fetch()){ //jeżeli nie znalazło żadnego urzytkownika
                    $this->loginFail(
                        $email, $password, "Błędny email lub hasło!!!"
                    );
                    return false;
                }
                elseif(password_verify($password, $row['password'])){ //jeżeli hasło się zgadza
                    $this->loginSuccess($admin->getIdByEmail($email), $admin->getNameByEmail($email));
                    $admin->registerLoginAction($admin->getIdByEmail($email));
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
        public function loginFail($email, $password, $info){
            $_SESSION['loginData'] = array();
            array_push($_SESSION['loginData'], $email);
            array_push($_SESSION['loginData'], $password);
            array_push($_SESSION['loginData'], $info);
        }
        public function loginSuccess($id, $name){
            $_SESSION['LoggedSlaveData'] = array();
            $_SESSION['LoggedSlaveData']['id'] = $id;
            $_SESSION['LoggedSlaveData']['name'] = $name;
        }
    }