<?php
    class CartModel extends Database{
        public function addToCart($userId, $id){
            $query = 'SELECT howMuch from productsincarts where idCart = (select currentCart FRom users where idUser = ?) and idProduct = ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$userId, $id]);
            if($stmt->rowCount()){
                $howMuch = $stmt->fetch()['howMuch'];
                if($id == strtok($id, "-")){
                    if($howMuch < 10){
                        $howMuch++;
                    }
                }else{
                    if($howMuch > 1){
                        $howMuch--;
                    }
                }
                $row = $stmt->fetch();//
                $query = 'UPDATE productsInCarts SET howMuch = ' . $howMuch . 
                    " WHERE idCart = (SELECT currentCart FROM users WHERE idUser = ?) AND idProduct = ?";
            }else{
                $query = 'INSERT INTO productsInCarts VALUES ((SELECT currentCart FROM users WHERE idUser = ?), ?, 1)';
            }
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$userId, $id]);
            return $stmt;
        }

        public function delFromCart($userId, $id){
            $query = 'DELETE FROM productsincarts where idCart = (select currentCart FRom users where idUser = ?) and idProduct = ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$userId, $id]);
            return $stmt;
        }

        public function getProduct($userId){
            //idProduct, name, Quantity, idFoto, Specification, howMuch -> products, productsInCarts 
            //products(idProduct, name, price, ), productsInCarts(idCart, idProduct, howMuch), users(currentCart)
            $query = 'SELECT p.idProduct, name, price, idFoto, howMuch from products p inner join productsInCarts pic ON p.idProduct = pic.idProduct where idCart = (select currentCart FRom users where idUser = ?)';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$userId]);
            return $stmt->fetchAll();
        }

        public function sumaryPriceCart($id){
            $query = 'SELECT summaryPrice FROM carts WHERE idCart = (SELECT currentCart FROM users WHERE idUser = ?)';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id]);
            return $stmt->fetch()['summaryPrice'];
        }
    }