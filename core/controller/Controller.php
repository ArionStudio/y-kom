<?php
    class Controller{
        protected $view = "1";
        protected $model = "1";

        public function __construct($path){
            if(file_exists($path)){
                $this->view = new View($path);
            }else{
                return null;
            }
        }
    }

    