<?php
require_once '../koneksi/koneksi.php';
$id_pemain = $_POST['id_pemain'];

try {
    $sql = 'DELETE FROM tbl_pemain WHERE id_pemain = ?';
    $qonnect = $database_connection->prepare($sql);
    $qonnect->execute([$id_pemain]);
    echo "data deleted succesfully!";
} catch (PDOException $err) {
    die("Error deleting data: " . $err->getMessage());
}