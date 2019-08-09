<?php 
include 'config.php';
include 'koneksi.php';

if( isset($_SESSION['username']) ) {
	header("location:lapor.php");
//tolak login

}

$username = $_POST['username'];
$password = md5($_POST['password']);

$login = mysql_query("select * from user where username='$username' and password='$password'");
$cek = mysql_num_rows($login);

if($cek > 0){

	 while($row = mysql_fetch_array($login)) {
	session_start();
	$_SESSION['username'] = $username;
	$_SESSION['user_id'] = $row['user_id'];
	$_SESSION['status'] = "login";
	header("location:lapor.php");
}
}else{
	echo "<script language=\"JavaScript\">\n";
			echo "alert('Username atau Password Salah!');\n";
			echo "location='index.php'";
			echo "</script>";
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