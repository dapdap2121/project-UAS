<?php 
include('../../koneksi.php');
include_once('../template/header.php');
$id = $_GET['id'];
$hapus = "DELETE FROM `tbl_guru` WHERE `tbl_guru`.`id` = $id";
if (mysqli_query($koneksi, $hapus) > 0) {
    echo "<script>
    alert('data berhasil dihapus');
    document.location.href= 'index.php';
    </script>";
} else {
    echo "<script>
    alert('Mohon Maaf Tidak bisa di hapus');
    document.location.href= 'index.php';
    </script>";
}
