<?php
    session_start();
include ('../../koneksi.php');
include ('../../config.php');
include_once('../../cek-akses-admin.php');

    if($_POST['id_admin']) {
        $id_admin = $_POST['id_admin'];
        // mengambil data berdasarkan id
        // dan menampilkan data ke dalam form modal bootstrap
        $query = "SELECT * FROM admin WHERE id_admin = $id_admin";
        $result = mysql_query($query);
         while ($data = mysql_fetch_array($result)) {
          ?>


        <form action="update.php" method="post">
            <input type="hidden" name="id_admin" value="<?php echo $data['id_admin']; ?>">
            <div class="form-group">
                <label>Username</label>
                <input class="form-control" name="useradmin" type="text"  value="<?php echo $data['useradmin']; ?>">

            </div>
            <div class="form-group">
                <label>Password</label>
               <input type="text" class="form-control" name="password" value="<?php echo $data['password']; ?>">
            </div>
              <button class="btn btn-primary" type="submit">Update</button>
        </form>
        
        <?php } }
    
?>