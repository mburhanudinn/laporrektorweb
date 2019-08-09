<?php
session_start();


include ('../../koneksi.php');
include ('../../config.php');
include_once('../../cek-akses-admin.php');
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>ADMIN LAPOR REKTOR</title>
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
  <meta http-equiv="refresh" content="1800"/>
  <body class="skin-blue">
    <div class="wrapper">
      
      <header class="main-header">
        <a href="adminlapornew.php" class="logo"><b></b>ADMIN LAPOR</a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
             
              <!-- Notifications: style can be found in dropdown.less -->
              
              <!-- Tasks: style can be found in dropdown.less -->
              
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                 
                  <span class="hidden-xs"> <?php echo "Logout" ?></span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="../../dist/img/burhan2.png" class="img-circle" alt="User Image" />
                    <p>
                      <a style="width: 100%" class="navbar-brand" nohref><?php echo "Admin LAPOR" ?></a>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                    <p style="text-align: center;">
               
                    Hallo Selamat Datang <?php echo "Admin" ?> di Layanan Aspirasi dan Pengaduan Online Kepada Rektor (LAPOR) Universitas Diponegoro
                  
                    </p>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <!-- <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div> -->
                    <div class="pull-right">
                      <a href="../../logoutadmin.php" class="btn btn-default btn-flat">Sign out</a>
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
                <a class="navbar-brand" nohref><?php echo "Admin" ?></a>
              </p>

              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- search form -->
         <!--  <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form> -->
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN MENU</li>
            
            <li class="active treeview">
              <a href="#">
                <i class="fa fa-envelope"></i> <span>Laporan Baru</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li class="active"><a href="akademikbaru2.php" ><i class="fa fa-circle-o"></i> Akademik</a></li>
                <li><a href="kemahasiswaanbaru2.php" target="_blank"><i class="fa fa-circle-o"></i> Kemahasiswaan</a></li>
                <li><a href="sarprasbaru2.php" target="_blank"><i class="fa fa-circle-o"></i> Sarana dan Prasarana</a></li>
                <li><a href="lainyabaru2.php" target="_blank"><i class="fa fa-circle-o"></i> Lainya</a></li>
              </ul>
            </li>

            <li>
              <a href="adminlapor.php">
                <i class="fa fa-home"></i> <span>Laporan Masuk</span>
               
              </a>
            </li>
            
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
         
            </li>
            <li><a href="dataadmin.php"><i class="fa fa-key"></i>Data Admin</a>
            </li>

            </li>
            <li><a href="datauser.php"><i class="fa fa-user"></i>Data User</a>
            </li>

             </li>
            <li><a href="trash.php"><i class="fa fa-trash"></i>Trash</a>
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
            <li><a href="#">Laporan</a></li>
            <li class="active">Data Lapor</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
            

              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Laporan Baru</h3>
                  <div>
                  <!-- <a role="button" class="btn btn-primary btmmargin" href="akademik.php"> Akademik
                  <span class="glyphicon" aria-hidden="true"></span>
                  </a> 

                  <a role="button" class="btn btn-primary btmmargin" href="kemahasiswaan.php"> Kemahasiswaan
                  <span class="glyphicon" aria-hidden="true"></span>
                  </a>

                  <a role="button" class="btn btn-primary btmmargin" href="sarpras.php"> SarPras
                  <span class="glyphicon" aria-hidden="true"></span>
                  </a> 

                  <a role="button" class="btn btn-primary btmmargin" href="lainya.php"> Lainnya
                  <span class="glyphicon" aria-hidden="true"></span>
                  </a> -->
                </div><!-- /.box-header -->
                <div class="box-body">

                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        
                  <th style="width: 10px">No</th>
                  <th style="text-align: center; width: 100px">ID Laporan</th>
                  <th style="text-align: center; width: 350px">Laporan</th>
                  <!-- <th style="text-align: center; width: 140px">Kategori</th> -->
                  <th style="text-align: center; width: 150px">Status Laporan</th>
                  
                  <th style="text-align: center; width: 225px">Aksi </th>

                      </tr>

                    </thead>
                    
                    <tbody>
                    <?php
          
                    include ("../../config.php");
          
       if(isset($_GET['cari'])){
                  $cari = $_GET['cari'];
                  $query = mysql_query("select * from laporan where id_laporan like '%".$cari."%'");
                } else {
                  $query = mysql_query("SELECT * FROM laporan where ket_lap='1' AND status_lap='new'");
                }
          $no = 1;
                while ($data = mysql_fetch_array($query)) {
                ?>

            <tr>
            <td> <?php echo $no++; ?></td>
            <td  style="text-align: center;"> <?php echo $data['id_laporan'];?></td>
            <td style="text-align: justify;"> <?php echo $data['kolom_laporan'];?></td>
            <!-- <td style="text-align: center;"> <?php echo $data['nama_kategori'];?></td> -->
            <td style="text-align: center;"> belum ditindaklanjuti</td>
            
            <td class="text-center">
                <a href="../../detailadminlaporr.php?id_laporan=<?php echo $data['id_laporan']; ?>"> 
                <span  class="glyphicon glyphicon-tags" aria-hidden="true">Detail</span></a>  |
                <!-- <a href='adminlapor.php'> 
                <span  class="glyphicon glyphicon-check" aria-hidden="true">Setujui</span></a>  |
 -->
                <a href="lanjutanlaporan.php?id_laporan=<?php echo $data['id_laporan'] ?>" onclick="javascript: return confirm('Anda yakin lanjutkan laporan ?')">

               <span class="glyphicon glyphicon-send" aria-hidden="true">Lanjutkan</span></a>   |


              <a href="../../tolakadminlapornew.php?id_laporan=<?php echo $data['id_laporan'] ?>" onclick="javascript: return confirm('Anda yakin tolak laporan ?')">

               <span class="glyphicon glyphicon-remove" aria-hidden="true">Tolak</span></a>

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
      <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Ubah Status Laporan</h4>
                </div>
                <div class="modal-body">
                    <div class="fetched-data"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Keluar</button>
                </div>
            </div>
        </div>
    </div>
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 2.0
        </div>
        <strong>Copyright &copy; 2018 <a href="http://facebook.com/mburhann9">Muhammad Burhanudin</a>.</strong> All rights reserved.
      </footer>
    </div>

    <div id="notif"></div>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js";;></script>
    <script type="text/javascript">
    var last = 0;
    function check(){
      var url = 'cek.php?last='+last;
      $.get(url, {}, function(resp){
        if(resp.result != false){
          $("#notif").html(resp.result);
          last = resp.last;
        }
        setTimeout("check()", 500);
      }, 'json');
    }
    $(document).ready(function(){
      check();
    });
    </script>
    <!-- ./wrapper -->

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
    <script type="text/javascript">
    $(document).ready(function(){
        $('#myModal').on('show.bs.modal', function (e) {
            var id_laporan = $(e.relatedTarget).data('id_laporan');
            //menggunakan fungsi ajax untuk pengambilan data
            $.ajax({
                type : 'post',
                url : 'detaillapor.php',
                data :  'id_laporan='+ id_laporan,
                success : function(data){
                $('.fetched-data').html(data);//menampilkan data ke dalam modal
                }
            });
         });
    });
  </script>
  </body>
</html>
