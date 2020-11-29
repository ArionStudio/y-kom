<?php
    $routes = [
        //path from public/index.php to folderFile
        "Model" => "../core/model/", //model classes routes
        "Controller" => "../core/controller/", //controllers classes routes
        "View" => "../core/view/", //view of admin panel classes routes
    ];
    if(isset($adminPanelOpen)){
        $routes = [
            "Model" => "../../core/model/", //model classes routes FOR ADMIN
            "Controller" => "../../core/controller/", //controllers classes routes FOR ADMIN
            "View" => "../../core/view/", //view of admin panel classes routes FOR ADMIN
        ];
    }