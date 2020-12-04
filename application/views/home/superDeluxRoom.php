<?php $this->load->view('common/header');?>

    <div class="container ml-5 mt-5">
        <h1 class="page-title left">SuperDelux Room
             <button type="button" class="btn btn-primary tarrif" data-toggle="modal" data-target="#exampleModalCenter">
                TARRIF
            </button>
        </h1>

        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">SuperDelux Room</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th scope="col">Room Type</th>
                            <th scope="col">Occupancy</th> 
                            <th scope="col">Rack Rate</th>                       
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">Delux Room</th>
                            <td>Single Occupancy</td>
                            <td>Rs 3000</td>
                        </tr>
                        <tr>
                            <th scope="row">Super Delux Room</th>
                            <td>Double Occupancy</td>
                            <td>Rs 4000</td>
                        </tr>
                        
                    </tbody>
                </table>

                </div>
                <!-- <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div> -->
                </div>
            </div>
        </div>




        <hr class="hrLine">
            <div class="card">    
                <div class="row">
                    <div class="room col-sm-6 col-md-7 mt-3">
                        <a href="<?php echo base_url('public/image/superDeluxRoom.jpg'); ?>" class="fancybox" data-fancybox-group="hotel">
                            <img src="<?php echo base_url('public/image/superDeluxRoom.jpg'); ?>" class="img-responsive" alt="Rooms in Yogi Executive" title="Rooms in Yogi Executive">
                        </a>
                    </div>

                    <div class="room col-sm-4 col-md-5 mt-3"><h6 style="margin-left: -20px;">Some more features are:</h6>		
                        
                            
                            <ul class="list-unstyled deluxRoomLink" style="list-style-type:square;"> 
                                <li>
                                    <a href="">Express Check-Ins and Check Outs.</a>
                                </li>
                                <li>
                                    <a href="">All major Credit Cards accepted.</a>
                                </li>
                                <li>
                                    <a href="">24 Hrs Room Service.</a>
                                </li>
                                <li>
                                    <a href="">House Doctor on Call.</a>
                                </li>
                                <li>
                                    <a href="">All Rooms with 24 hrs Hot & Cold running Water with Bath Tubs.</a>
                                </li>
                                <li>
                                    <a href="">Shoe cleaning facility, Shoe Horn & Slippers.</a>
                                </li>
                                <li>
                                    <a href="">A/C (with remote control).</a>
                                </li>
                                <li>
                                    <a href="">42" LCD / Plasma TV.</a>
                                </li>
                                <li>
                                    <a href="">DVD Player, Complimentary DVD/VCD/CD on request.</a>
                                </li>
                                <li>
                                    <a href="">Complimentary Iron & Iron Board Facility.</a>
                                </li>
                                <li>
                                    <a href="">Telephones.</a>
                                </li>
                                <li>
                                    <a href="">Tea & Coffee Maker with Tea Coffee sugar milk sachet complimentary.</a>
                                </li>
                                <li>
                                    <a href="">Complimentary Hi-Speed Wi-Fi Connectivity.</a>
                                </li>
                            </ul>
                    </div>
                </div>
            </div>
    </div>

<?php $this->load->view('common/footer');?>