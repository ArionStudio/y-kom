<?php
    class ShopController extends Controller{
        public function __construct($path){
            if(file_exists($path)){
                $this->model = new CategoryModel();
				$this->view = new ShopView($path);
            }else{
                echo "są fale";
                exit;
            }
        }

        public function getHeader(){
            $_POST['categories'] = $this->model->getCategories();
            $this->view->getHeader();
        }

        
        public function showBestsellers($count){
			$pM = new ProductModel();
			$pV = new ProductView();
			$pV->showProductsTiles($pM->Bestsellers($count), $count);
        }

        public function getCategoryProducts($idCategory, $count){
			$pM = new ProductModel();
            $pV = new ProductView();
            
			$pV->showProductsTiles($pM->getCategoryProducts($idCategory, $count), $count);
        }

    }