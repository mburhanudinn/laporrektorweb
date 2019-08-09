<?php
  //put file which is connected to database
  include ('../koneksi.php');
  include ('../config.php');
  include_once('../cek-akses-admin.php');

  if(empty($_SESSION['username'])){
header("location: login.php");
}
  //take all parameters through get method
  $user_id = $_GET['user_id'];

  //delete data from database based on nim
  $query = mysql_query("DELETE FROM user where user_id='$user_id'") or die(mysql_error());
  $query = mysql_query("DELETE FROM laporan where user_id='$user_id'") or die(mysql_error());

  if ($query) {
    header('location:admin/datauser.php?message=delete');
  }
?>