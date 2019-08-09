<?php
include ('koneksi.php');
include ('config.php');
include_once('cek-akses-admin.php');

if(empty($_SESSION['username'])){
header("location: login.php");
}

//$id_desa = $_GET['Id_desa'];
$id_laporan = $_GET['id_laporan'];

//$query = mysql_query("DELETE FROM tagihan WHERE Id_desa='$id_desa'") or die(mysql_error());
$query = mysql_query("DELETE FROM laporan WHERE id_laporan='$id_laporan'") or die(mysql_error());

if ($query) {
	header('location:adminlapor.php');
} else {
	header('location:adminlapor.php');
}
?>
