<?php
    class OrderModel extends Database{
        public function addOrder($array){
            $query = 'INSERT INTO orders VALUES (null, ?, ?, 1, null, ?, ?, ?, ?, ?, ?, ?)';
            $st = $this->connect()->prepare($query);
            $st->execute($array);
            return $st;
        }

        public function allOrders(){
            $query = 'SELECT * from orders';
            $st = $this->connect()->prepare($query);
            $st->execute();
            return $st->fetchAll();
        }

        public function getUserOrders($id){
            $query = 'SELECT idOrder, status, orderData, summaryPrice from (orders NATURAL JOIN carts) NATURAL JOIN status WHERE idUser = ?'; //będzie korzystać z widoku
            $st = $this->connect()->prepare($query);
            $st->execute([$id]);
            return $st->fetchAll();
        }

        public function getUserOrder($user, $id){
            $query = 'SELECT * from (orders NATURAL JOIN carts) NATURAL JOIN status WHERE idUser = ? and idOrder = ?'; //będzie korzystać z widoku
            $st = $this->connect()->prepare($query);
            $st->execute([$user, $id]);
            $row = $st->fetch();
            return [
                "DATA" => [$row['idOrder'], $row['status'], $row['orderData']] ,
                "USER_DATA" => [$row['name'] . " " .$row['surname'], $row['email'], $row['phone']],
                "USER_ADDRESS" => [$row['postCity'], $row['postCode'], $row['adress']],
                "CART" => [$row['idCart'], $row['summaryPrice']]
            ];
        }

        public function getProductsFromOrder($id){
            $query = 'SELECT idProduct from productsincarts where idCart = ?';
            $stmt = $this->connect()->prepare($query);
            $stmt->execute([$id]);
            return $stmt->fetch();
        }


        public function getIdCartFromUser($id){
            $query = 'SELECT currentCart as id FROM users WHERE idUser = ?';
            $st = $this->connect()->prepare($query);
            $st->execute([$id]);
            return $st->fetch()['id'];
        }

        public function addNewCurrentCart($id){
            $db = $this->connect();
            $query = 'INSERT INTO carts VALUES(null, 0);';
            $stmt = $db->prepare($query);
            $stmt->execute();
            $cartId = $db->lastInsertId();

            $query = 'UPDATE users SET currentCart = ? WHERE idUser = ?;';
            $st = $this->connect()->prepare($query);
            $st->execute([$cartId, $id]);
        }

        public function addCartUnllogged($array){
            //dodać nowy koszyk do koszyków // carts idCart summaryPrice
            $db = $this->connect();
            $query = 'INSERT INTO carts VALUES(null, 0)';
            $stmt = $db->prepare($query);
            $stmt->execute();
            $cartId = $db->lastInsertId();
            //dodać produkty do koszyka
            $query = "INSERT INTO productsincarts values(?, ?, ?)";
            $stmt = $db->prepare($query);
            foreach($array as $key => $value){ //idCart  idProduct howMuch  //productsincarts
                $value = array_merge([$cartId], $value);
                    $stmt->execute($value);
            }
            return $cartId;
        }
    }
