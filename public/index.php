<?php
    require_once "../load.php";
    setcookie("test_cookie", "test", time() + 3600, '/');
    if(count($_COOKIE) > 0){
        setcookie("test_cookie", "", time() - 3600, '/');
    }else{
        exit;
    }
    function logIn(){
        return isset($_COOKIE['idOfUser']) && isset($_COOKIE["nameOfUser"]);
    }
    if($_SERVER['REQUEST_URI'] == "/" or isset($_GET['how'])){
        $page = new ShopController("content/home.php", logIn());
        require_once('content/home.php');
    }elseif($_SERVER['REQUEST_URI'] == "/admin/"){
        echo "witamy w adminie";

        //
    }elseif(isset($_GET['type'])){
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
        $fun = $_GET['fun'];
        switch($fun){
            case "logowanie":{
                $page = new ShopController('content/login.php', logIn());
                require_once('content/login.php');
                break;
            }
            case "rejestracja":{
                $page = new ShopController('content/register.php', logIn());
                require_once('content/register.php');
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
                $function = new UserController('content/login.php', logIn());
                if($function->login()){
                    header("Location: /");
                }else{
                    header("Location: /f/logowanie/");
                }
                break;
            }
            case "rejestracja":{
                $function = new UserController('content/register.php', logIn());
                if($function->register()){
                    header("Location: /");
                }else{
                    header("Location: /f/rejestracja/");
                }
                break;
            }
            default:{
                break;
            }
        }
    }

    