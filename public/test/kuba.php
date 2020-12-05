<?php
//http://y-kom.pl/test/kuba.php
if(mail('dlaczegoszesc@gmail.com', 'siemaaa', 'hello im from romania please come again', 'From: romanianboy1337@ykom.pl')){
    echo '<p> wyslano</p>';
    var_dump(mail());
}else{
    echo '<p> nie wyslano </p>';
}