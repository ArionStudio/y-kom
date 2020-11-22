<?php
    require_once "../load.php";
    if($_SERVER['REQUEST_URI'] == "/"){
        $shopController = new ShopController('content/home.php');
        $shopController->generateView();
        $shopController->showBestsellers(10);
        if(isset($_GET['type'])){
            echo $_GET['type'] . " " . $_GET['id'];
        }
    }elseif($_SERVER['REQUEST_URI'] == "/admin/"){
        echo "witamy w adminie";
    }else{
        $lk = strtok($_SERVER['REQUEST_URI'], "/");
        
        switch($lk){
            case "c":{
                $catID = strtok("/");
                $proController = new ShopController('content/category.php', $catID);
                $proController->generateView();
                if(isset($_GET['type'])){
                    echo "Kategoria nr: " . $_GET['id'];
                }
            break;
            }
            case "p":{
                $shopController = new ShopController('content/product.php');
                $shopController->generateView();
                if(isset($_GET['type'])){
                    echo "Produkt nr: " . $_GET['id'];
                }
            break;
            }
        }

        
    }

    