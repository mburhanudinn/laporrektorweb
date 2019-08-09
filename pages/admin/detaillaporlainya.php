<?php
    session_start();
include ('../../koneksi.php');
include ('../../config.php');
include_once('../../cek-akses-admin.php');

    if($_POST['id_laporan']) {
        $id_laporan = $_POST['id_laporan'];
        // mengambil data berdasarkan id
        // dan menampilkan data ke dalam form modal bootstrap
        $query = "SELECT * FROM laporan WHERE id_laporan = $id_laporan";
        $result = mysql_query($query);
         while ($data = mysql_fetch_array($result)) {
          ?>


        <form action="updatelaporlainya.php" method="post">
            <input type="hidden" name="id_laporan" value="<?php echo $data['id_laporan']; ?>">
            <div class="form-group">
                <label>ID Laporan</label>
                <input class="form-control" name="id_laporan" type="text"  value="<?php echo $data['id_laporan']; ?>" readonly>

            </div>

            <div class="form-group">
                <label>Laporan</label>
               <textarea style="resize:none" type="text" class="form-control" name="kolom_laporan" readonly> <?php echo $data['kolom_laporan'];?></textarea>
            </div>
            <div class="form-group">
                <label>Status Laporan</label>
               <input type="text" class="form-control" name="status" value="<?php echo $data['status']; ?>">
            </div>
            
              <button class="btn btn-primary" type="submit">Update</button>
        </form>
        
        <?php } }
    
?>