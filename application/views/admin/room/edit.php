<?php $this->load->view('admin/header');?>


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
              <li class="breadcrumb-item active"><a href="#">Edit</a></li>
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
            <div class="card">
                <div class="card-header">
                    <div class="card-title">
                       Edit New Room
                    </div>    
               </div>
               <form enctype="multipart/form-data"  name="roomForm" id="roomForm" method="post" action="" >
                    <div class="card-body">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group" hidden>
                                    <label>Id</label>
                                     <input type="text" name="id" id="id" value="<?php echo $room['id'];?>" class="form-control"> 
                                </div>
                                <div class="form-group">
                                    <label>Room Type</label>
                                    <!-- <input type="text" name="roomtype" id="roomtype" value="" class="form-control"> -->
                                    <select name="roomtype" id="roomtype" class="form-control" onchange="roomEdit.loadRoomArea(); roomEdit.loadRoomNumber();" value="<?php echo set_value('roomtype')?>">
                                         
                                    </select>
                                </div>
                                <?php echo form_error('roomtype');?>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Room Number</label>
                                    <!-- <input type="text" name="roomnumber" id="roomnumber" value="" class="form-control" > -->
                                    <select name="roomnumber" id="roomnumber" class="form-control" value="<?php echo set_value('roomnumber');?>">
                                        
                                    </select>
                                </div>
                                <?php echo form_error('roomnumber');?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Beds</label>
                                    <input type="text" name="beds" id="beds" value="<?php echo set_value('beds', $room['beds']);?>" class="form-control">
                                </div>
                                <?php echo form_error('beds');?>
                            </div>
                            <div class="col-6">
                                    <div class="form-group">
                                        <label>Capacity</label>
                                        <input type="text" name="capacity" id="capacity" value="<?php echo set_value('capacity', $room['capacity']);?>" class="form-control">
                                    </div>
                                    <?php echo form_error('capacity');?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Price</label>
                                    <input type="text" name="price" id="price" value="<?php echo set_value('price', $room['price']);?>" class="form-control">
                                </div>
                                <?php echo form_error('price');?>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Isactive</label>
                                    <select name="isactive" id="isactive" class="form-control">
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
                                    <input type="text" name="adult" id="adult" value="<?php echo set_value('adult', $room['adult']);?>" class="form-control">
                                </div>
                                <?php echo form_error('adult');?>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Child</label>
                                    <input type="text" name="child" id="child" value="<?php echo set_value('child', $room['child']);?>" class="form-control">
                                </div>
                                <?php echo form_error('child');?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Room Area</label>
                                    <select name="roomarea" id="roomarea" class="form-control" value="<?php echo set_value('roomarea', $room['roomareaid']);?>">
                                        
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

                               <?php if($room['roomimage'] != '' || $room['roomimage'] != null && file_exists('./public/uploads/room/'.$room['imagename'].'.'.jpg)) { ?>
                                    <img src="<?php echo $room['roomimage']?>" style="width:30%; height:40%;">
                               <?php } else { ?>
                                    <img src="<?php echo base_url().'/public/uploads/room/No-image.png' ?>" style="width:30%; height:40%;">
                               <?php } ?>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6">
                                    <div class="form-group">
                                        <label>Room Details</label>
                                        <!-- <input type="text" name="roomdetails" id="roomdetails" value="" class="form-control"> -->
                                        <textarea class="form-control" rows="5"  name="roomdetails" id="roomdetails" value=""><?php echo  $room['roomdetails'];?></textarea>
                                    </div>
                                    <?php echo form_error('roomdetails');?>
                                    
                            </div>
                        </div>
                    </div>

                    <div class="card-footer">
                          <button name="submit" type="submitt" class="btn btn-primary" onclick="<?php echo base_url().'admin/room/edit/'.$room['id'];?>">Submitt</button>
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


