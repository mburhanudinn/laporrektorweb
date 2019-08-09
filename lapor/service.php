<?php
    include("config.php");
    session_start();
    ob_start();
    $key = "aplikasi-lapor";
    $response = array();
    if (isset($_POST['function'])){
        $function = $_POST['function'];
        $userkey = $_POST['key'];
        if($userkey==$key){
            if($function=="Register"){
                $nama = $_POST['nama'];
                $username = $_POST['username'];
                $password = md5($_POST['password']);
                $nim = $_POST['nim'];
                $jurusan = $_POST['jurusan'];
                $fakultas = $_POST['fakultas'];
                $angkatan = $_POST['angkatan'];
                //Cek Username
                $sql = "SELECT * FROM user WHERE username = '$username'";
                $result = mysqli_query($db,$sql);
                $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
                $count = mysqli_num_rows($result);
                if($count > 0) {
                    $response["message"] = 'Pendaftaran gagal, username sudah digunakan!';
                    $response["success"] = 0;
                }else{
                    $sql = "INSERT INTO user (nama,username,password,nim,jurusan,fakultas,angkatan) VALUES ('$nama','$username','$password','$nim','$jurusan','$fakultas','$angkatan')";
                    $result = mysqli_query($db,$sql);
                    if($result){
                        $response["message"] = 'Registrasi berhasil';
                        $response["success"] = 1;
                    }else{
                        $response["message"] = 'Registrasi gagal!';
                        $response["success"] = 0;
                    }   
                }
                $result = array();
                $result['hasil'] = $response;
                print(json_encode($result));
            }else if($function=="Login"){
                $username = $_POST['username'];
                $password = md5($_POST['password']);
                $sql = "SELECT * FROM user WHERE username = '$username' AND password = '$password'";
                $result = mysqli_query($db,$sql);
                $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
                $count = mysqli_num_rows($result);
                if($count == 1) {
                    $response["success"] = 1;
                    $response["message"] = "Login berhasil";
                    $response["user_id"] = $row['user_id'];
                    $response["nama"] = $row['nama'];
                    $response["jurusan"] = $row['jurusan'];
                    $response["fakultas"] = $row['fakultas'];
                    $response["angkatan"] = $row['angkatan'];
                }else {
                    $response["success"] = 0;
                    $response["message"] = "Login gagal, cek username atau password anda !";
                }
                $result = array();
                $result['hasil'] = $response;
                print(json_encode($result));
            }else if($function=="Lapor"){
                $user_id = $_POST["user_id"];
                $masukan = $_POST["masukan"];
                $kategori = $_POST["kategori"];
                $foto = $_POST["foto"];
                $format_foto = $user_id."_".date("dmYHis").".jpg";
                $path = "foto/$format_foto";
                file_put_contents($path,base64_decode($foto));
                $sql = "INSERT INTO laporan (kolom_laporan,nama_kategori,user_id,foto_laporan) VALUES ('$masukan','$kategori','$user_id','$format_foto')";
                $result = mysqli_query($db,$sql);
                if($result){
                    $response["success"] = 1;
                    $response["message"] = "Laporan anda sudah diterima";
                }else{
                    $response["success"] = 0;
                    $response["message"] = "Laporan gagal!";
                }

                $result = array();
                $result['hasil'] = $response;
                print(json_encode($result));
            }else if($function=="ListLaporan"){
                $id = $_POST["id"];
                $sql = "";
                if($id==""){
                    $sql = "SELECT a.*,b.nama FROM laporan a LEFT JOIN user b ON b.user_id = a.user_id ORDER BY a.id_laporan DESC";
                }else{
                    $sql = "SELECT a.*,b.nama FROM laporan a LEFT JOIN user b ON b.user_id = a.user_id WHERE a.id_laporan = '$id' ORDER BY a.id_laporan DESC";
                }
                if ($result=mysqli_query($db,$sql)){
                    while ($row=mysqli_fetch_array($result,MYSQLI_ASSOC)){
                        $listIsi = array();
                        $listIsi['id_laporan'] = $row['id_laporan'];
                        $listIsi['kolom_laporan'] = $row['kolom_laporan'];
                        $listIsi['nama_kategori'] = $row['nama_kategori'];
                        $listIsi['status'] = $row['status'];
                        $listIsi['user_id'] = $row['user_id'];
                        $listIsi['foto_laporan'] = $row['foto_laporan'];
                        $listIsi['nama'] = $row['nama'];
                        $response[] = $listIsi;
                    }
                    mysqli_free_result($result);
                }
                $result = array();
                $result['hasil'] = $response;
                print(json_encode($result));
            }
        }else{
            // no function
            $response["success"] = 0;
            $response["message"] = "Function missing";
            print(json_encode($response));    
        } 
    }else{
        // no function
        $response["success"] = 0;
        $response["message"] = "Function missing";
        print(json_encode($response));
    }
?> 