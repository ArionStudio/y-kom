<?php
    spl_autoload_register('loadController');
    spl_autoload_register('loadModel');
    spl_autoload_register('loadViewAdmin');
    spl_autoload_register('loadViewShop');

    function loadController($className){
        $path = "core/controller/";
        $endPath = ".php";
        $fullPath = $path . $className .$endPath;
        if(file_exists($fullPath)){
            require_once $fullPath;
        }else{
            return FALSE;
        }
        
    }
    function loadModel($className){
        $path = "core/model/";
        $endPath = ".php";
        $fullPath = $path . $className .$endPath;
        if(file_exists($fullPath)){
            require_once $fullPath;
        }else{
            return FALSE;
        }
        
    }
    function loadViewAdmin($className){
        $path = "core/view/admin/";
        $endPath = ".php";
        $fullPath = $path . $className .$endPath;
        if(file_exists($fullPath)){
            require_once $fullPath;
        }else{
            return FALSE;
        }   
    }
    function loadViewShop($className){
        $path = "core/view/shop/";
        $endPath = ".php";
        $fullPath = $path . $className .$endPath;
        if(file_exists($fullPath)){
            require_once $fullPath;
        }else{
            return FALSE;
        }   
    }