<!-- http://y-kom.pl/test/karolina.php
leerock.zero@gmail.com -->

<?php
$to = "@gmail.com";
$subject = "My subject";
$txt = "Hello world!";
$headers = "From: webmaster@example.com" . "\r\n" .
"CC: somebodyelse@example.com";

if(mail($to,$subject,$txt,$headers)){
    echo "działa";
}else{
    echo "nie";
}
?>