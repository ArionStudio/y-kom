<?php
    if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
    }

    // Scieżka do modelu
    if ( ! defined( 'MODEL' ) ) {
        define( 'MODEL', ABSPATH . 'core/model/' );
    }

    // Scieżka do controlerów
    if ( ! defined( 'CONTROLLER' ) ) {
        define( 'CONTROLLER', ABSPATH . 'core/controller/' ); 
    }

    // Scieżka do widoku

    if( ! defined('VIEW')){
        define( 'VIEW', ABSPATH . 'core/view/' );
    }

    // Scieżka do routes
    if ( ! defined( 'ROUTES' ) ) {
        define( 'ROUTES', ABSPATH . 'core/routes/' );
    }


    
