<?php
session_start();
include ('koneksi.php');
include ('config.php');
include_once('cek-akses.php');
?>

<!DOCTYPE html>
<html> 
  <head>
    <meta charset="UTF-8">
    <title>LAPOR REKTOR</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />    
    <!-- FontAwesome 4.3.0 -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />    
    <!-- Theme style -->
    <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="plugins/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
    <!-- DATA TABLES -->
    <link href="plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="plugins/select2/select2.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    
  </head>
  <body class="skin-blue">
    <div class="wrapper">
      
      <header class="main-header">
        <!-- Logo -->
        <a href="lapor.php" class="logo"><b></b>LAPOR</a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
             
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="dist/img/burhan2.png" class="user-image" alt="User Image"/>
                  <span class="hidden-xs"> <?php echo "Wellcome ".$_SESSION['username']; ?></span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="dist/img/burhan2.png" class="img-circle" alt="User Image" />
                    <p>
                     <a style="width: 100%" class="navbar-brand" nohref><?php echo "".$_SESSION['username']; ?></a>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                  <p style="text-align: center;">
               
                    Hallo Selamat Datang di Layanan Aspirasi dan Pengaduan Online Kepada Rektor (LAPOR) Universitas Diponegoro
                  
                    </p>
                    
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <!-- <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div> -->
                    <div class="pull-right">
                      <a href="logout.php" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      
         
        

       

      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="dist/img/burhan2.png" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">

              <p>
                <a class="navbar-brand" nohref><?php echo "".$_SESSION['username']; ?></a>
              </p>

              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- search form -->
          <form action="pages/user/lihatlapor.php" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="cari" class="form-control" placeholder="Search ID Lapor Kamu..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                 <?php
                if(isset($_GET['cari'])){
                  $cari = $_GET['cari'];
                  $query = mysql_query("select * from laporan where id_laporan like '%".$cari."%'");
                } else {
                  $query = mysql_query("SELECT  id_laporan, kolom_laporan, status  FROM laporan");
                }
          
                while ($data = mysql_fetch_array($query)) {
                ?>

                <?php }
              
          ?>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN MENU</li>
            </li>
            <li>
            <a href="lapor.php"><i class="fa fa-home"></i>Home</a>
            </li>
            <li>
            <a href="pages/user/lihatlapor.php"><i class="fa fa-tag"></i>Lihat Laporan</a>
            </li>
            <!-- <li>
            <a href="pages/carilapor.php"><i class="fa fa-search"></i>Tracking Laporan</a>
            </li> -->
            <li class="active treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>BIRO-BIRO</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li class="active"><a href="https://baa.undip.ac.id/" target="_blank"><i class="fa fa-circle-o"></i> Biro Administrasi Akademik</a></li>
                <li><a href="https://bak.undip.ac.id/" target="_blank"><i class="fa fa-circle-o"></i> Biro Administrasi Kemahasiswaan</a></li>
                <li><a href="http://bauk.undip.ac.id" target="_blank"><i class="fa fa-circle-o"></i> Biro Administrasi Umum Dan Keuangan</a></li>
                <li><a href="https://bapsi.undip.ac.id/" target="_blank"><i class="fa fa-circle-o"></i> BAPSI</a></li>
              </ul>
            </li>
            
            <li>
          
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-group"></i>
                <span>LEMBAGA DAN UPT</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="http://lp2mp.undip.ac.id/" target="_blank"><i class="fa fa-circle-o"></i> LP2MP</a></li>
                <li><a href="http://lppm.undip.ac.id/v1/" target="_blank"><i class="fa fa-circle-o"></i> LPPM</a></li>
                <li><a href="http://uptpuskom.undip.ac.id/v2/" target="_blank"><i class="fa fa-circle-o"></i> UPT Pusat Komputer</a></li>
                <li><a href="http://labterpadu.undip.ac.id/" target="_blank"><i class="fa fa-circle-o"></i> UPT LAB Terpadu</a></li>
                <li><a href="http://digilib.undip.ac.id/v3/" target="_blank"><i class="fa fa-circle-o"></i> UPT Perpustakaan</a></li>
                <li><a href="phttp://press.undip.ac.id/cgi-sys/suspendedpage.cgi" target="_blank"><i class="fa fa-circle-o"></i> UPT UNDIP PRESS</a></li>
                <li><a href="https://www.undip.ac.id/language/id/upt-humas" target="_blank"><i class="fa fa-circle-o"></i> UPT Humas</a></li>

              </ul>
            </li>
           
            </li>
            <li>
              <a href="https://www.undip.ac.id/language/id/archives/category/beranda" target="_blank">
                <i class="fa fa-bullhorn"></i> <span>Berita Terkini Undip</span>
               
              </a>
            </li>
            <li>
              <a href="pages/tentangkami.php" >
                <i class="fa fa-cog"></i> <span>Tentang Kami</span>
               
              </a>
            </li>
            <li><a href="pages/panduan.php"><i class="fa fa-book"></i>Panduan LAPOR</a>
            </li>
            <li>
              <a href="pages/mailbox/kontakkami.php">
                <i class="fa fa-phone"></i> <span>Kontak Kami</span>
               
              </a>
            </li>
         
            </li>
            
           
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Right side column. Contains the navbar and content of the page -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content">
        <div class="row">
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Ajukan Laporanmu</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <?php
            $carikode = mysql_query("select max(user_id) from laporan") or die (mysql_error());
            $datakode = mysql_fetch_array($carikode);
            if($datakode) {
              $nilaikode = substr($datakode[0], 0);
              $kode = (int) $nilaikode;
              $kode = $kode + 1;
              $hasilkode = "".str_pad($kode, 2, "0", STR_PAD_LEFT);
            } else {
                  $hasilkode = "100";

            }
            ?>

            <form action="aksi_lapor.php" method="post" enctype="multipart/form-data" id="form1">
            <form role="form"> 
              <div class="box-body">
              <div class="form-group">  
                <h5>Sebelum melakukan laporan, pastikan sudah membaca dan memahami panduan LAPOR</h5>
                <!-- <td><input name="id_laporan" type="text" class="form-control" maxlength="20" value="";?></td>
                </div> -->
                <td><textarea style="resize:none" class="form-control" rows="12"  name="kolom_laporan" placeholder="Masukan Laporan kamu disini..." ></textarea></td>
                <div>
                </div>
                <div class="form-group">
                 <div class="input-group input-group-lg">
                <div class="input-group-btn">
          
                </div>
                <label>Kategori</label>
                <select  class="form-control select2" style="width: 100%;" name="nama_kategori">
                  <?php
                  foreach ($data_kategori as $key => $dk) {
                    echo '<option value="'.$dk->id_kategori.'">'.$dk->kategori.'</option>';
                  }
                  ?>
                  <option value="akademik">Akademik</option>
                  <option value="kemahasiswaan">Kemahasiswaan</option>
                  <option value="sarana_dan_prasarana">Sarana dan Prasarana</option>
                  <option value="lainya">Lainya</option>
                </select>
                </div>
                </div>
                
                <div class="form-group">
                  <label for="exampleInputFile">Unggah Data Dukung</label>
                  <input type="file" name="file">
                  <div class="form-group">
                  <!-- <input type="submit" name="upload" value="Upload" class="btn btn-primary" > -->
                 
                  </div>
                  <p class="help-block"></p>
                </div>
                <div class="form-group">
            
                <!-- <label>ID User</label>
                <p>

                <input type="text" name="user_id" value="<?php echo $hasilkode; ?>" readonly>
                 <div class="form-group"> -->
              <div class="box-footer">
              
                 <td colspan="3"><input name="simpan" type="submit" value="Lapor" class="btn btn-primary"></td>
              </div>
              </div>
              </div>
              <!-- /.box-body -->
              
              <!-- <div class="box-footer">
                <button type="submit" class="btn btn-primary">Lapor</button>
              </div> -->
            </form>
            </form>
          </div>

        </div>
        <!--/.col (left) -->
        <!-- right column -->
        
      <!-- /.row -->
    </section>
           
          <div class="row">
            
            
            </section><!-- right col -->
          </div><!-- /.row (main row) -->

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 1.0
        </div>
        <strong>Copyright &copy; 2018 <a href="http://facebook.com/mburhann9">Muhammad Burhanudin</a>.</strong> All rights reserved.
      </footer>
    </div><!-- ./wrapper -->
    <script type="text/javascript">
      $(document).ready(function(){
        $("#example1").dataTable();
        });
    </script>
    <!-- jQuery 2.1.3 -->
    <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- jQuery UI 1.11.2 -->
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.min.js" type="text/javascript"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>    
    <!-- Morris.js charts -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="plugins/morris/morris.min.js" type="text/javascript"></script>
    <!-- Sparkline -->
    <script src="plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <!-- jvectormap -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
    <!-- jQuery Knob Chart -->
    <script src="plugins/knob/jquery.knob.js" type="text/javascript"></script>
    <!-- daterangepicker -->
    <script src="plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <!-- datepicker -->
    <script src="plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <!-- Slimscroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js" type="text/javascript"></script>

    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="dist/js/pages/dashboard.js" type="text/javascript"></script>

    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js" type="text/javascript"></script>
      <!-- <?php include_once('cek-akses.php');
      ?> -->
     <!-- DATA TABES SCRIPT -->
    <script src="plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
    <script src="plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
     
     <!-- page script -->
    <script type="text/javascript">
      $(function () {
        $("#example1").dataTable();
        $('#example2').dataTable({
          "bPaginate": true,
          "bLengthChange": false,
          "bFilter": false,
          "bSort": true,
          "bInfo": true,
          "bAutoWidth": false
        });
      });
    </script>
  </body>
</html>