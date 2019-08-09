<?php
    session_start();
include ('../koneksi.php');
include ('../config.php');
include_once('../cek-akses.php');

    if($_POST['user_id']) {
        $user_id = $_POST['user_id'];
        // mengambil data berdasarkan id
        // dan menampilkan data ke dalam form modal bootstrap
        $query = "SELECT * FROM user WHERE user_id = $user_id";
        $result = mysql_query($query);
         while ($data = mysql_fetch_array($result)) {
          ?>


        <form action="update.php" method="post">
            <input type="hidden" name="user_id" value="<?php echo $data['user_id']; ?>">
            <div class="form-group">
                <label>Nama Lengkap</label>
                <input class="form-control" name="nama" type="text"  value="<?php echo $data['nama']; ?>">

            </div>
            <div class="form-group">
                <label>Username</label>
                <input class="form-control" name="username" type="text"  value="<?php echo $data['username']; ?>">

            </div>
            <div class="form-group">
                <label>NIM</label>
               <input type="text" class="form-control" name="nim" value="<?php echo $data['nim']; ?>">
            </div>
             <div class="form-group">
                <label>Jurusan</label>
                <input class="form-control" name="jurusan" type="text"  value="<?php echo $data['jurusan']; ?>">
            </div>
             <div class="form-group">
                <label>Fakultas</label>
                <input class="form-control" name="fakultas" type="text"  value="<?php echo $data['fakultas']; ?>">
            </div>
             <div class="form-group">
                <label>Angkatan</label>
                <input class="form-control" name="angkatan" type="text"  value="<?php echo $data['angkatan']; ?>">
            </div>
              <button class="btn btn-primary" type="submit">Update</button>
        </form>
        
        <?php } }
    
?>