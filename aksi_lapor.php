<?php

session_start();
include ('koneksi.php');
include ('config.php');
include_once('cek-akses.php');
//Ini untuk koneksi saja
$user_name = "root";
$password  = "";
$database  = "tugasakhir"; //Tulis sesuai dengan nama database yang digunakan
$host_name = "localhost";
 
$connect_db=mysql_connect($host_name, $user_name, $password);
$find_db=mysql_select_db($database);
//Akhir koneksi

//Pertama ambil data kiriman dari form
 

//Kemudian dapat langsung kita simpan dengan query INSERT
if($_POST['simpan']){
 $user_id = $_SESSION['user_id'];
 $id_laporan = @$_POST['id_laporan'];
 $kolom_laporan = @$_POST['kolom_laporan'];
 $nama_kategori = @$_POST['nama_kategori'];
 $status_lap = @$_POST['status_lap'];
 $aksilanjutan = @$_POST['aksilanjutan'];
 
			$ekstensi_diperbolehkan	= array('png','jpg');
			$nama = $_FILES['file']['name'];
			$x = explode('.', $nama);
			$ekstensi = strtolower(end($x));
			$ukuran	= $_FILES['file']['size'];
			$file_tmp = $_FILES['file']['tmp_name'];	

			if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
				if($ukuran < 1044070){			
					move_uploaded_file($file_tmp, 'lapor/foto/'.$nama);
					$query = mysql_query("INSERT INTO `laporan`(`id_laporan`,`kolom_laporan`, `nama_kategori` , `user_id` , `foto_laporan`, `status_lap`, `aksilanjutan`) VALUES 
						('$id_laporan', '$kolom_laporan' , '$nama_kategori' , '$user_id', '$nama', 'new', 'belum')");

					if ($query) {
					header('location:lapor.php?message=success');
					}else{
						echo "<script language=\"JavaScript\">\n";
						echo "alert('Gagal Mengupload!');\n";
						echo "location='lapor.php'";
						echo "</script>";
					}
					}else{
					echo 'UKURAN FILE TERLALU BESAR';
				}
			}else{
				echo "<script language=\"JavaScript\">\n";
						echo "alert('Gagal Melakukan laporan, Silakan periksa lagi!');\n";
						echo "location='lapor.php'";
						echo "</script>";
			}
	}



?>