    <div class="container-fluid py-4">
      <div class="row">
                    <div class="col-md-6">
                        <h1 class="h3 mb-2 text-white">Add Customer</h1>
                    </div>
                    <div class="col-md-6">
                        <button type="button" class="btn btn-info m-1 float-right btn-sm text-white" data-bs-toggle="modal" data-bs-target="#addModal"><i class="fas fa-user-plus fa-lg text-white"></i>&nbsp;&nbsp;Booking</button>
                    </div>
                    
                </div>
      <div class="row">
        <div class="col-12">
          <div class="card mb-4">
            <div class="card-header pb-0">
              <h6>Add Customer</h6>
            </div>
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
                <table class="table align-items-center mb-0" >
                  <thead>
                      <tr>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Customer Name</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Age</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Gender</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Address</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>

                    </tr>
                  </thead>
                  <tbody>
                    <?php foreach ($data as $row):?>
                    <tr>
                      <td>
                        <div class="d-flex px-2 py-1">
                                  <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm"><?php echo $row['customer_name'];?></h6>
                          </div>
                        </div>
                      </td>
                      <td>
                        <div class="d-flex px-2 py-1">
                                  <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm"><?php echo $row['age'];?></h6>
                        </div>
                      </div>
                        
                      </td>
                      <td>
                        <div class="d-flex px-2 py-1">
                                  <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm"><?php echo $row['gender'];?></h6>
                        </div>
                      </div>
                        
                      </td>
                      <td>
                       <div class="d-flex px-2 py-1">
                                  <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm"><?php echo $row['address'];?></h6>
                        </div>
                        </div>
                      </td>
                      <td class="d-flex  justify-content-center">
                        <a href="" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal<?php echo  $row['cust_id'];?>"><i class="fas fa-edit"></i>&nbsp;
                          Edit
                        </a> &nbsp; &nbsp;
                        <a href="<?php echo site_url('Admin/delete_booking/'.$row['cust_id'].'')?>" class="btn btn-danger" data-toggle="tooltip" data-original-title="Edit user">
                          <i class="fas fa-trash"></i> &nbsp;
                          Delete
                        </a>
                      </td>
                    </tr>
                    <?php endforeach; ?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
  
<!-- The Modal -->
<div class="modal" id="addModal">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Add New Booking</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <form action="<?= site_url('Admin/add_new_booking')?>" method="post" enctype= "multipart/form-data">
        <div class="form-group">
            <label class="form-control-label">Customer name:</label>
            <input type="text" name="customer_name" class="form-control">
        </div>
        <div class="form-group">
            <label class="form-control-label">Age:</label>
            <input type="text" name="age" class="form-control">
        </div>
          <div class="form-group">
            <label class="form-control-label">Gender:</label>
            <input type="text" name="gender" class="form-control">
        </div>
        <div class="form-group">
            <label class="form-control-label">Address:</label>
            <input type="text" name="address" class="form-control">
        </div>
        
          
        
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Save</button>
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>
        </form>
    </div>
  </div>
</div>

<!-- Update Student -->
<?php foreach ($data as $row):?>
<div class="modal" id="myModal<?php echo $row['cust_id'];?>">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Update Booking</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <form action="<?= site_url('Admin/update_booking')?>" method="post" enctype= "multipart/form-data">
          <div class="form-group">
            <input type="hidden" name="cust_id" value="<?php echo $row['cust_id'];?>" class="form-control">
        </div>
        <div class="form-group">
            <label class="form-control-label">Customer Name:</label>
            <input type="text" name="customer_name" value="<?php echo $row['customer_name'];?>" class="form-control">
        </div>
        <div class="form-group">
            <label class="form-control-label">Age:</label>
            <input type="text" name="age" value="<?php echo $row['age'];?>" class="form-control">
        </div>
          <div class="form-group">
            <label class="form-control-label">Gender:</label>
            <input type="text" name="gender" value="<?php echo $row['gender'];?>" class="form-control">
        </div>
        <div class="form-group">
            <label class="form-control-label">Address:</label>
            <input type="text" name="address" value="<?php echo $row['address'];?>" class="form-control">
        </div>

          
          
        
      

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Update</button>
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>
        </form>
    </div>
  </div>
</div>
<?php endforeach;?>