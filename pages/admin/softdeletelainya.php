<?php
     session_start();
include ('../../koneksi.php');
include ('../../config.php');
include_once('../../cek-akses-admin.php');

    //menangkap parameter yang dikirimkan dari detail.php
   

    $id_laporan = $_GET['id_laporan'];
    //perintah untuk melakukan update
    //melakukan update data berdasarkan ID
    $query = mysql_query("UPDATE laporan SET ket_lap='0' WHERE id_laporan=$id_laporan")or die(mysql_error());

   if ($query) {
        header('location:lainya.php?message=success');
    }
?>