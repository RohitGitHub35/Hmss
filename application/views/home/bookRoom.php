<?php $this->load->view('common/header');?>


<div class="container">
    <h3 class="pt-4 pb-4">Room</h3>

    <?php if(!empty($rooms)) { 
        foreach($rooms as $room) {
    ?>      
    <div class="row">
        <div class="col-sm-4">
            <?php if(!empty($room['roomimage'])) { 
                ?>
                <img src="<?php echo base_url('public/uploads/room/newimage/'.$room['imagename']); ?>" width="300" height="180">
            <?php }else {?>
                <img src="<?php echo base_url('public/uploads/room/no_image.jpg'); ?>" width="300" height="180">
            <?php }?>
        </div>
        
        <div class="col-sm-6">
            <p class="bg-light pt-2 pb-2 pl-3">
                <a href="#" class="text-muted text-uppercase"><?php echo $room['roomtype'];?></a>
            </p>
            <h4 class="roomDetails text-muted">
                <?php echo $room['roomdetails'];?>
            </h4>
            <p class="text-muted" style="font-size:15px; color: #b8b8b8;">Area <?php echo $room['area'];?> </p>
            <p><a href="#" class="readMore" onclick="room.readMoreModal(<?php echo $room['id'];?>);">read more</a></p> 

        </div>   

        <div class="col-sm-2" style="text-align:center;"> 
        
            <div class="inrPrice"><p style="">INR <span class="hPrice"><?php echo $room['price'];?> </span>
                <span style="font-size:13px !important;">per night</span> </p>
            </div>
            <a href="<?php echo base_url().'home/home/roomBookDetails/'.$room['id']?>" target="_blank" style="text-decoration: none; color: #ffff;">
                <button type="button" class="btn btn-secondary btn-sm" >Book Now</button>
            </a>
        </div>
    </div>

    <?php
        }     
    }
    ?> 

</div>
<div class="container">
    <?php echo $this->pagination->create_links(); ?>
</div>    

    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle"><?php echo $room['roomtype'];?></h5>
                    
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body"> 
                    <div class="row">
                        <div class="col-sm-5">
                            <img src="<?php echo base_url('public/uploads/room/newimage/Best_Available_Rate.jpg'); ?>">
                        </div>
                        <div class="col-sm-7">
                            <?php if($room['roomtype'] === "Super Delux Room"){ ?>
                            <ul class="list-group list-group-flush">                                      
                                <li class="list-group-item">Express Check-Ins and Check Outs.</li>
                                <li class="list-group-item">All major Credit Cards accepted.</li>
                                <li class="list-group-item">24 Hrs Room Service.</li>
                                <li class="list-group-item">House Doctor on Call.</li>
                                <li class="list-group-item">All Rooms with 24 hrs Hot & Cold running Water with Bath Tubs.</li>
                                <li class="list-group-item">Shoe cleaning facility, Shoe Horn & Slippers.</li>
                                <li class="list-group-item">A/C (with remote control). </li>
                                <li class="list-group-item">DVD Player, Complimentary DVD/VCD/CD on request.</li>
                                <li class="list-group-item">Complimentary Iron & Iron Board Facility.</li>
                                <li class="list-group-item">Telephones.</li>
                                <li class="list-group-item">Tea & Coffee Maker with Tea Coffee sugar milk sachet complimentary.</li>
                                <li class="list-group-item">Complimentary Hi-Speed Wi-Fi Connectivity.</li> 
                            </ul>    
                            <?php }  else if ($room['roomtype'] === "Delux Room") {?>
                            <ul class="list-group list-group-flush">        
                                <li class="list-group-item">Express Check-Ins and Check Outs.</li>
                                <li class="list-group-item">All major Credit Cards accepted.</li>
                                <li class="list-group-item">24 Hrs Room Service.</li>
                                <li class="list-group-item">House Doctor on Call.</li>
                                <li class="list-group-item">All Rooms with 24 hrs Hot & Cold running Water with Bath Tubs.</li>
                                <li class="list-group-item">Shoe cleaning facility, Shoe Horn & Slippers.</li>
                                <li class="list-group-item"> A/C (with remote control). </li>
                                <li class="list-group-item"> Telephones.</li>
                                <li class="list-group-item">Tea & Coffee Maker with Tea Coffee sugar milk sachet complimentary.</li>
                                <li class="list-group-item">Complimentary Hi-Speed Wi-Fi Connectivity.</li> 
                            
                            </ul>
                            <?php } else {?>
                                <ul class="list-group list-group-flush">        
                                <li class="list-group-item">Express Check-Ins and Check Outs.</li>
                            </ul>
                            <?php } ?>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
    </div>

<?php $this->load->view('common/footer');?>

<script type="text/javascript">
// function roomModalOpen() {
//     $("#exampleModalCenter").modal("show");
//     var id = <?php echo $room['id']; ?>;
//     $.ajax({
//             url : '<?php echo base_url('user/User_Login/regUser')?>',
//             type : 'POST',
//             data : {'id':id},
//             data : $(this).serializeArray(),
//             dataType : 'json',
//             success : function(response){
//                 console.log(response);
//                 if(response['status']){
                    
//                 } else {
                    
//                 }

                
//             }
// 		});
// }

</script>