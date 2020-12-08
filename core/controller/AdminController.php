<?php
    class AdminController{
        function find(){
            ///
            if(isset($_GET['fun'])){
                if(!isset($_SESSION['LoggedSlaveData']))  header("Location: /admin/");
                switch($_GET['fun']){
                    case "login":{
                        if(isset($_SESSION['LoggedSlaveData'])) header("Location: /admin/");
                        if($this->login()){
                            unset($_POST['email'], $_POST['password']);
                        }
                        header("Location: /admin/");
                        exit;
                    }
                    case "logout":{
                        if(!isset($_SESSION['LoggedSlaveData'])) header("Location: /admin/");
                        unset($_SESSION['LoggedSlaveData']);
                        header("Location: /admin/");
                        exit;
                    }
                    case "productAdd":{
                        $this->addNewProduct();
                        header("Location: /admin/page/product/");
                        exit;
                    }
                    case "productEdit":{
                        if(isset($_GET['id'])){
                            if($this->editProduct($_GET['id'])){
                                header("Location: /admin/page/productEdit/{$_GET['id']}/");
                                exit;
                            }else{
                                header("Location: /admin/page/product/");
                                exit;
                            }
                        }
                        
                        header("Location: /admin/page/product/");
                        break;
                    }
                    case "productDel":{
                        $this->delProduct($_GET['id']);
                        header("Location: /admin/page/product/");
                        exit;
                    }
                    case "delFoto":{
                        if(isset($_GET['id'])){
                            if(isset($_GET['idSecound'])){
                                //usuwanie zdjecia głownego
                                $this->delProductGalleryFoto($_GET['id'], $_GET['idSecound']);
                            }else{
                                //usuwanie zdjecia z galerii
                                $this->delProductMainFoto($_GET['id']);
                            }
                        }
                        header("Location: /admin/page/productEdit/{$_GET['id']}/");
                        exit;
                    }
                    case "recoverFromArchive": {
                        if(isset($_GET['id'])){
                            $pM = new ProductModel();
                            $pM->archiveAddToProduct($_GET['id']);
                        }
                        header("Location: /admin/page/archive/");
                        exit;
                    }
                    case "productEditQuantity": {
                        if(isset($_GET['id']) && !empty($_POST['quantity'])){
                            $pM = new ProductModel();
                            $pM->setProductQuantity($_GET['id'], $_POST['quantity']);
                        }
                        header("Location: /admin/page/warehouse/");
                        exit;
                    }
                    case "slaveAdd": {
                        $this->addSlave();
                        header("Location: /admin/page/slave/");
                        exit;
                    }
                    case "slaveDel": {
                        if(isset($_GET['id'])){
                            if($_SESSION['LoggedSlaveData']['id'] == $_GET['id']){
                                header("Location: /admin/page/slave/");
                                exit;
                            }
                            $sM = new SlaveModel();
                            $sM->delSlave($_GET['id']);
                        }
                        header("Location: /admin/page/slave/");
                        exit;
                    }
                    case "slaveEdit": {
                        if(isset(($_GET['id']))){
                            $this->editSlave($_GET['id']);
                        }
                        header("Location: /admin/page/slave/");
                        exit;
                    }
                    case "changeStatus": {
                        if(isset(($_GET['id']))){
                            $oM = new OrderModel();
                            $array = $oM->updateStatus($_POST['newStatus'], $_GET['id']);
                        }
                        header("Location: /admin/page/order/{$_GET['id']}/");
                        exit;
                    }
                }
            }elseif(isset($_GET['page'])){
                if(!isset($_SESSION['LoggedSlaveData']))  header("Location: /admin/");
                require_once('static/header.php');
                $this->menuContent();
                $aC = new AdminController();

                if($_SESSION['LoggedSlaveData']['permission'] == 1 && (
                    $_GET['page'] == "slave" ||
                    $_GET['page'] == "slaveAdd" ||
                    $_GET['page'] == "slaveEdit" ||
                    $_GET['page'] == "actions"
                )){
                    header("Location: /");
                }
                $adminPages = $GLOBALS['adminPages'];

                require_once($adminPages[$_GET['page']]);
                
                require_once('static/footer.php');
            }else{
                if(isset($_SESSION['LoggedSlaveData'])){
                    $this->homePage();
                }else{
                    $this->loginPage();
                }
            }

        }

        public function showOrders($id = "%"){
            $oM = new OrderModel();
            $oV= new OrderView();
            $oV->showOrders($oM->getOrders($id), TRUE);
        }

        public function showOrder($id, $admin = FALSE){
            $oM = new OrderModel();
            $array = $oM->getOrderAdmin($id);
            $oV = new OrderView();
            $oV->showOrderPage($array["DATA"], $array["USER_DATA"], $array["USER_ADDRESS"], $array['CART'], $admin);
        }


        function addSlave(){
            
            
            if(isset($_POST['email'])){
                $array = [
                    "name" => [$_POST['name'], '/^[A-Ż]{1}[a-ż]{2,29}$/'], //30
                    "surname" => [$_POST['surname'], '/^[A-Ż]{1}[a-ż]{2,19}$/'], //20
                    "email" => [$_POST['email'],'/^[A-Za-z0-9.-_]{3,30}@[a-z0-9]{1,20}.[a-z]{1,4}$/'], //30 +20 + 4 + @ + . // 56
                    "password" => [$_POST['password'], '/^[a-zA-Z0-9]{6,24}$/'], 
                    "perm" => [$_POST['permission'], '/^[1-2]{1}$/'], // 1
                ];    
            }else{
                return FALSE;
            }
            $newArray = array();
            foreach($array as $key => $value){
                if(!preg_match($value[1], $value[0])){
                    $_SESSION['slaveData'] = array();
                    foreach ($array as $key => $value) {
                        array_push($_SESSION['slaveData'],$value[0]);
                    }
                    return false;
                }else{
                    array_push($newArray,$value[0]);
                }
            }
            $newArray[3] = password_hash($array["password"][0], PASSWORD_DEFAULT);
            $sM = new SlaveModel();
            if($sM->addSlave($newArray)){
                return true;
            }else{
                return false;
            }
        }

        function editSlave($id){
            
            
            if(isset($_POST['email'])){
                $array = [
                    "name" => [$_POST['name'], '/^[A-Ż]{1}[a-ż]{2,19}$/'],
                    "surname" => [$_POST['surname'], '/^[A-Ż]{1}[a-ż]{2,19}$/'],
                    "email" => [$_POST['email'],'/^[A-Za-z0-9.-_]{3,30}@[a-z0-9]{1,20}.[a-z]{1,4}$/'],
                    "password" => [$_POST['password'], '/^[a-zA-Z0-9]{6,24}$/'],
                    "perm" => [$_POST['permission'], '/^[1-2]{1}$/'],
                ];    
            }else{
                return FALSE;
            }
            if(empty($_POST['password'])){
                array_splice($array, 3, 1);
            }

            $newArray = array();
            foreach($array as $key => $value){
                if(!preg_match($value[1], $value[0])){
                    $_SESSION['slaveData'] = array();
                    foreach ($array as $key => $value) {
                        array_push($_SESSION['slaveData'],$value[0]);
                    }
                    return false;
                }else{
                    array_push($newArray,$value[0]);
                }
            }
            array_push($newArray, $id);
            if(!empty($_POST['password'])){
                $newArray[3] = password_hash($array["password"][0], PASSWORD_DEFAULT);
            }
            $sM = new SlaveModel();
            if($sM->editSlave($newArray)){
                return true;
            }else{
                return false;
            }
        }
        public function getSlaveDataForEditForm($id){
            $sM = new SlaveModel();
            return $sM->getSlaveDataForEditForm($id);
            
        }
        function showAllProducts($idCat = "%"){
            $pM = new ProductModel();
            $pV = new ProductView();
            $array = $pM->getAllProduct($idCat);
            $pV->showAllProductsFromQuery($array);
        }

        function showAllArchiveProducts($idCat = "%"){
            $pM = new ProductModel();
            $pV = new ProductView();
            $array = $pM->archive($idCat);
            $pV->showAllArchiveProductsFromQuery($array);
        }

        function showAllWarehouseProducts($idCat = "%"){
            $pM = new ProductModel();
            $pV = new ProductView();
            $array = $pM->warehouse($idCat);
            $pV->showAllWarehouseProductsFromQuery($array);
        }
        
        function getProductDataForEditProduct($id){
            $pM = new ProductModel();
            return $pM->getProductDataForEditProduct($id);
        }
        function getGallery($id){
            $pM = new ProductModel();
            return $pM->getGallery($id);
        }

        function menuContent(){
            require_once('static/menu.php');
        }
        function loginPage(){
            require_once('static/header.php');
            require_once('content/login.php');
        }

        function getCategorySelectField(){
            $catM = new CategoryModel();
            return $catM->getCategories();
        }

        function register(){
            $aM = new AdminModel();
            $aV = new AdminView();
            $aV->showRegisterAll($aM->getLoginRegister());
        }
        public function homePage(){
            require_once('static/header.php');
            $this->menuContent();
            $aC = new AdminController();
            require_once('content/home.php');
            require_once('static/footer.php');
        }

        public function login(){
            $admin = new AdminModel(); 
            $email = $_POST['email'];
            $password = $_POST['password'];
            if($stmt = $admin->login($email)){
                if(!$row = $stmt->fetch()){ //jeżeli nie znalazło żadnego urzytkownika
                    $this->loginFail(
                        $email, $password, "Błędny email lub hasło!!!"
                    );
                    return false;
                }
                elseif(password_verify($password, $row['password'])){ //jeżeli hasło się zgadza
                    $this->loginSuccess($admin->getIdByEmail($email), $admin->getNameByEmail($email), $admin->getPremByEmail($email), $admin->getPremByEmail($email));
                    $admin->registerLoginAction($admin->getIdByEmail($email));
                    return true;
                }else{ //jeżeli nie
                    $this->loginFail(
                        $email, $password, "Błędny email lub hasło!!!"
                    );
                    return false;
                }
            }else{
                $this->loginFail(
                    $email, $password, "Problem z połączeniem spróbuj pózniej!!!"
                );
                return false;
            }
        }
        public function loginFail($email, $password, $info){
            $_SESSION['loginData'] = array();
            array_push($_SESSION['loginData'], $email);
            array_push($_SESSION['loginData'], $password);
            array_push($_SESSION['loginData'], $info);
        }
        public function loginSuccess($id, $name, $idPrem){
            $_SESSION['LoggedSlaveData'] = array();
            $_SESSION['LoggedSlaveData']['id'] = $id;
            $_SESSION['LoggedSlaveData']['name'] = $name;
            $_SESSION['LoggedSlaveData']['permission'] = $idPrem;
        }

        function addNewProduct(){
            // var_dump($_FILES['photoGallery']);
            // exit;
            
            $pM = new ProductModel();
            $pM->addProduct(//name, price, Quantity, Specification, category
                $_POST['name'],
                $_POST['price'],
                $_POST['quantity'],
                $_POST['specification'],
                $_POST['category']
            );

            if(isset($_POST['name'])){
                $array = [
                    "category" => [$_POST['category'], '/^[0-9]{2}$/'],
                    "price" => [$_POST['price'], '/^[0-9,]{20}$/'],
                    "quantity" => [$_POST['quantity'], '/^[0-9]{10000}$/'],
                    "specification" => [$_POST['specification'] , '/^[A-Ża-ż0-9,-:;. ]{2,3000}$/'],
                    "name" => [$_POST['name'], '/^[A-Ż]{1}[a-ż]{2,19}$/'],
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
            $pM->addProduct(//name, price, Quantity, Specification, category
                $newArray
            );
            $id = $pM->getNewProductID();
            $pM->addPhotos($id);
            
        }
        function getProductIdCategory($id){
            $pM = new ProductModel();
            return getProductIdCategory($id);
        }
        function editProduct($id){
            $pM = new ProductModel();
            $pM->editProduct(//name, price, Quantity, Specification, category
                $_POST['name'],
                $_POST['price'],
                $_POST['specification'],
                $_POST['category'],
                $id
            );
            if(empty($_FILES['photoGallery']['name'][0]) && empty($_FILES['photoMain']['name'])){
                return FALSE;
            }else{
                $pM->addPhotos($id, TRUE);
                return TRUE;
            }
        }

        function delProduct($id){
            $pM = new ProductModel();
            $pM->delProduct($id);
        }

        function delProductMainFoto($id){
            $pM = new ProductModel();
            $pM->delProductMainFoto($id);
        }

        function delProductGalleryFoto($id, $idFoto){
            $pM = new ProductModel();
            $pM->delProductGalleryFoto($id, $idFoto);
        }

        public function showSlaves($idprem = "%"){
            $sM = new SlaveModel();
            $sV = new SlaveView();
            $sV->showAllSlaves($sM->getSlave($idprem));
        }

        public function actions(){
            $aM = new AdminModel();
            $aV = new AdminView();
            $aV->showRegisterAll($aM->getActions(), TRUE);
        }
    }