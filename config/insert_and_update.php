<?php
require_once '../koneksi/koneksi.php';

$nama_pemain = $_POST['npemain'];
$klub = $_POST['klub'];
$usia = $_POST['usia'];
$posisi = $_POST['posisi'];
$photo_name = $_FILES['filePhoto']['name'];
$photo_tmp = $_FILES['filePhoto']['tmp_name'];

if(!empty($_POST['id_pemain'])){
    try {
        move_uploaded_file($photo_tmp, '../assets/img' . $photo_name);
        $sql = 'UPDATE `tbl_pemain` SET `nama_pemain` = ?, `klub` = ?, `usia` = ?, `posisi` = ?,
        `photo` = ? WHERE id_pemain = ?';
        $qonnect = $database_connection->prepare($sql);
        $qonnect->execute([$nama_pemain, $klub, $usia, $posisi, 'photo/' . $photo_name, $_POST['id_pemain']]);

        echo "Data Updated Succesfully!";
    } catch (PDOException $err) {
        die("Error Updating data: " . $err->getMessage());
    }
} else{

    try{
        move_uploaded_file($photo_tmp, '../assets/img/' . $photo_name);
        $sql = 'INSERT INTO `tbl_pemain` (`nama_pemain`,`klub`,`usia`,`posisi`,`photo`)
        VALUES (?,?,?,?,?)';
        $qonnect = $database_connection->prepare($sql);
        $qonnect->execute([$nama_pemain, $klub, $usia, $posisi, 'photo/' . $photo_name]);

        echo "Data Inserted Succesfully!";  
    } catch (PDOException $err) {
        die("Error Inserting data: " . $err->getMessage());
}
}