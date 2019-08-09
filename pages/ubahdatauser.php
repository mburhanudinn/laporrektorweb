<?php
session_start();
// include_once('koneksi.php');
if(empty($_SESSION['username'])){
header("location: ../indexadmin.php");
}
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>UBAH DATA USER LAPOR</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- fullCalendar 2.2.5-->
    <link href="../plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css" />
    <link href="../plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet" type="text/css" media='print' />
    <!-- Theme style -->
    <link href="../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

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
        <a href="admin/adminlapor.php" class="logo"><b></b>LAPOR</a>
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
              <li class="dropdown notifications-menu">
                
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="../dist/img/burhan2.png" class="user-image" alt="User Image"/>
                  <span class="hidden-xs"> <?php echo "Wellcome ".$_SESSION['username']; ?></span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="../dist/img/burhan2.png" class="img-circle" alt="User Image" />
                    <p>
                      <a style="width: 100%" class="navbar-brand" nohref><?php echo "".$_SESSION['username']; ?></a>
                    </p>
                  </li>
                  <li class="user-body">
                  <p style="text-align: center;">
               
                    Hallo Selamat Datang <?php echo "".$_SESSION['username']; ?> di Layanan Aspirasi dan Pengaduan Online Kepada Rektor (LAPOR) Universitas Diponegoro
                  
                    </p>
                  </li>
                  <li class="user-footer">
                    <!-- <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div> -->
                    <div class="pull-right">
                      <a href="../logout.php" class="btn btn-default btn-flat">Sign out</a>
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
              <img src="../dist/img/burhan2.png" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p>
                <a class="navbar-brand" nohref><?php echo "".$_SESSION['username']; ?></a>
              </p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- search form -->
           <form action="../adminlapor.php" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="cari" class="form-control" placeholder="Search ID Lapor Kamu..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                 <?php
                if(isset($_GET['cari'])){
                  $cari = $_GET['cari'];
                  $query = mysql_query("select * from laporan where id_laporan like '%".$cari."%'");
                } else {
                  $query = mysql_query("SELECT  id_laporan, kolom_laporan, nama_kategori, status, foto_laporan  FROM laporan");
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
          <!DOCTYPE html>
            <li class="header">MAIN MENU</li>
            <li>
              <a href="admin/adminlapor.php">
                <i class="fa fa-calendar"></i> <span>Menu Utama</span>
              </a>
            </li>
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
                <i class="fa fa-pie-chart"></i>
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
           <!--  <li>
              <a href="../pages/tentangkamiadmin.php">
                <i class="fa fa-calendar"></i> <span>Tentang Kami</span>
               
              </a>
            </li>
            <li>
              <a href="../pages/mailbox/kontakkamiadmin.php">
                <i class="fa fa-envelope"></i> <span>Kontak Kami</span>
               </a>
            </li> -->
         
            </li>
            <li><a href="admin/dataadmin.php"><i class="fa fa-key"></i>Data Admin</a>
            </li>
           
            </li>
            <li><a href="admin/datauser.php"><i class="fa fa-user"></i>Data User</a>
            </li>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Right side column. Contains the navbar and content of the page -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content">
   
        <div class="col-md-12">
          <!-- Horizontal Form -->
         <?php
  //put file which is connected to database
  include ('../koneksi.php');
  include ('../config.php');
  include_once('../cek-akses-admin.php');

  
  //take all parameters through get method
  $user_id = $_GET['user_id']; //id=hp

  
  //doing read process from database
  $query = mysql_query("select user_id, username, nama, nim, jurusan, fakultas, angkatan from user where user_id='$user_id'");
  $data = mysql_fetch_array($query);
  ?>

          </div>
          <div class="box box-warning">
          <div class="box-header">
          <div class="container">
    <h2 class="title" style="text-align: center">Ubah Data User</h2>
    <form class="form-horizontal" action="updateuser.php" method="post" role="form">
  
       <div class="form-group">
        <label class="col-sm-2 control-label">User Id</label>
        <div class="col-sm-10">
          <input style="width: 150px" class="form-control" name="user_id" type="text" value="<?php echo $data['user_id'];?>" readonly>
        </div>
      </div> 

      <div class="form-group">
        <label class="col-sm-2 control-label">Nama Lengkap</label>
        <div class="col-sm-10">
          <input style="width: 200px" class="form-control" name="nama" type="text" value="<?php echo $data['nama'];?>" readonly>
        </div>
      </div> 

       <div class="form-group">
        <label class="col-sm-2 control-label">Username</label>
        <div class="col-sm-10">
          <input style="width: 150px" class="form-control" name="username" type="text" value="<?php echo $data['username'];?>" disabled>
        </div>
      </div> 

      

       <div class="form-group">
        <label class="col-sm-2 control-label">NIM</label>
        <div class="col-sm-10">
          <input style="width: 150px" class="form-control" name="nim" type="text" value="<?php echo $data['nim'];?>">
        </div>
      </div> 

       <div class="form-group">
        <label class="col-sm-2 control-label">Jurusan</label>
        <div class="col-sm-10">

          <input style="width: 200px" class="form-control" name="jurusan" type="text" value="<?php echo $data['jurusan'];?>">
        </div>
      </div> 
      
       <div class="form-group">
        <label  class="col-sm-2 control-label">Fakultas</label>
        <div class="col-sm-10">
          <input style="width: 200px"class="form-control" name="fakultas" type="text" value="<?php echo $data['fakultas'];?>">
        </div>
      </div>   
      
       <div class="form-group">
        <label class="col-sm-2 control-label">Angkatan</label>
        <div class="col-sm-10">
          <input style="width: 200px" class="form-control" name="angkatan" type="text" value="<?php echo $data['angkatan'];?>">
        </div>
      </div> 

      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <button type="submit" class="btn btn-success" value="Simpan Perubahan">Simpan Perubahan</button>
        </div>
      </div>
      

      <!-- /.row -->
    </section>

           
          
            
            </section><!-- right col -->
          </div><!-- /.row (main row) -->

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
    <script src="../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- jQuery UI 1.11.1 -->
    <script src="//code.jquery.com/ui/1.11.1/jquery-ui.min.js" type="text/javascript"></script>
    <!-- Slimscroll -->
    <script src="../plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='../plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../dist/js/demo.js" type="text/javascript"></script>
    <!-- fullCalendar 2.2.5 -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.7.0/moment.min.js" type="text/javascript"></script>
    <!-- <script src="../plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script> -->
    <!-- Page specific script -->
    <script type="text/javascript">
      $(function () {

        /* initialize the external events
         -----------------------------------------------------------------*/
        function ini_events(ele) {
          ele.each(function () {

            // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
            // it doesn't need to have a start or end
            var eventObject = {
              title: $.trim($(this).text()) // use the element's text as the event title
            };

            // store the Event Object in the DOM element so we can get to it later
            $(this).data('eventObject', eventObject);

            // make the event draggable using jQuery UI
            $(this).draggable({
              zIndex: 1070,
              revert: true, // will cause the event to go back to its
              revertDuration: 0  //  original position after the drag
            });

          });
        }
        ini_events($('#external-events div.external-event'));

        /* initialize the calendar
         -----------------------------------------------------------------*/
        //Date for the calendar events (dummy data)
        var date = new Date();
        var d = date.getDate(),
                m = date.getMonth(),
                y = date.getFullYear();
        $('#calendar').fullCalendar({
          header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
          },
          buttonText: {
            today: 'today',
            month: 'month',
            week: 'week',
            day: 'day'
          },
          //Random default events
          events: [
            {
              title: 'All Day Event',
              start: new Date(y, m, 1),
              backgroundColor: "#f56954", //red
              borderColor: "#f56954" //red
            },
            {
              title: 'Long Event',
              start: new Date(y, m, d - 5),
              end: new Date(y, m, d - 2),
              backgroundColor: "#f39c12", //yellow
              borderColor: "#f39c12" //yellow
            },
            {
              title: 'Meeting',
              start: new Date(y, m, d, 10, 30),
              allDay: false,
              backgroundColor: "#0073b7", //Blue
              borderColor: "#0073b7" //Blue
            },
            {
              title: 'Lunch',
              start: new Date(y, m, d, 12, 0),
              end: new Date(y, m, d, 14, 0),
              allDay: false,
              backgroundColor: "#00c0ef", //Info (aqua)
              borderColor: "#00c0ef" //Info (aqua)
            },
            {
              title: 'Birthday Party',
              start: new Date(y, m, d + 1, 19, 0),
              end: new Date(y, m, d + 1, 22, 30),
              allDay: false,
              backgroundColor: "#00a65a", //Success (green)
              borderColor: "#00a65a" //Success (green)
            },
            {
              title: 'Click for Google',
              start: new Date(y, m, 28),
              end: new Date(y, m, 29),
              url: 'http://google.com/',
              backgroundColor: "#3c8dbc", //Primary (light-blue)
              borderColor: "#3c8dbc" //Primary (light-blue)
            }
          ],
          editable: true,
          droppable: true, // this allows things to be dropped onto the calendar !!!
          drop: function (date, allDay) { // this function is called when something is dropped

            // retrieve the dropped element's stored Event Object
            var originalEventObject = $(this).data('eventObject');

            // we need to copy it, so that multiple events don't have a reference to the same object
            var copiedEventObject = $.extend({}, originalEventObject);

            // assign it the date that was reported
            copiedEventObject.start = date;
            copiedEventObject.allDay = allDay;
            copiedEventObject.backgroundColor = $(this).css("background-color");
            copiedEventObject.borderColor = $(this).css("border-color");

            // render the event on the calendar
            // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
            $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

            // is the "remove after drop" checkbox checked?
            if ($('#drop-remove').is(':checked')) {
              // if so, remove the element from the "Draggable Events" list
              $(this).remove();
            }

          }
        });

        /* ADDING EVENTS */
        var currColor = "#3c8dbc"; //Red by default
        //Color chooser button
        var colorChooser = $("#color-chooser-btn");
        $("#color-chooser > li > a").click(function (e) {
          e.preventDefault();
          //Save color
          currColor = $(this).css("color");
          //Add color effect to button
          $('#add-new-event').css({"background-color": currColor, "border-color": currColor});
        });
        $("#add-new-event").click(function (e) {
          e.preventDefault();
          //Get value and make sure it is not null
          var val = $("#new-event").val();
          if (val.length == 0) {
            return;
          }

          //Create events
          var event = $("<div />");
          event.css({"background-color": currColor, "border-color": currColor, "color": "#fff"}).addClass("external-event");
          event.html(val);
          $('#external-events').prepend(event);

          //Add draggable funtionality
          ini_events(event);

          //Remove event from text input
          $("#new-event").val("");
        });
      });
    </script>

  </body>
</html>