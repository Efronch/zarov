<?php
    session_start();
    require_once 'configDb.php';

    $sql="SELECT * from mufajok";
    $stmt=$db->query($sql);
    echo json_encode($stmt->fetchALL());
?>