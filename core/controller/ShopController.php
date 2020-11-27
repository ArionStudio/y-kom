<?php
    class ShopController extends Controller{
        private $logIn;
        public function __construct($path, $logIn){
            if(file_exists($path)){
                $this->model = new CategoryModel();
                $this->view = new ShopView($path);
                $this->logIn = $logIn;
            }else{
                echo "są fale";
                exit;
            }
        }

        public function getHeader(){
            $_POST['categories'] = $this->model->getCategories();
            if($this->logIn){
                $this->view->getLoginHeader();
            }else{
                $this->view->getHeader();
            }
        }

        
        public function showBestsellers($count){
			$pM = new ProductModel();
			$pV = new ProductView();
			$pV->showProductsTiles($pM->Bestsellers($count), $count);
        }

        public function getCategoryProducts($idCategory, $count){
			$pM = new ProductModel();
            $pV = new ProductView();
            
            $productsData = $pM->getCategoryProducts($idCategory, $count);

			$pV->showProductsTiles($productsData, $count);
        }

        public function showProductPage($id){
            $pM = new ProductModel();
            $pV = new ProductView();

            $productData = $pM->getProductData($id);
            $pV->showProductPage($productData);

        }

    }