<?php
    session_start();
    require_once 'configDb.php';
    extract($_GET);

    $sql="SELECT * FROM eloadok WHERE mufaj_id={$mufajid}";
    $stmt=$db->query($sql);
    echo json_encode($stmt->fetchALL());
?>