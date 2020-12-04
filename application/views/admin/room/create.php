<?php $this->load->view('admin/header');?>

<script src="<?php echo base_url();?>public/admin/js/room.js"></script>
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h3 class="m-0 text-dark"><strong>Room</strong></h3>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url().'admin/home/index';?>">Home</a></li>
              <li class="breadcrumb-item active"><a href="<?php echo base_url().'admin/Room/index';?>">Room</a></li>
              <li class="breadcrumb-item active"><a href="#">Create</a></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
                <div class="alert alert-danger error-div">
                </div>
            <div class="card">
                <div class="card-header">
                    <div class="card-title">
                       Create New Room
                    </div>    
               </div>
               <form enctype="multipart/form-data"  name="roomForm" id="roomForm" method="post" action="" >
                     <div class="card-body">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Room Type</label>
                                    <!-- <input type="text" name="roomtype" id="roomtype" value="" class="form-control"> -->
                                    <select name="roomtype" id="roomtype" class="form-control" onchange="room.loadRoomArea(); room.loadRoomNumber();" value="<?php echo set_value('roomtype');?>">
                                        
                                    </select>
                                </div>
                                <?php echo form_error('roomtype');?>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Room Number</label>
                                    <!-- <input type="text" name="roomnumber" id="roomnumber" value="" class="form-control" > -->
                                    <select name="roomnumber" id="roomnumber" class="form-control" value="<?php echo set_value('roomnumber');?>">
                                        <option value="">Select Room Number</option>
                                        
                                    </select>
                                </div>
                                <?php echo form_error('roomnumber');?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Beds</label>
                                    <input type="text" name="beds" id="beds" value="<?php echo set_value('beds');?>" class="form-control">
                                </div>
                                <?php echo form_error('beds');?>
                            </div>
                            <div class="col-6">
                                    <div class="form-group">
                                        <label>Capacity</label>
                                        <input type="text" name="capacity" id="capacity" value="<?php echo set_value('capacity');?>" class="form-control">
                                    </div>
                                    <?php echo form_error('capacity');?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Price</label>
                                    <input type="text" name="price" id="price" value="<?php echo set_value('price');?>" class="form-control">
                                </div>
                                <?php echo form_error('price');?>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Isactive</label>
                                    <select name="isactive" id="isactive" class="form-control" value="<?php echo set_value('isactive');?>">
                                        <option value="0">NO</option>
                                        <option value="1">YES</option>
                                    </select>
                                </div>
                                <?php echo form_error('isactive');?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Adult</label>
                                    <input type="text" name="adult" id="adult" value="<?php echo set_value('adult');?>" class="form-control">
                                </div>
                                <?php echo form_error('adult');?>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Child</label>
                                    <input type="text" name="child" id="child" value="<?php echo set_value('child');?>" class="form-control">
                                </div>
                                <?php echo form_error('child');?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Room Area</label>
                                    <select name="roomarea" id="roomarea" class="form-control" value="<?php echo set_value('roomarea');?>">
                                        <option value="">Select Room Area</option>
                                    </select>
                                </div>
                                <?php echo form_error('roomarea');?>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Image</label><br>
                                    <input type="file" name="roomImage" id="roomImage" style="word-wrap: normal;">
                                </div>
                               <?php echo (!empty($upload_error)) ? $upload_error : ''; ?> 
                                
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-6">
                                    <div class="form-group">
                                        <label>Room Details</label>
                                        <!-- <input type="text" name="roomdetails" id="roomdetails" value="" class="form-control"> -->
                                        <textarea class="form-control" rows="5" id="comment" name="roomdetails" id="roomdetails"></textarea>
                                    </div>
                                    <?php echo form_error('roomdetails');?>
                            </div>

                        </div>


                    </div>

                    <div class="card-footer">
                          <button name="submit" type="submitt" class="btn btn-primary" onclick="<?php echo base_url().'admin/room/create';?>">Submitt</button>
                          <input type="reset" value="Clear" class="btn btn-danger">
                          <a href="<?php echo base_url().'admin/room/index';?>" class="btn btn-secondary">Back</a>
                    </div>
                </form>  
              

            </div>

           
          </div>
          
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  


<?php $this->load->view('admin/footer');?>