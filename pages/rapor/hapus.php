<?php 
include('../../koneksi.php');
include_once('../template/header.php');

$id = $_GET['kd_raport'];

$hapus = "DELETE FROM `tbl_nilai` WHERE `kd_raport` = ?";

$stmt = mysqli_prepare($koneksi, $hapus);
mysqli_stmt_bind_param($stmt, 's', $id);

if (mysqli_stmt_execute($stmt)) {
    echo "<script>
    alert('Data berhasil dihapus');
    document.location.href= 'index.php';
    </script>";
} else {
    echo "Gagal";
}

mysqli_stmt_close($stmt);
mysqli_close($koneksi);
