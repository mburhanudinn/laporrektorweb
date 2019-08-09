<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "tugasakhir";

    // membuat koneksi
    $koneksi = new mysqli($servername, $username, $password, $dbname);

    // melakukan pengecekan koneksi
    if ($koneksi->connect_error) {
        die("Connection failed: " . $koneksi->connect_error);
    } 

    //menangkap parameter yang dikirimkan dari detail.php
    $id_laporan = $_POST['id_laporan'];
    $status = $_POST['status'];
    

    //perintah untuk melakukan update
    //melakukan update data berdasarkan ID
    $sql = "UPDATE laporan SET status = '$status' WHERE id_laporan=$id_laporan";

    if ($koneksi->query($sql) === TRUE) {
        //jika  berhasil tampil ini
        echo "Data Berhasil Diubah"."</br>";
        echo "<a href='bootstrap.php'>Kembali Ke Halaman Depan</a>";
    } else {
        // jika gagal tampil ini
        echo "Gagal Melakukan Perubahan: " . $koneksi->error;
    }



    $koneksi->close();
?>