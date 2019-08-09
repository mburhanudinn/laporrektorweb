<?php
session_start();

  if(empty($_SESSION['useradmin']) and empty($_SESSION['password'])){
  header("location:login.php");
  }
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>ADMIN LAPOR REKTOR</title>
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

   

    <link rel="stylesheet" href="materialize/css/materialize.css">
        <link rel="stylesheet" href="plugins/materialize/css/custom.css">
        <link href="plugins/materialicon/icon.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="fonts/fontawesome/font-awesome.min.css">
        <script src="plugins/jQuery/jquery-1.12.2.js" charset="utf-8"></script>
        <script src="plugins/materialize/js/materialize.js" charset="utf-8"></script>

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
        <a href="pages/admin/lainyabaru.php" class="logo"><b></b>LAINYA</a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
             
              <!-- Notifications: style can be found in dropdown.less -->
              <li class="dropdown notifications-menu">
               
              <!-- User Account: style can be found in dropdown.less -->
             <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <!-- <img src="dist/img/burhan2.png" class="user-image" alt="User Image"/> -->
                  <span class="hidden-xs"> <?php echo "Logout"?></span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="dist/img/burhan2.png" class="img-circle" alt="User Image" />
                    <p>
                      <a style="width: 100%" class="navbar-brand" nohref><?php echo "Admin" ?></a>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                    <p style="text-align: center;">
               
                    Hallo Selamat Datang <?php echo ""?> di Layanan Aspirasi dan Pengaduan Online Kepada Rektor (LAPOR) Universitas Diponegoro
                  
                    </p>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <!-- <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div> -->
                    <div class="pull-right">
                      <a href="logoutadmin.php" class="btn btn-default btn-flat">Sign out</a>
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
                <a class="navbar-brand" nohref><?php echo "Admin "?></a>
              </p>

              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- search form -->
          <!-- <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form> -->
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN MENU</li>
            <li>
              <a href="pages/admin/lainyabaru.php">
                <i class="fa fa-envelope"></i> <span>Laporan Lainya</span>
               
              </a>
            </li>
            <!-- <li>
              <a href="pages/admin/adminlapor.php">
                <i class="fa fa-home"></i> <span>Laporan Masuk</span>
               
              </a>
            </li> -->
            <li class="active treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>BIRO-BIRO</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li class="active"><a href="https://baa.undip.ac.id/"><i class="fa fa-circle-o"></i> Biro Administrasi Akademik</a></li>
                <li><a href="https://bak.undip.ac.id/"><i class="fa fa-circle-o"></i> Biro Administrasi Kemahasiswaan</a></li>
                <li><a href="http://bauk.undip.ac.id"><i class="fa fa-circle-o"></i> Biro Administrasi Umum Dan Keuangan</a></li>
                <li><a href="https://bapsi.undip.ac.id/"><i class="fa fa-circle-o"></i> BAPSI</a></li>
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
                <li><a href="http://lp2mp.undip.ac.id/"><i class="fa fa-circle-o"></i> LP2MP</a></li>
                <li><a href="http://lppm.undip.ac.id/v1/"><i class="fa fa-circle-o"></i> LPPM</a></li>
                <li><a href="http://uptpuskom.undip.ac.id/v2/"><i class="fa fa-circle-o"></i> UPT Pusat Komputer</a></li>
                <li><a href="http://labterpadu.undip.ac.id/"><i class="fa fa-circle-o"></i> UPT LAB Terpadu</a></li>
                <li><a href="http://digilib.undip.ac.id/v3/"><i class="fa fa-circle-o"></i> UPT Perpustakaan</a></li>
                <li><a href="phttp://press.undip.ac.id/cgi-sys/suspendedpage.cgi"><i class="fa fa-circle-o"></i> UPT UNDIP PRESS</a></li>
                <li><a href="https://www.undip.ac.id/language/id/upt-humas"><i class="fa fa-circle-o"></i> UPT Humas</a></li>

              </ul>
            </li>
           
            </li>
         
            <!-- </li>
            <li><a href="pages/admin/dataadmin.php"><i class="fa fa-key"></i>Data Admin</a>
            </li>

            </li>
            <li><a href="pages/admin/datauser.php"><i class="fa fa-user"></i>Data User</a>
            </li> -->
           
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Right side column. Contains the navbar and content of the page -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content">
   
        <div class="col-md-12">
        <div class="box">
            <div class="box-header">
              <h1 style="font-size: 30px"class="box-title">Laporan Masuk</h1>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
          <!-- Horizontal Form -->
        <tr>
                  
                  <th style="text-align: center; width: 120px">ID Laporan</th>
                  <th style="text-align: center;">Nama Pelapor</th>
                  <th style="text-align: center;">Laporan</th>
                  <th style="text-align: center; width: 140px">Kategori</th>
                  <th style="text-align: center; width: 150px">Status Laporan</th>
                  <th style="text-align: center; width: 150px">Data Dukung</th>
                  <!-- <th style="text-align: center; width: 150px">Teruskan</th>
 -->                  
                </tr>
                
                </thead>
                <tbody>
                  <?php

                include ('koneksi.php');
                include ('config.php');
                include_once('cek-akses-admin.php');  

               $id_laporan = $_GET['id_laporan']; //id=hp

  
  //doing read process from database
  $query = mysql_query("select id_laporan, nama, kolom_laporan, nama_kategori, status, foto_laporan from laporan inner join user using (user_id) where id_laporan='$id_laporan'");
  $data = mysql_fetch_array($query);
  ?>

            <tr>
            
            <td  style="text-align: center;"> <?php echo $data['id_laporan'];?></td>
            <td  style="text-align: center;"> <?php echo $data['nama'];?></td>
            <td style="text-align: justify;"> <?php echo $data['kolom_laporan'];?></td>
            <td style="text-align: center;"> <?php echo $data['nama_kategori'];?></td>
            <td style="text-align: center;"> <?php echo $data['status'];?></td>
            <td style="text-align: center;" > <image  width="250" src="lapor/foto/<?php echo $data ['foto_laporan']; ?>" / ></td>
            <!-- <td class="text-center">
            <a href="pages/admin/pindahakademik.php?id_laporan=<?php echo $data['id_laporan'] ?>" onclick="javascript: return confirm('Anda yakin pindah ke Akademik ?')">

               <span class="glyphicon glyphicon-send" aria-hidden="true">Pindah Akademik</span></a> -->
            
           
