<?php 
include 'config.php';
include 'koneksi.php';
include_once('cek-akses.php');


$username = $_POST['username'];
$password = md5($_POST['password']);

$login = mysql_query("select * from user where username='$username' and password='$password'");
$cek = mysql_num_rows($login);

if($cek > 0){
	session_start();
	$_SESSION['username'] = $username;
	$_SESSION['status'] = "login";
	header("location:adminlapor.php");
}else{
	header("location:indexadmin.php");	
}

// $login = mysql_query("select * from admin where username='$username' and password='$password'");
// $cek = mysql_num_rows($login);

// if($cek > 0){
// 	session_start();
// 	$_SESSION['username'] = $username;
// 	$_SESSION['status'] = "login";
// 	header("location:adminlapor.php");
// }else{
// 	header("location:indexadmin.php");	
// }
?>