<?php
  //put file which is connected to database
  include ('../koneksi.php');
  include ('../config.php');
  include_once('../cek-akses-admin.php');

  if(empty($_SESSION['username'])){
header("location: login.php");
}
  //take all parameters through get method
  $id_admin = $_GET['id_admin'];

  //delete data from database based on nim
  $query = mysql_query("DELETE FROM admin where id_admin='$id_admin'") or die(mysql_error());

  if ($query) {
    header('location:admin/dataadmin.php?message=delete');
  }
?>