</tbody>
              </table>
            </div>
      <!-- /.row -->
    </section>

        
            
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
    <meta charset="utf-8">
    <script src="lib/jquery-2.2.0.min.js" charset="utf-8"></script>
    <style media="screen">
      body { width: 100%; height: 100%; background: grey; margin: 0; }
      main { width: 100%; height: 100%; position: absolute; }
      #my_image {width: 200px; margin: 20px; cursor: zoom-in;}
      #my_image:hover {opacity: 0.7;}
      #appear_image_div {width: 100%; height: 100%; position: absolute; z-index: 10; opacity: 0.7; background: #002447;}
      #appear_image {display: block; margin: auto; position: relative; z-index: 11; top: 20px;}
      #close_image {position: fixed; z-index: 12; top: 20px; right: 20px; cursor: pointer;
      font-family: sans-serif; color: #fff; font-size: 15pt;}
      #close_image:hover{opacity: 0.7;}
    </style>
    <script type="text/javascript">
      jQuery(function($){
        $('#my_image').click(function(){
          var img = $(this).attr("src");
          var appear_image = "<div id='appear_image_div' onclick='closeImage()'></div>";
          appear_image = appear_image.concat("<img id='appear_image' src='"+img+"' />");
          appear_image = appear_image.concat("<div id='close_image' onclick='closeImage()'>x</div>");
          $('body').append(appear_image);
        });
      });
      function closeImage() {
        $('#appear_image_div').remove();
        $('#appear_image').remove();
        $('#close_image').remove();
      }
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

    
  </body>
</html>