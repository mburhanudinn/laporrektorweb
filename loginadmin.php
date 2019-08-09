<?php
session_start();
include "config.php";
$useradmin = $_POST['useradmin'];
$password = md5($_POST['password']);


    $sql = mysql_query("SELECT * FROM admin WHERE useradmin='$useradmin' AND password='$password'");
    if(mysql_num_rows($sql)==1){//jika berhasil akan bernilai 1
        $qry = mysql_fetch_array($sql);
        $_SESSION['useradmin'] = $qry['useradmin'];
		$_SESSION['nama'] = $qry['nama'];
        $_SESSION['level'] = $qry['level'];
        if($qry['level']=="admin"){
            header("location:pages/admin/adminlapornew.php");
        }
		else if($qry['level']=="akademik"){
            header("location:pages/admin/akademikbaru.php");
        }
        else if($qry['level']=="kemahasiswaan"){
            header("location:pages/admin/kemahasiswaanbaru.php");
        }
        else if($qry['level']=="lainya"){
            header("location:pages/admin/lainyabaru.php");
        }
        else if($qry['level']=="sarpras"){
            header("location:pages/admin/sarprasbaru.php");
        }

    }else{
		?>
		<script language="JavaScript">
			alert('Username atau Password tidak sesuai. Silahkan diulang kembali!');
			document.location='indexadmin.php';
		</script>
		<?php
    
}
?>
