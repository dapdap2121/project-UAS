<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

include_once('../template/header.php');
include('../../koneksi.php');
$labelRataRataKelas = [];
$dataRataRataKelas = [];
$labelRataRataMataPelajaran = [];
$dataRataRataMataPelajaran = [];

$queryRataRataKelas = mysqli_query($koneksi, "select round(avg(nilai_umum), 2) as rata_rata, tbl_nilai.nama_kelas from tbl_nilai inner join tbl_kelas 
as tk on right(tk.nama_kelas, 2) = tbl_nilai.nama_kelas
where tbl_nilai.nama_kelas != '' group by tbl_nilai.nama_kelas order by rata_rata desc");
$row = $queryRataRataKelas->fetch_all(MYSQLI_ASSOC);
foreach($row as $data) {
  $labelRataRataKelas[] = $data['nama_kelas'];
  $dataRataRataKelas[] = $data['rata_rata'];
}

$queryRataRataMataPelajaran = mysqli_query($koneksi, "select round(avg(nilai_umum), 2) as rata_rata, tbl_nilai.nama_mapel from tbl_nilai inner join tbl_kelas 
as tk on right(tk.nama_kelas, 2) = tbl_nilai.nama_kelas
where tbl_nilai.nama_kelas != '' group by tbl_nilai.nama_mapel order by rata_rata desc");
$rowRataRataMataPelajaran = $queryRataRataMataPelajaran->fetch_all(MYSQLI_ASSOC);
foreach($rowRataRataMataPelajaran as $data) {
  $labelRataRataMataPelajaran[] = $data['nama_mapel'];
  $dataRataRataMataPelajaran[] = $data['rata_rata'];
}

?>

<!DOCTYPE html>
<html>
<head>
    <title>CHART</title>
    
</head>
<body>
  <!-- Begin Page Content -->
  <center>
  <div class="content-wrapper">
    <div class="row">
      <div class="col-lg-5 grid-margin stretch-card ml-5">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title">Rata-rata Nilai Kelas</h4>
            <canvas id="barChart" style="height: 400px;"></canvas>
          </div>
        </div>
      </div>
      <div class="col-lg-5 grid-margin stretch-card ml-5">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title">Rata-rata Nilai Mata Pelajaran</h4>
            <canvas id="pieChart" style="height: 400px;"></canvas>
          </div>
        </div>
      </div>
    </div>
  </div>
</center>

  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script>
    var ctx1 = document.getElementById("barChart").getContext('2d');
    var barChart = new Chart(ctx1, {
      type: 'bar',
      data: {
        labels: <?php echo json_encode($labelRataRataKelas); ?>,
        datasets: [{
          label: 'Rata-rata nilai kelas', 
          data: <?php echo json_encode($dataRataRataKelas); ?>,
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)',
            'rgba(255, 99, 132, 0.2)',
            'rgba(255, 99, 132, 0.2)',
          ],
          borderColor: [
            'rgba(255, 99, 132, 1)',
            'rgba(255, 99, 132, 1)',
            'rgba(255, 99, 132, 1)',
          ],
          borderWidth: 1
        }]
      },
      options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
    });

    var ctx2 = document.getElementById("pieChart").getContext('2d');
    var pieChart = new Chart(ctx2, {
      type: 'line',
      data: {
        labels: <?php echo json_encode($labelRataRataMataPelajaran); ?>,
        datasets: [{
          label: 'Rata-rata nilai pelajaran',
          data: <?php echo json_encode($dataRataRataMataPelajaran); ?>,
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(255, 206, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(133, 196, 155, 0.2)',
            'rgba(174, 110, 143, 0.2)',
            'rgba(110, 135, 174, 0.2)',
            'rgba(112, 174, 110, 0.2)',
            'rgba(174, 169, 110, 0.2)',
            'rgba(174, 133, 110, 0.2)',
            'rgba(174, 110, 163, 0.2)',
            'rgba(127, 110, 174, 0.2)'
          ],
          borderColor: [
            'rgba(255, 99, 132, 1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(133, 196, 155, 1)',
            'rgba(174, 110, 143, 1)',
            'rgba(110, 135, 174, 1)',
            'rgba(112, 174, 110, 1)',
            'rgba(174, 169, 110, 1)',
            'rgba(174, 133, 110, 1)',
            'rgba(174, 110, 163, 1)',
            'rgba(127, 110, 174, 1)',
          ],
          borderWidth: 1
        }]
      },
    });

  </script>

</body>
</html>
