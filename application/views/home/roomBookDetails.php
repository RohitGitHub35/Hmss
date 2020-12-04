<?php $this->load->view('common/header');?>

<script src="<?php echo base_url('public/js/roomBook.js');?>"></script>

    <div  role="main" class="form-all">
        <div class="form-section page-section">
            <div id="cid_14" class="form-input-wide" data-type="control_head">
                <div class="form-header-group  header-large">
                    <!-- <div class="header-text httal htvam">
                        <h5 id="header_14" class="form-header" data-component="header">
                        Book a Room
                        </h5>
                    </div>  -->
                    <div id="titleContent" class="checkout-title">
                        <span>Reservations</span>
                    </div>
                    
                </div>
                    <div class="form-header-group  header-large">
                            <div class="row">
                                    <div class="col-sm-4">
                                        <img src="<?php echo base_url('public/uploads/room/'.$rooms['imagename']); ?>" width="169" height="113">
                                    </div> 
                                    <div class="col-sm-8">
                                        <p class="bg-light pt-2 pb-2 pl-3">
                                            <a href="#" class="text-muted text-uppercase"><?php echo $rooms['roomtype'];?></a>
                                        </p>
                                        <ul class="ulContent" >
                                             <li class="liContent">
                                                <span>Complimentary WiFi</spane>
                                            </li>
                                            <li class="liContent">
                                                <span>Beds</spane><span>&nbsp;&nbsp;<?php echo $rooms['beds'];?></spane>
                                            </li>
                                            <li class="liContent">
                                                <span>Adults</spane><span>&nbsp;&nbsp;<?php echo $rooms['adult'];?></spane>
                                            </li>    
                                        </ul>
                                    </div>   
                            </div> 
                    </div>      
            </div>
            <div class="alert alert-success success-div" style="margin:10px 0px 10px;">
            </div>
            <div class="alert alert-danger error-div" style="margin:10px 0px 10px;">
                
            </div>
            <form>
                <div class="form-group row roomBook" hidden>
                    <label for="id" class="col-sm-2 col-form-label">Id</label>
                    <div class="col-sm-8">
                    <input type="text" class="form-control"  id="id" value="<?php echo $rooms['id'];?>" placeholder="">
                    </div>
                </div>
                <div class="form-group row roomBook">
                    <label for="firstName" class="col-sm-2 col-form-label">First Name</label>
                    <div class="col-sm-8">
                    <input type="text" class="form-control"  id="firstName" value="" placeholder="First Name">
                    </div>
                </div>
                <div class="form-group row roomBook">
                    <label for="lastName" class="col-sm-2 col-form-label">Last Name</label>
                    <div class="col-sm-8">
                    <input type="text" class="form-control"  id="lastName" value="" placeholder="Last Name">
                    </div>
                </div>
                <div class="form-group row roomBook">
                    <label for="email" class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-8">
                    <input type="text" class="form-control"  id="email" value="" placeholder="Email Id">
                    </div>
                </div>
                <div class="form-group row roomBook">
                    <label for="checkIn" class="col-sm-2 col-form-label">Check In</label>
                    <div class="col-sm-8">
                    <input type="date" id="check-in" class="checkin" name="check-in">
                    </div>
                </div>
                <div class="form-group row roomBook">
                    <label for="checkOut" class="col-sm-2 col-form-label">Check Out</label>
                    <div class="col-sm-8">
                    <input type="date" id="check-out" class=" check-out checkin" name="check-out" onchange="roomBook.setTotal();">
                    </div>
                </div>
                <div class="form-group row roomBook">
                    <label for="adult" class="col-sm-2 col-form-label">Adults</label>
                    <div class="col-sm-8">
                        <select id="adult" name="adult" class="form-control" style="width: auto; min-width: 37%;">
                            
                        </select>
                    </div>
                </div>
                <div class="form-group row roomBook">
                    <label for="child" class="col-sm-2 col-form-label">Child</label>
                    <div class="col-sm-8">
                        <select id="child" name="child" class="form-control" style="width: auto; min-width: 37%;">
                        </select>
                    </div>
                </div>
                <div class="form-group row roomBook">
                    <label for="arrivalTime" class="col-sm-2 col-form-label">Estimated Arrival Time</label>
                    <div class="col-sm-8">
                        <select id="arrivalTime" name="arrivalTime" class="form-control" style="width: auto; min-width: 37%;">
                        </select>
                    </div>
                </div>
                <div class="form-header-group  header-large">
                    <div data-align="auto" class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField" style="border: solid 1px #cbcdc2">
                
                            <div class="col-lg-9 col-md-9 col-xs-9 col-sm-9">
                                <span class="totaP">Total Price<span>
                            </div> 
                            <div class="col-lg-3 col-md-3 col-xs-3 col-sm-3">
                                <div class="totaP" style="float:right;">INR &nbsp;<span class="price"><?php echo $rooms['price'];?></span></div>
                            </div>   
                    </div> 
                </div>    
                
                <li class="form-line" data-type="control_button" id="id_13">
                    <div id="cid_13" class="form-input-wide" data-layout="full">
                            <div data-align="auto" class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField">
                               <!-- <button id="input_13" type="submit" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">
                                Book Now
                                </button> -->
                                
                                <a href="#" style="text-decoration: none; color: #ffff;">
                                    <button type="button" class="btn btn-secondary btn-sm bookRoomBtn" onclick="roomBook.bookRoom();">Book Now</button>
                                </a>
                                
                            </div>
                    </div>
                </li>
            </form>
        </div>
    </div>

    <div class="modal fade modal-success in" id="newUserPopup" pincodepopupdata-keyboard="false" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: block;">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title position-relative" id="myModalLabel">Paradise
						<i class="fa fa-times actionButton1" aria-hidden="true" id="cancelButton" data-dismiss="modal"></i>
					</h4>
				</div>
				<div class="modal-body">
                     <h1 class="display-3">Thank You!</h1>
                     <p class="lead"> 
                        <strong>Please check your email</strong> 
                        All information sent on your mail
                     </p>
							
	
				</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-success actionButton" id="ok" onclick="roomBook.relocateHome();">Ok</button>				
						<!-- <button type="button" class="btn checkoutBtn" id="cancelButton" data-dismiss="modal">No Thanks</button> -->
					</div>
			</div>
		</div>
	</div>
			
			
				