<script>
    $('document').ready(function(){
        roomEdit.init();
    });
     var roomEdit = new RoomEdit();

     function RoomEdit() {
        var basePath  = window.location.origin;
        this.init = init;
        this.setData = setData;
        this.loadRoomType = loadRoomType;
        this.loadRoomArea = loadRoomArea;
        this.loadRoomNumber = loadRoomNumber;
        
         function init(){
            loadRoomType();
            
         }

         function loadRoomType() { 
            $.ajax({
                url : basePath + "/Hmss/" + "admin/room/getRoomType",
                type : 'POST',
                dataType : 'json',
                success : function(response){
                    if(response.length != 0){
                        var html;
                        $('#roomtype').append($('<option/>', {
                            value : "",
                            text : "Select Room Type"
                        }));
                        $.each(response, function (i, value) {
                            
                            html += ('<option value="' + value.id + '">' + value.roomtype + '</option>');

                        });
                        $("#roomtype").append(html);
                        setData();
                    } 
                }

            });

            } 

         function setData(){
                var roomTypeId = "<?php echo $room['fkroomtypeid'];?>";
                $('#roomtype').val(roomTypeId);
                               
                loadRoomNumber();
                loadRoomArea();
            
                var roomIsactive = "<?php echo $room['isactive'];?>";
                $('#isactive').val(roomIsactive);
               
         }

        function loadRoomArea() {
            var roomTypeId = $("#roomtype").val();
            var html;
            if(roomTypeId == null || roomTypeId == undefined || roomTypeId == "") {
                $("#roomarea").empty();
                html += ('<option value="' + "" + '">' + "Select Room Area" + '</option>');
                $("#roomarea").append(html);
                return false; 
            }
            $.ajax({
                url : basePath + "/Hmss/" + "admin/room/getRoomArea/"+roomTypeId,
                type : 'POST',
                data : {'roomTypeId': roomTypeId},
                dataType : 'json',
                success : function(response){
                    $("#roomarea").empty();
                    $('#roomarea').append($('<option/>', {
                            value : "",
                            text : "Select Room Area"
                    }));
                    
                    if(response.length != 0){
                        $(".error-div").hide();
                       
                        $.each(response, function (i, value) {
                            html += ('<option value="' + value.id + '">' + value.area + '</option>');
            
                        });
                        $("#roomarea").append(html);
                        var roomAreaId = "<?php echo $room['roomareaid'];?>";
                        if(roomAreaId != null || roomAreaId != undefined || roomAreaId != ''){
                            $('#roomarea').val(roomAreaId);
                        }
                    } else {
                        html += ('<option value="' + "" + '">' + "Select Room Area" + '</option>');
                        var msg = "Please Select Another Room Type";
                        $(".error-div").show().html(msg);
                        $("#roomarea").append(html);
                    }
                }

            });
            
         } 


    function loadRoomNumber() { 
        var roomtype = $('#roomtype').val();
        var html;
        if(roomtype == null || roomtype == undefined || roomtype == "") {
            $("#roomnumber").empty();
            html += ('<option value="' + "" + '">' + "Select Room Number" + '</option>');
            $("#roomnumber").append(html);
            return false; 
        }
		$.ajax({
			url : basePath + "/Hmss/" + "admin/room/getRoomNumber/"+roomtype,
			type : 'POST',
			dataType : 'json',
			success : function(response){
                $("#roomnumber").empty();
				if(response.length != 0){                  
                    var html;
                    var roomNumberId = "<?php echo $room['fkroomnumberid'];?>";
                    if(roomNumberId != null || roomNumberId != "" || roomNumberId != undefined){
                        $('#roomnumber').append($('<option/>', {
                            value : "roomNumberId",
                            text : "<?php echo $room['roomnumber'];?>"
                        }));
                    }
                    $('#roomnumber').append($('<option/>', {
                            value : "",
                            text : "Select Room Number"
                    }));
                        
                    $.each(response, function (i, value) {
                        html += ('<option value="' + value.id + '">' + value.roomNumber + '</option>');
        
                    });
                    $("#roomnumber").append(html);
                } else {
                    html += ('<option value="' + "" + '">' + "Select Room Number" + '</option>');
                    var msg = "Please Select Another Room Type";
                    $(".error-div").show().html(msg);
                    $("#roomnumber").append(html);
                } 
			}

		});
	
        } 



     }
     

    

</script>