<?php
     session_start();
include ('../../koneksi.php');
include ('../../config.php');
include_once('../../cek-akses-admin.php');

    //menangkap parameter yang dikirimkan dari detail.php
    $id_admin = $_POST['id_admin'];
    $useradmin = $_POST['useradmin'];
    $password = $_POST['password'];
    


    $id_admin = $_GET['id_admin'];
    //perintah untuk melakukan update
    //melakukan update data berdasarkan ID
    $query = mysql_query("UPDATE admin SET keterangan='1' WHERE id_admin=$id_admin")or die(mysql_error());

   if ($query) {
        header('location:trashadmin.php?message=success');
    }
?>