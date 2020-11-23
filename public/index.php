<?php
    require_once "../load.php";
    if($_SERVER['REQUEST_URI'] == "/" or isset($_GET['how'])){
        $page = new ShopController("content/home.php");
        require_once('content/home.php');
        
    }elseif($_SERVER['REQUEST_URI'] == "/admin/"){
        echo "witamy w adminie";
    }elseif(isset($_GET['type'])){
        $type = $_GET['type'];
        switch($type){
            case "c":{
                $page = new ShopController('content/category.php');
                require_once('content/category.php');
                break;
            }
            case "p":{
                $page = new ShopController('content/product.php');
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
                $page = new ShopController('content/login.php');
                require_once('content/login.php');
                break;
            }
            case "rejestracja":{
                $page = new ShopController('content/register.php');
                require_once('content/register.php');
                break;
            }
            default:{
                break;
            }
        }
    }

    