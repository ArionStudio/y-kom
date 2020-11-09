<?php

    class Employee{
        public $surname;

        
        protected $name;
        private $age;
        private $height;
        private $job;

        public function changeName($name){
            $this->name = $name;
        }
        public function getName(){
            return $this->name;
        }
    }


    
    

