<?php
     session_start();
include ('../../koneksi.php');
include ('../../config.php');
include_once('../../cek-akses.php');

    //menangkap parameter yang dikirimkan dari detail.php
    $user_id = $_POST['user_id'];
    $nama = $_POST['nama'];
    $username = $_POST['username'];
    $nim = $_POST['nim'];
    $jurusan = $_POST['jurusan'];
    $fakultas = $_POST['fakultas'];
    $angkatan = $_POST['angkatan'];

    //perintah untuk melakukan update
    //melakukan update data berdasarkan ID
    $query = mysql_query("UPDATE user SET nama = '$nama', username = '$username', nim = '$nim', jurusan = '$jurusan', fakultas = '$fakultas', angkatan = '$angkatan' WHERE user_id=$user_id")or die(mysql_error());

   if ($query) {
        header('location:datauser.php?message=success');
    }
?>