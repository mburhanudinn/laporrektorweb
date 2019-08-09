<?php
     session_start();
include ('../../koneksi.php');
include ('../../config.php');
include_once('../../cek-akses.php');

    //menangkap parameter yang dikirimkan dari detail.php
    $id_laporan = $_POST['id_laporan'];
    $kolom_laporan = $_POST['kolom_laporan'];
    $status = $_POST['status'];

    //perintah untuk melakukan update
    //melakukan update data berdasarkan ID
    $query = mysql_query("UPDATE laporan SET status = '$status' WHERE id_laporan=$id_laporan")or die(mysql_error());

   if ($query) {
        header('location:adminlapor.php?message=success');
    }
?>