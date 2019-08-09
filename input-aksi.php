<?php 
include 'config.php';
include 'koneksi.php';
$nama = $_POST['nama'];
$username = $_POST['username'];
$password = md5($_POST['password']);
$nim = $_POST['nim'];
$jurusan = $_POST['jurusan'];
$fakultas = $_POST['fakultas'];
$angkatan = $_POST['angkatan'];


$nama = $_POST['nama'];
$username = $_POST['username'];
$password = md5($_POST['password']);
$nim = $_POST['nim'];
$jurusan = $_POST['jurusan'];
$fakultas = $_POST['fakultas'];
$angkatan = $_POST['angkatan'];


$sql = "SELECT * FROM user WHERE username='$username'";
$query = mysql_query($sql) or die (mysql_error());

if(mysql_num_rows($query) > 0){
		
		echo "<script language=\"JavaScript\">\n";
			echo "alert('Username sudah ada, silakan ganti yang lain!');\n";
			echo "location='register.html'";
			echo "</script>";

	} else {

		$sql = "INSERT INTO user VALUES('','$nama', '$username','$password','$nim','$jurusan','$fakultas','$angkatan', '1')";
		$query = mysql_query($sql) or die (mysql_error());

		echo "<script language=\"JavaScript\">\n";
			echo "alert('Registrasi berhasil, silakan lanjut login LAPOR!');\n";
			echo "location='index.php'";
			echo "</script>";
	}
// ?>

<!-- $cekdulu= "select * from user where username='$_POST[username]'"; //username dan $_POST[un] diganti sesuai dengan yang kalian gunakan
$prosescek= mysql_query($cekdulu);
if (mysql_num_rows($prosescek)>0) { //proses mengingatkan data sudah ada
    echo "<script>alert('Username Sudah Digunakan'); </script>";

}
else { mysql_query("INSERT INTO user VALUES('','$username','$password','$nim','$jurusan','$fakultas','$angkatan')"); //proses menambahkan data, tambahkan sesuai dengan yang kalian gunakan
 
}
?> -->