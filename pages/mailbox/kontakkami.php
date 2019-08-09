<?php
session_start();
// include_once('koneksi.php');
if(empty($_SESSION['username'])){
header("location: ../../index.php");
}
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>LAPOR REKTOR</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- fullCalendar 2.2.5-->
    <link href="../../plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css" />
    <link href="../../plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet" type="text/css" media='print' />
    <!-- Theme style -->
    <link href="../../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link href="../../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="../../plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />
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
           
              <!-- User Account: style can be found in dropdown.less -->
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
          <!-- search form -->
          <form action="../user/lihatlapor.php" method="get" class="sidebar-form">
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
            <li>
            <a href="../../lapor.php"><i class="fa fa-home"></i>Home</a>
            </li>
            <li>
            <a href="../user/lihatlapor.php"><i class="fa fa-tag"></i>Lihat Laporan</a>
            </li>
            <!-- <li>
            <a href="../carilapor.php"><i class="fa fa-search"></i>Tracking Laporan</a>
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
              <a href="https://www.undip.ac.id/language/id/archives/category/beranda">
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
            
           
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Right side column. Contains the navbar and content of the page -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Kontak Kami
            <small></small>
          </h1>
            
          <ol class="breadcrumb">
            <li><a href="../../lapor.php"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Kontak Kami</li>
          </ol>
          <div class="box">
            <div class="box-header with-border">
              
              <div class="box-tools pull-right">
                
              </div>
            </div>
            <div style="text-align: center" class="box-body" >
              Kontak kami di  (024) 7465403, Fax(024) 7465404 
              
            </div><!-- /.box-body -->
            <div style="text-align: center" class="box-footer">
              Kontak kami bila membutuhkan bantuan lebih lanjut
            </div><!-- /.box-footer-->
          </div><!-- /.box -->

          <h4 class="page-header" >
            
            <small></small>
          </h4>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 2.0
        </div>
        <strong>Copyright &copy; 2018 <a href="http://almsaeedstudio.com">Muhammad Burhanudin</a>.</strong> All rights reserved.
      </footer>
    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.3 -->
    <script src="../../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Slimscroll -->
    <script src="../../plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='../../plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="../../dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../../dist/js/demo.js" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="../../plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <!-- Page Script -->
    <script>
      $(function () {
        //Enable iCheck plugin for checkboxes
        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"]').iCheck({
          checkboxClass: 'icheckbox_flat-blue',
          radioClass: 'iradio_flat-blue'
        });

        //Enable check and uncheck all functionality
        $(".checkbox-toggle").click(function () {
          var clicks = $(this).data('clicks');
          if (clicks) {
            //Uncheck all checkboxes
            $("input[type='checkbox']", ".mailbox-messages").iCheck("uncheck");
          } else {
            //Check all checkboxes
            $("input[type='checkbox']", ".mailbox-messages").iCheck("check");
          }
          $(this).data("clicks", !clicks);
        });

        //Handle starring for glyphicon and font awesome
        $(".mailbox-star").click(function (e) {
          e.preventDefault();
          //detect type
          var $this = $(this).find("a > i");
          var glyph = $this.hasClass("glyphicon");
          var fa = $this.hasClass("fa");          

          //Switch states
          if (glyph) {
            $this.toggleClass("glyphicon-star");
            $this.toggleClass("glyphicon-star-empty");
          }

          if (fa) {
            $this.toggleClass("fa-star");
            $this.toggleClass("fa-star-o");
          }
        });
      });
    </script>
  </body>
</html>