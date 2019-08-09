    <?php
session_start();
include ('../../koneksi.php');
include ('../../config.php');
include_once('../../cek-akses-admin.php');
    ?>   
    <?php
    //file cek.php untuk cek data
    $last = $_GET['last'];
    $sql = "select * from nama_tabel where id_laporan='$last'";
    $rs = mysql_query($sql);
    //output berupa json
    if(mysql_num_rows($rs) > 0){
    $lastSql = "select max(id_laporan) from laporan";
    $lastId = mysql_fetch_array(mysql_query($lastSql));
    echo '{"result":"new data","last":"'.$lastId[0].'"}';
    }else{
    echo '{"result":false}';
    }