<?php $this->load->view('common/footer');?>





<script>
    $(document).ready(function(){
           var adult = '<?php echo $rooms['adult'];?>';
           var html;
           for(var i = 1; i <= adult; i++) {
                html += ('<option value="' + i + '">' + i + '</option>');
           }
           $('#adult').append(html); 

           var child = '<?php echo $rooms['child'];?>';
           var htmlC;
           for(var i = 1; i <= child; i++) {
                htmlC += ('<option value="' + i + '">' + i + '</option>');
           }
           $('#child').append(htmlC); 

           var checkChild = '<?php echo $rooms['child'];?>';
           if(checkChild == null || checkChild == '' || checkChild == undefined) {
                $('#child').prop("disabled", true);
           }

           var arrivalTime = '12';
           var AM = 'AM';
           var PM = 'PM';
           var htmlAT;
           $('#arrivalTime').append($('<option/>', {
                value : "",
                text : "Select"
            }));
           for(var i = 1; i <= arrivalTime; i++) {
                htmlAT += ('<option value="' + i + ' ' + AM + '">' + i + ' ' + AM + '</option>');
           }
           for(var i = 1; i <= arrivalTime; i++) {
                htmlAT += ('<option value="' + i + ' ' + PM + '">' + i + ' ' + PM + '</option>');
           }
           $('#arrivalTime').append(htmlAT); 


    });
</script>