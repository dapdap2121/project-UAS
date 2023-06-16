
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>E-Raport</title>

    <!-- Custom fonts for this template-->
    <link href="../../aset/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../../aset/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-dark sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-graduation-cap"></i>
                </div>
                <div class="sidebar-brand-text  mx-3">E-Raport<sup></sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="../pages/informasi/">
                    <i class="fas fa fa-info-circle"></i>
                    <span>Home</span></a>
            </li>

            <!-- Heading -->
            <div class="sidebar-heading">
                Menu
            </div>

            <!-- Nav Item - Data Master -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span> Data Master</span>

                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Data Master:</h6>
                        <a class="collapse-item" href="../pages/siswa/index.php"> <i class="fa fa-user fa-1x"></i> Data Siswa</a>
                        <a class="collapse-item" href="../pages/guru/index.php"> <i class="fas fa-chalkboard-teacher fa-1x"></i> Data Guru</a>
                        <a class="collapse-item" href="../pages/mapel/index.php"> <i class="fas fa-book-reader fa-1x"></i> Mata Pelajaran</a>
                        <a class="collapse-item" href="../pages/tahunajar/index.php"> <i class="fas fa-calendar fa-1x"></i> Tahun Ajar</a>
                        <a class="collapse-item" href="../pages/kelas/index.php"> <i class="fas fa-school fa-1x"></i> Kelas</a>
                    </div>
                </div>
            </li>



            <!-- Nav Item - Data Raport -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePage" aria-expanded="true" aria-controls="collapsePage">
                    <i class="fas fa-book-open"></i>
                    <span> Data Raport</span>
                    <div id="collapsePage" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Nilai Raport:</h6>
                            <a class="collapse-item" href="../pages/rapor"> <i class="fa fas fa-book-open fa-1x"></i> Raport Kelas 10</a>
                            <a class="collapse-item" href="../pages/rapor/index2.php"> <i class="fa fas fa-book-open fa-1x"></i> Raport Kelas 11</a>
                            <a class="collapse-item" href="../pages/rapor/index3.php"> <i class="fa fas fa-book-open fa-1x"></i> Raport Kelas 12</a>



                        </div>
                    </div>
            </li>
            <!--Nav Item - Grafik nilai -->
            <li class="nav-item">
                <a class="nav-link" href="../pages/chart/chart.php">
                    <i class="fas fa-fw fa-chart-bar"></i>
                    <span>Grafik Nilai </span></a>
            </li>
            <!-- Nav Item - Pengguna -->
            <li class="nav-item">
                <a class="nav-link" href="../pages/user/index.php">
                    <i class="fas fa-fw fa-user"></i>
                    <span>Pengguna</span></a>
            </li>
            <!-- Nav Item - Logout -->
            <li class="nav-item">
                <a class="nav-link" href="../../logout.php">
                    <i class="fas fa-fw fa-power-off"></i>
                    <span>Logout</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                        </li>
                        
                        <!-- User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Admin</span>
                                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
                            </a>
                            <!--  User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->