<?php
session_start();
include ('../../koneksi.php');
include ('../../config.php');
include_once('../../cek-akses.php');
if(empty($_SESSION['username'])){
header("location: ../../index.php");
}
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Lihat LAPOR</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- DATA TABLES -->
    <link href="../../plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="../../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="../../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

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
        <a href="../../lapor.php" class="logo"><b></b>LAPOR</a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="../../dist/img/burhan2.png" class="user-image" alt="User Image"/>
                  <span class="hidden-xs"> <?php echo "Wellcome ".$_SESSION['username']; ?></span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="../../dist/img/burhan2.png" class="img-circle" alt="User Image" />
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
                      <a href="../../logout.php" class="btn btn-default btn-flat">Sign out</a>
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
              <img src="../../dist/img/burhan2.png" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
             <p>
                <a class="navbar-brand" nohref><?php echo "".$_SESSION['username']; ?></a>
              </p>

              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <form action="lihatlapor.php" method="get" class="sidebar-form">
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
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
          <!DOCTYPE html>
            <li class="header">MAIN MENU</li>
            <li>
            <a href="../../lapor.php"><i class="fa fa-home"></i>Home</a>
            </li>
            <li>
            <a href="lihatlapor.php"><i class="fa fa-tag"></i>Lihat Laporan</a>
            </li>
          <!--   <li>
            <a href="carilapor.php"><i class="fa fa-search"></i>Tracking Laporan</a>
            </li> -->
            <li class="active treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>BIRO-BIRO</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li class="active"><a href="https://baa.undip.ac.id/" target="_blank"><i class="fa fa-circle-o"></i> Biro Administrasi Akademik</a></li>
                <li><a href="https://bak.undip.ac.id/"><i class="fa fa-circle-o" target="_blank"></i> Biro Administrasi Kemahasiswaan</a></li>
                <li><a href="http://bauk.undip.ac.id"><i class="fa fa-circle-o" target="_blank"></i> Biro Administrasi Umum Dan Keuangan</a></li>
                <li><a href="https://bapsi.undip.ac.id/"><i class="fa fa-circle-o" target="_blank"></i> BAPSI</a></li>
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
              <a href="../../pages/tentangkami.php">
                <i class="fa fa-cog"></i> <span>Tentang Kami</span>
               
              </a>
            </li>
            <li>
            <a href="../../pages/panduan.php"><i class="fa fa-book"></i>Panduan LAPOR</a>
            </li> 
            <li>
              <a href="../../pages/mailbox/kontakkami.php">
                <i class="fa fa-phone"></i> <span>Kontak Kami</span>
               </a>
            </li>
         
            </li>
           </li>
            
           
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
      <!-- Right side column. Contains the navbar and content of the page -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Laporan Masuk
            <small></small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Lihat Lapor</a></li>
            <li class="active"></li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
             

              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Kategori Laporan</h3>
                  <div>
                  <a role="button" class="btn btn-primary btmmargin" href="lihatlaporakademik.php"> Akademik
                  <span class="glyphicon" aria-hidden="true"></span>
                  </a> 

                  <a role="button" class="btn btn-primary btmmargin" href="lihatlaporkemahasiswaan.php"> Kemahasiswaan
                  <span class="glyphicon" aria-hidden="true"></span>
                  </a>

                  <a role="button" class="btn btn-primary btmmargin" href="lihatlaporsarpras.php"> SarPras
                  <span class="glyphicon" aria-hidden="true"></span>
                  </a> 

                  <a role="button" class="btn btn-primary btmmargin" href="lihatlaporlainya.php"> Lainnya
                  <span class="glyphicon" aria-hidden="true"></span>
                  </a>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        
                  <th style="width: 10px">No</th>
                  <th style="width: 80px" >ID Laporan</th>
                  <th style="text-align: center;">Laporan</th>
                  <th style="text-align: center;">Status</th>

                      </tr>

                    </thead>
                    
                    <tbody>

<?php
                if(isset($_GET['cari'])){
                  $cari = $_GET['cari'];
                  $query = mysql_query("select * from laporan where id_laporan like '%".$cari."%'");
                } else {
                  $query = mysql_query("SELECT  id_laporan, kolom_laporan, status  FROM laporan where nama_kategori='Lainya' AND ket_lap='1'");
                }
          $no = 1;
          while($row = mysql_fetch_array($query))
          {
        ?>
          <tr>
            <!-- put data which we want to show via table -->
            <td> <?php echo $no++; ?></td>
            <td style="text-align: center;"><?php echo $row['id_laporan'] ?></td>
            <td><?php echo $row['kolom_laporan'] ?></td>
            <td><?php echo $row['status'] ?></td>
            
          
          </tr>  
          <?php }
          ?>  
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 2.0
        </div>
        <strong>Copyright &copy; 2018 <a href="http://facebook.com/mburhann9">Muhammad Burhanudin</a>.</strong> All rights reserved.
      </footer>
    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.3 -->
    <script src="../../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- DATA TABES SCRIPT -->
    <script src="../../plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
    <script src="../../plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
    <!-- SlimScroll -->
    <script src="../../plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='../../plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="../../dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../../dist/js/demo.js" type="text/javascript"></script>
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
