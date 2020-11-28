<?php
    class View{
        protected $pagePath = "";


        public function getHeader($admin = FALSE){
            if($admin){
                //require_once 'static/header.php';
            }else{
                require_once 'static/header.php';
                require_once('static/unlogged/header-top.php');

                require_once('static/menu.php');
            }
        }
        public function getLoginHeader($admin = FALSE){
            if($admin){
                //require_once 'static/header.php';
            }else{
                require_once 'static/header.php';
                require_once('static/logged/header-top.php');
                require_once('static/menu.php');
            }
        }
        public function getLogoHeader($admin = FALSE){
            if($admin){
                //require_once 'static/header.php';
            }else{
                require_once 'static/header.php';
                require_once('static/clear/header-top.php');
            }
        }
        public function getFooter($admin = FALSE){
            if($admin){
                require_once 'static/footer.php';
            }else{
                require_once 'static/footer.php';
            }
        }
    }
