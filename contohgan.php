<section class="content">
        <div class="row">
          <div class="col-12">
            <!-- Custom Tabs -->
            <div class="card">
              <div class="card-header d-flex p-0">
                <h3 class="card-title p-3">User</h3>
                <ul class="nav nav-pills ml-auto p-2">
                  <li class="nav-item"><a class="nav-link" href="admin" >Admin</a></li>
                  <li class="nav-item"><a class="nav-link active" href="pelamar" >User</a></li>
                </ul>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">
                  <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr class="text-black">
                    <th class="col-sm-0">No.</th>
                    <th class="col-sm-0">ID. Pelamar</th>
                    <th class="col-sm-0">Username</th>
                    <th class="col-sm-0">Nama</th>
                    <th class="col-sm-0">Privilege</th>
                    <th style="text-align: center;">Aksi</th>
                  </tr>
                </thead>

                <tbody>
         <?php
                $no = 1;
                foreach ($dataUser as $user) 
                { ?>
                  <tr>
                      
                <td><?php echo $no++; ?></td>
                <td><?php echo $user -> id_pelamar; ?></td>
                <td><?php echo $user -> username; ?></td>
                <td><?php echo $user -> nama; ?></td>
                <td><?php echo $user -> privilege; ?></td>
                <td class="text-center" style="min-width:20px;">
                       <button type="button" data-toggle="modal" data-target="#edit-data" class="btn btn-warning btn-sm" class="glyphicon glyphicon-repeat">Ubah</button>
                     <button type="button" data-toggle="modal" data-target="#hapus-data" class="btn btn-danger btn-sm" class="glyphicon glyphicon-repeat">Delete</button>
                </td>
              </tr>
       <?php } ?>
              </tbody>
              </table>
                </div>
                <!-- /.tab-content -->
              </div><!-- /.card-body -->
            </div>
            <!-- ./card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
        <!-- END CUSTOM TABS -->    </section>