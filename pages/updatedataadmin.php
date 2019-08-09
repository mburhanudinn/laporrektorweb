<?php
//session_start();
include ('../koneksi.php');
include ('../config.php');
include ('../cek-akses-admin.php');


//tangkap data dari form ubahcalonmhs.php
	$id_admin = $_POST['id_admin'];
	$username = $_POST['username'];
	$password = md5($_POST['password']);
	
//update data di database sesuai id_cln
$query = mysql_query("UPDATE admin set id_admin='$id_admin', username='$username', password='$password' where id_admin='$id_admin'") or die(mysql_error());

	if ($query) {
		header('location:admin/dataadmin.php?message=success');
	}
?>
