<?php
session_start();
if (empty($_SESSION)) {
    echo "<script>
 alert('Anda Harus Login dahulu');
 document.location.href= 'index.php';
 </script>";
}
include_once('template/header.php');
$informasi = mysqli_query($koneksi, "SELECT * FROM `tbl_profil`");
?>
<!-- Begin Page Content -->

<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Selamat Datang di Aplikasi E-Raport</h1>


    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Informasi Sekolah</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <?php
                while ($info = mysqli_fetch_assoc($informasi)) :
                    ?>
                    <table class="table table-bordered" id="dataTable" width="80%" cellspacing="0">
                        <thead>
                            <h3>1. Informasi Sekolah</h3>
                            <tr>
                                <td>Nama Sekolah</td>
                                <td><?= $info["nm_sekolah"]; ?> </td>
                            </tr>
                            <tr>
                                <td>NPSN</td>
                                <td><?= $info["npsn"]; ?></td>
                            </tr>
                            <tr>
                                <td>Jenjang Pendidikan</td>
                                <td><?= $info["jenjang"]; ?></td>
                            </tr>
                            <tr>
                                <td>Akreditasi</td>
                                <td><?= $info["akreditasi"]; ?></td>
                            </tr>
                            <tr>
                                <td>Alamat Sekolah </td>
                                <td><?= $info["alamat"]; ?></td>
                            </tr>
                        </thead>
                        </tbody>


                        <td>
                            <h4>2. Informasi Kepala Sekolah</h4>
                        </td>


                        <tr>
                            <td>Nama Kepala Sekolah</td>
                            <td><?= $info["kepsek_nama"]; ?></td>
                        </tr>
                        <tr>
                            <td>NIP Kepala Sekolah</td>
                            <td><?= $info["kepsek_nip"]; ?></td>
                        </tr>
                        <tr>
                            <td>Pangkat</td>
                            <td><?= $info["kepsek_pangkat"]; ?></td>
                        </tr>
                        <tr>
                            <td>Jabatan</td>
                            <td><?= $info["kepsek_jabatan"]; ?></td>
                        </tr>
                        <tr>
                            <td>Alamat Kepala Sekolah</td>
                            <td><?= $info["kepsek_alamat"] ?></td>
                        </tr>
                        </thead>
                        </tbody>
                    <?php endwhile; ?>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->


</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>
<?php include 'template/footer.php' ?>