<?php
    require_once "../load.php";
    setcookie("test_cookie", "test", time() + 3600, '/');
    if(count($_COOKIE) > 0){
        setcookie("test_cookie", "", time() - 3600, '/');
    }else{
        exit;
    }
    
    function saveLastOpenPage(){
        $_SESSION['lastOpenPage'] = $_SERVER['REQUEST_URI'];
    }

    function logIn(){
        if(isset($_SESSION['loggedUserData'])){
            return "logged";
        }else{
            return "unlogged";
        }
    }

    
    if($_SERVER['REQUEST_URI'] == "/" or isset($_GET['how'])){
        saveLastOpenPage();
        $page = new ShopController("content/home.php", logIn());
        require_once('content/home.php');
    }elseif($_SERVER['REQUEST_URI'] == "/admin/"){
        echo "witamy w adminie";

        //
    }elseif(isset($_GET['type'])){
        saveLastOpenPage();
        $type = $_GET['type'];
        switch($type){
            case "c":{
                $page = new ShopController('content/category.php', logIn());
                require_once('content/category.php');
                break;
            }
            case "p":{
                $page = new ShopController('content/product.php', logIn());
                require_once('content/product.php');
                break;
            }
            default:{
                break;
            }
        }
    }elseif(isset($_GET['fun'])){
        saveLastOpenPage();
        $fun = $_GET['fun'];
        switch($fun){
            case "logowanie":{
                $page = new ShopController('content/login.php', "clear");
                require_once('content/login.php');
                break;
            }
            case "rejestracja":{
                $page = new ShopController('content/register.php', "clear");
                require_once('content/register.php');
                break;
            }
            case "koszyk":{
                $page = new ShopController('content/cart.php', logIn());
                require_once('content/cart.php');
                break;
            }
            
            default:{
                break;
            }
        }
    }elseif(isset($_GET['special'])){
        $special = $_GET['special'];
        switch($special){
            case "logowanie":{
                $function = new UserController('content/login.php');
                if($function->login()){
                    header("Location: /");
                }else{
                    header("Location: /f/logowanie/");
                }
                break;
            }
            case "rejestracja":{
                $function = new UserController('content/register.php');
                if($function->register()){
                    header("Location: /");
                }else{
                    header("Location: /f/rejestracja/");
                }
                break;
            }
            case "logout":{
                unset($_SESSION['loggedUserData']);
                header("Location: /");
                break;
            }
                    if(isset($_SESSION['loggedUserData'])){
                        $cM = new CartModel();
                        $cM->addToCart($_SESSION['loggedUserData']['id'], $_GET['id']);
                    }else{
                        if(isset($_SESSION['cartUnloggedUser'])){
                            $flag = TRUE;
                            foreach ($_SESSION['cartUnloggedUser'] as $key => &$value) {
                                echo $_GET['id'];
                                echo $value[0];
                                echo "<br/>";
                                if($value[0] == $_GET['id']){
                                    if($value[1] < 10){
                                        $value[1]++;
                                    }
                                    $flag=FALSE;
                                    echo $value[0];
                                }elseif($value[0] . '-' == $_GET['id']){
                                    if($value[1] > 0){
                                        $value[1]--;
                                    }
                                    $flag=FALSE;
                                }
                            }
                            echo "<br/>";
                            if($flag){
                                array_push($_SESSION['cartUnloggedUser'], [$_GET['id'], 1]);
                            }
                        }else{
                            $_SESSION['cartUnloggedUser'] = array();
                            array_push($_SESSION['cartUnloggedUser'], [$_GET['id'], 1]);
                            header("Location: " . $_SESSION['lastOpenPage']);
                            break; 
                        }
                    }
                }
                unset($_GET['id']);
                header("Location: " . $_SESSION['lastOpenPage']);
                break;
            }
            case "delFromCart":{
                if(isset($_GET['id'])){
                    if(isset($_SESSION['loggedUserData'])){
                        $cM = new CartModel();
                        $cM->delFromCart($_SESSION['loggedUserData']['id'], $_GET['id']);
                    }else{
                        if(isset($_SESSION['cartUnloggedUser'])){
                            $id = -1;
                            foreach ($_SESSION['cartUnloggedUser'] as $key => $value) {
                                if($value[0] == $_GET['id']){
                                    $id++;
                                    break;
                                }else{
                                    $id++;
                                }
                            }
                            if($id == -1) break;
                            if($id == 0) array_shift($_SESSION['cartUnloggedUser']);
                            if(!count($_SESSION['cartUnloggedUser'])){
                                unset($_SESSION['cartUnloggedUser'][$id]);
                            }
                        }
                    }
                }
                header("Location: " . $_SESSION['lastOpenPage']);
                break;
            }
            default:{
                break;
            }
        }
    }

    