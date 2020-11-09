<?php
    spl_autoload_register('loadController');
    spl_autoload_register('loadModel');

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