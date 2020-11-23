<?php
    class Controller{
        protected $view;
        protected $model;

        public function getHeader(){
            $this->view->getHeader();
        }
        public function getFooter(){
            $this->view->getFooter();
        }
    }

    