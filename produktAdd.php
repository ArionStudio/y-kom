<?php



function connect(){
    $dbh = "mysql:dbname=ykom;host=127.0.0.1;port=3306";
    $user = "root";
    $password = "";
    try{
        $pdo = new PDO($dbh, $user, $password);
    }catch(PDOException $e){
        $pdo = null;
        session_start();
        $_SESSION['error'] = [$e->getCode(), $e->getMessage()];
        header("Location: dberror.php");
        exit;
    }
    return $pdo;
}


// proszę 

//3
//napisać sprawdzenie czy pola nie są pustę i zawierają dobre dane

//1

//Pobranie danych ze tablicy asocjacyjnej $_POST[]

$name = $_POST['name'];
$price = $_POST['price'];
$specification = $_POST['specification'];
$category = $_POST['category'];
$quantity = $_POST['quantity'];

//2
//Dodawanie do tabeli produktu




$query = 'INSERT INTO products VALUES (null, ?, ?, ?, ?, ?, null)';
$sst = connect()->prepare($query);
$result = $sst->execute([$name, $price, $quantity, $specification, $category]);

echo $sst->debugDumpParams();



header("Location: index.php");




// (1, 'Procesory'),
// (2, 'Dyski twarde HDD i SSD'),
// (3, 'Karty graficzne'),
// (4, 'Płyty główne'),
// (5, 'Obudowy komputerowe'),
// (6, 'Pamięci RAM'),
// (7, 'Zasilacze komputerowe'),
// (8, 'Chłodzenia komputerowe'),
// (9, 'Karty dźwiękowe');
