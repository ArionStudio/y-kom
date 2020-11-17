<?php
    class ShopController extends Controller{
        public function __construct($path){
            if(file_exists($path)){
                $this->model = new CategoryModel();
                $this->view = new ShopView($path);
            }else{
                echo "nie ma fal";
                exit;
            }
        }

        public function generateView(){
            $var = array();
            $var['header']['categories'] = $this->model->getCategories();
            $this->view->getView($var);
        }
    }