<?php
    class View{
        protected $pagePath = "";

        public function __construct($pagePath){
            $this->pagePath = $pagePath;
        }
        public function getView($var = FALSE){
            $GLOBALS['var'] = $var;
            $this->getHeader();
            require_once $this->pagePath;
            $this->getFooter();
        }
        public function getHeader($admin = FALSE){
            if($admin){
                require_once 'static/header.php';
            }else{
                require_once 'static/header.php';
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
