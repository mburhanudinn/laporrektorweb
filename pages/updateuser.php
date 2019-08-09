<?php
//session_start();
include ('../koneksi.php');
include ('../config.php');


//tangkap data dari form ubahcalonmhs.php
	$user_id = $_POST['user_id'];
	$nama = $_POST['nama'];
	$username = $_POST['username'];
	$nim = $_POST['nim'];
	$jurusan = $_POST['jurusan'];
	$fakultas = $_POST['fakultas'];
	$angkatan = $_POST['angkatan'];
	
//update data di database sesuai id_cln
$query = mysql_query("UPDATE user set user_id='$user_id', nama='$nama', nim='$nim', jurusan='$jurusan', fakultas='$fakultas', angkatan='$angkatan' where user_id='$user_id'") or die(mysql_error());

	if ($query) {
		header('location:admin/datauser.php?message=success');
	}
?>
