<?php
$db_host = "sql310.infinityfree.com";
$db_user = "if0_34438841";
$db_pass = "2sXAZAs6TCf3NS";
$db_name = "if0_34438841_sma16";

$koneksi = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

if (mysqli_connect_errno()) {
	echo 'Gagal melakukan koneksi ke Database : ' . mysqli_connect_error();
}
