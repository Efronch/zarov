<?php
$host = 'mysql.nethely.hu';
$db_name = 'zarodolg';
$db_username = 'zarodolg'; 
$db_password = 'Efronch8219'; 

$options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,PDO::ATTR_DEFAULT_FETCH_MODE=>PDO::FETCH_ASSOC];     
try{
    $db = new PDO("mysql:host=$host;dbname=$db_name; charset=utf8",$db_username,$db_password,$options);
}catch(PDOException $e)	{
    echo "Hiba: az adatbázishoz kapcsolódás sikertelen!".$e->getMessage();
    exit;
}		
?>