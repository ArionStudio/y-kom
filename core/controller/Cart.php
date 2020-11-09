<?php

    class Cart{
        public $name;
        private $code;

        public function setCode($code){
            if(preg_match('/^[0-9]{3,10}$/', $code)){
                $this->code = $code;
            }else{
                echo "Error";
                exit;
            }
        }
        public function getCode(){
            return $this->code;
        }

        function __construct($name, $code){
            $this->name = $name;
            $this->code = $code;
        }
    }

    