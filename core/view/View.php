<?php
    class View{
        protected $pagePath = "";


        public function getHeader($admin = FALSE){
            if($admin){
                //require_once 'static/header.php';
            }else{
                require_once 'static/header.php';
            }
        }
        public function getLoginHeader($admin = FALSE){
            if($admin){
                //require_once 'static/header.php';
            }else{
                require_once 'static/login/header.php';
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
