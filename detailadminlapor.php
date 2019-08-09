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

    if($_POST['rowid']) {
        $id_laporan = $_POST['rowid'];
        // mengambil data berdasarkan id
        // dan menampilkan data ke dalam form modal bootstrap
        $sql = "SELECT * FROM laporan WHERE id_laporan = $id_laporan";
        $result = $koneksi->query($sql);
        foreach ($result as $baris) { ?>


        <form action="updateadminlapor.php" method="post">
            <input type="hidden" name="id_laporan" value="<?php echo $baris['id_laporan']; ?>">
            <div class="form-group">
                <label>Update Status Laporan</label>
                <input type="text" class="form-control" name="status" value="<?php echo $baris['status']; ?>">
            </div>
            <!-- <div class="form-group">
                <label>Deskripsi</label>
                <textarea class="form-control" rows="5" name="deskripsi" ><?php echo $baris['desc_barang']; ?></textarea>
            </div> -->
              <button class="btn btn-primary" type="submit">Update</button>
        </form>
        
        <?php } }
    $koneksi->close();
?>