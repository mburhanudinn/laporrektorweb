<?php
	//put file which is connected to database
	include "../../koneksi.php";
	include "../../config.php";
	include "../../cek-akses-admin.php";

	//take all parameters through post method
	$id_admin = $_POST['id_admin'];
	$keterangan = $_POST['keterangan'];
	$useradmin = $_POST['useradmin'];
	$password = md5($_POST['password']);

	//insert data into database
	$query = mysql_query("insert into admin values ('$id_admin', '$useradmin', '$password', '1')") or die(mysql_error());

	if ($query) {
		header('location:dataadmin.php?message=success');
	}
?>