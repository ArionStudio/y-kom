<?php
    class ShopController extends Controller{
        private $headerType;
        public function __construct($path, $headerType = FALSE){
            if(file_exists($path)){
                $this->model = new CategoryModel();
                $this->view = new ShopView($path);
                $this->headerType = $headerType;
            }else{
                echo "są fale";
                exit;
            }
        }

        public function getHeader(){
            $_POST['categories'] = $this->model->getCategories();
            if($this->headerType == "logged"){
                $this->view->getLoginHeader();
            }elseif($this->headerType == "unlogged"){
                $this->view->getHeader();
            }elseif($this->headerType == "clear"){
                $this->view->getLogoHeader();
            }else{

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
        public function showProductCart($id){
            $pM = new CartModel();
            $pV = new ProductView();

            $productsData = $pM->getProduct($id);
            $pV->showProductsFromQueryMany($productsData);
        }
        public function showProductCartUnlogged($id, $how){
            $pM = new ProductModel();
            $pV = new ProductView();

            $productData = $pM->getProductData($id);
            $pV->showProductsFromQuery($productData, $how);

        }

        public function sumaryPriceCart($id){
            $cM = new CartModel();
            return $cM->sumaryPriceCart($id);
        }

        public function getProductPrice($id){
            $pM = new ProductModel();
            return $pM->getPrice($id);
        }

    }