
<?php 
    //konstruktor który przypisze wam automatycznie
    // wsyzsktie zmienne i wywoła funkcje (1 funkcje) wypisujące je 
    //funkcje wypisująca też musicie zrobic i konstruktor wywoła tą funkcje czyli jej użyje poprostu w sobie


    class Orders{
        private $id;

        public $client;
        public $product;
        public $quantity;

        public function setId($id){
            $this->id = $id;
        }
        function __construct($id, $client, $product, $quantity){
            $this->setId($id);
            $this->client = $client;
            $this->product = $product;
            $this->quantity = $quantity;
            $this->wypisz();
        }

        function wypisz(){
            echo "Klient: " . $this->client . "<br/>";
            echo "produkt: " . $this->product . "<br/>";
            echo "ilość: " . $this->quantity  . "<br/>";
            echo "<br/>";
        }
    }
    

    
    // $order1 = new Orders();
    // $order1->setId("11");
    // $order1->client = "Kowalski";
    // $order1->product = "monitor";
    // $order1->quantity = 25;
    // echo "Klient: " . $order1->client . "<br/>";
    // echo "produkt: " . $order1->product . "<br/>";
    // echo "ilość: " . $order1->quantity . "<br/>";
    // echo "<br/>";
    // $order2 = new orders();
    // $order2->setId("2");
    // $order2->client = "Niekowalski";
    // $order2->product = "klawiatura";
    // $order2->quantity = 11;
    // echo "Klient: " . $order2->client . "<br/>";
    // echo "produkt: " . $order2->product . "<br/>";
    // echo "ilość: " . $order2->quantity . "<br/>";
    