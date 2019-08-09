<?php
//session_start();
include ('koneksi.php');
include ('config.php');


//tangkap data dari form ubahcalonmhs.php
	$id_laporan = $_POST['id_laporan'];
	$kolom_laporan = $_POST['kolom_laporan'];
	$nama_kategori = $_POST['nama_kategori'];
	$status = $_POST['status'];
	
//update data di database sesuai id_cln
$query = mysql_query("UPDATE laporan set nama_kategori='$nama_kategori' , status='$status' where id_laporan='$id_laporan'") or die(mysql_error());

	if ($query) {
		header('location:pages/admin/adminlapor.php?message=success');
	}
?>
