<?php
spl_autoload_register('loadManager');

function loadManager($className){
    $notExist = FALSE;
    foreach ($GLOBALS['routes'] as $key => $path) {
        $fullPath = $path . $className . ".php";
        
        if(file_exists($fullPath)){
            require_once $fullPath;
            $notExist = TRUE;
        }
    }
    return $notExist;
}
