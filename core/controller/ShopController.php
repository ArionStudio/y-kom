<?php
    class ShopController extends Controller{
        private $headerType;
        function logIn(){
            if(isset($_SESSION['loggedUserData'])){
                return "logged";
            }else{
                return "unlogged";
            }
        }
        function saveLastOpenPage(){
            $_SESSION['lastOpenPage'] = $_SERVER['REQUEST_URI'];
        }
        public function find(){
            
            
            if($_SERVER['REQUEST_URI'] == "/" or isset($_GET['how'])){
                $this->saveLastOpenPage();
                $page = new ShopController();
                require_once('content/home.php');
            }elseif(isset($_GET['type'])){

                $this->saveLastOpenPage();
                $path = $GLOBALS['shopRoutes']["type/" . $_GET['type']];
                $page = new ShopController();
                if(file_exists($path)){
                    require_once($path);
                }else{
                    require_once('content/home.php');
                }

            }elseif(isset($_GET['fun'])){
                $this->saveLastOpenPage();
                $path = $GLOBALS['shopRoutes']["fun/" . $_GET['fun']];
                
                if($_GET['fun'] == "zamowienie" && empty($_GET['id'])){
                    header("Location: /");
                    exit;
                }
                if(
                    $_GET['fun'] == "logowanie" ||
                    $_GET['fun'] == "rejestracja"
                    ){
                        $page = new ShopController("clear");
                }else{
                    $page = new ShopController();
                }
                if(file_exists($path)){
                    require_once($path);
                }else{
                    header("Location: /");
                    exit;
                }
            }elseif(isset($_GET['special'])){
                $path = $GLOBALS['shopRoutes']["special/" . $_GET['special']];
                $uC = new UserController();
                if(!isset($path)){
                    header("Location: /");
                    exit;
                }
                switch($_GET['special']){
                    case "logowanie":{
                        header("Location: " . $path[$uC->login()]);
                        break;
                    }
                    case "rejestracja":{
                        header("Location: " . $path[$uC->register()]);
                        break;
                    }
                    case "logout":{
                        unset($_SESSION['loggedUserData']);
                        header("Location: /");
                        break;
                    }
                    case "addToCart":{
                        if(isset($_GET['id'])){
                            $this->addToCart();
                            unset($_GET['id']);	
                        }
                        
                        header("Location: " . $_SESSION['lastOpenPage']);
                        break;
                    }
                    case "delFromCart":{
                        if(isset($_GET['id'])){
                            $this->delFromCart();
                        }
                        header("Location: /f/koszyk/");
                        break;
                    }
                    case "orderAdd":{
                        if($this->orderAdd()){
                            header("Location: /f/koszyk/");
                            $_SESSION['orderCompeate'] = "Zamówienie zrealizowane";
                        }else{
                            header("Location: /f/order/");
                        }
                        break;
                    }
                    case "userEdit":{
                        if(isset($_SESSION['loggedUserData']['id'])){
                            $uC = new UserController();
                            if($uC->editUser($_SESSION['loggedUserData']['id'])){
                                $_SESSION['editInfo'] = "Udało się zmienić dane.";
                            }else{
                                $_SESSION['editInfo'] = "Nie udało się zmienić danych sprawdź czy nie ma błędów.";
                            }
                            header("Location: /f/moje-konto/");
                        }else{
                            header("Location: /");
                        }
                        break;
                    }

                }
            }
        }
        
        public function __construct($headerType = FALSE){
            if(!$headerType) $headerType = $this->logIn();
            $this->model = new CategoryModel();
            $this->view = new ShopView();
            $this->uC = new UserController();
            $this->headerType = $headerType;
        }
        
        public function addToCart(){
            if(isset($_SESSION['loggedUserData'])){
                $cM = new CartModel();
                $cM->addToCart($_SESSION['loggedUserData']['id'], $_GET['id']);
            }else{
                if(isset($_SESSION['cartUnloggedUser'])){
                    $flag = TRUE;
                    foreach ($_SESSION['cartUnloggedUser'] as $key => &$value) {
                        echo $_GET['id'];
                        echo $value[0];
                        echo "<br/>";
                        if($value[0] == $_GET['id']){
                            if($value[1] < 10){
                                $value[1]++;
                            }
                            $flag=FALSE;
                            echo $value[0];
                        }elseif($value[0] . '-' == $_GET['id']){
                            if($value[1] > 1){
                                $value[1]--;
                            }
                            $flag=FALSE;
                        }
                    }
                    echo "<br/>";
                    if($flag){
                        array_push($_SESSION['cartUnloggedUser'], [$_GET['id'], 1]);
                    }
                }else{
                    $_SESSION['cartUnloggedUser'] = array();
                    array_push($_SESSION['cartUnloggedUser'], [$_GET['id'], 1]);
                    header("Location: " . $_SESSION['lastOpenPage']);
                }
            }
        }

        public function delFromCart(){
            if(isset($_SESSION['loggedUserData'])){
                $cM = new CartModel();
                $cM->delFromCart($_SESSION['loggedUserData']['id'], $_GET['id']);
            }else{
                if(isset($_SESSION['cartUnloggedUser'])){
                    $id = -1;
                    foreach ($_SESSION['cartUnloggedUser'] as $key => $value) {
                        if($value[0] == $_GET['id']){
                            $id++;
                            break;
                        }else{
                            $id++;
                        }
                    }
                    if($id == -1) return;
                    if($id == 0) array_shift($_SESSION['cartUnloggedUser']);
                    if(!count($_SESSION['cartUnloggedUser'])){
                        unset($_SESSION['cartUnloggedUser'][$id]);
                    }
                }
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


        public function orderAdd(){
            if(isset($_POST['email'])){
                $array = [
                    "name" => [$_POST['name'], '/^[A-Ż]{1}[a-ż]{2,19}$/'],
                    "surname" => [$_POST['surname'], '/^[A-Ż]{1}[a-ż]{2,19}$/'],
                    "postCity" => [$_POST['postCity'],'/^[A-Ż]{1}[a-ż]{2,24}$/'],
                    "postCode" => [$_POST['postCode'], '/^[0-9]{2}-[0-9]{3}$/'],
                    "address" => [$_POST['address'] , '/^[A-Ża-ż0-9 ]{2,40}$/'],
                    "phone" => [$_POST['phone'], '/^[0-9]{9}$/'],
                    "email" => [$_POST['email'], '/^[A-Za-z0-9.-_]{3,30}@[a-z0-9]{1,20}.[a-z]{1,4}$/']
                ];    
            }else{
                return FALSE;
            }
            $newArray = array();
            foreach($array as $key => $value){
                if(!preg_match($value[1], $value[0])){
                    $_SESSION['orderData'] = array();
                    foreach ($array as $key => $value) {
                        array_push($_SESSION['orderData'],$value[0]);
                    }
                    return false;
                }else{
                    array_push($newArray,$value[0]);
                }
            }
            if(isset($_SESSION['loggedUserData']['id'])){
                $oM = new OrderModel();

                $cartId = $oM->getIdCartFromUser($_SESSION['loggedUserData']['id']);
                $newArray = array_merge([$_SESSION['loggedUserData']['id'] , $cartId], $newArray);
                
                if($oM->addOrder($newArray)){
                    $oM->addNewCurrentCart($_SESSION['loggedUserData']['id']);
                    return TRUE;
                }else{
                    return FALSE;
                }
            }elseif(!empty($_SESSION['cartUnloggedUser'])){
                $summaryPrice = 0;
                foreach ($_SESSION['cartUnloggedUser'] as $key => $value) {
                    $summaryPrice += $this->getProductPrice($value[0]) * $value[1];
                }
                

                
                $oM = new OrderModel();

                $cartId = $oM->addCartUnllogged($_SESSION['cartUnloggedUser']);
                $newArray = array_merge([null , $cartId], $newArray);
                if($oM->addOrder($newArray)){
                    
                    unset($_SESSION['cartUnloggedUser']);
                    return TRUE;
                }else{
                    return FALSE;
                }
            }//		idUser	idCart		name	surname	postCity	postCode	adress	phone	email
            else{
                return;
            }
        }

        public function showUserOrders(){
            $oM = new OrderModel();
            $array = $oM->getUserOrders($_SESSION['loggedUserData']['id']);
            $oV = new OrderView();
            $oV->showOrders($array);
        }

        public function showUserOrder($id){
            $oM = new OrderModel();
            $array = $oM->getUserOrder($_SESSION['loggedUserData']['id'], $id);
            $oV = new OrderView();
            $oV->showOrderPage($array["DATA"], $array["USER_DATA"], $array["USER_ADDRESS"]);
        }
    }