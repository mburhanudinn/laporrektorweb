<?php
  //put file which is connected to database
  include ('koneksi.php');
  include ('config.php');
  include_once('cek-akses-admin.php');

  if(empty($_SESSION['username'])){
header("location: login.php");
}
  //take all parameters through get method
  $id_laporan = $_GET['id_laporan'];

  //delete data from database based on nim
  $query = mysql_query("DELETE FROM laporan where id_laporan='$id_laporan'") or die(mysql_error());

  if ($query) {
    header('location:pages/admin/adminlapornew.php?message=delete');
  }
?>