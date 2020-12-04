<?php $this->load->view('common/header');?>
<body>

	<div id="carouselExampleInterval" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active" data-interval="10000">
			<img src="
				<?php echo base_url('public/image/room.jpg');?>" class="d-block w-100" alt="">
			</div>
			<div class="carousel-item" data-interval="2000">
				<img src="
					<?php echo base_url('public/image/jungle-vilas1.jpg');?>" class="d-block w-100" alt="">
				</div>
				<!-- <div class="carousel-item"><img src="..." class="d-block w-100" alt="..."></div> -->
			</div>
			<a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
	</div>

	<div class="container pt-4 pb-4">
		<h1 class="pb-3 pt-4" style="font-size: 2em; word-spacing: 2px; font-weight: bold;"> OUR ACCOMMODATIONS </h1>
		<p class="text-muted">
			Experience culture, charm and hospitality blended with contemporary facilities and services of at 
			Paradise Group of Hotels, the finest business-cum-leisure hotel in Navi Mumbai. 
			Strategically located in the heart of Navi Mumbai, Paradise Hotels are in close proximity to 
			corporate parks of Navi Mumbai as well as popular tourist attractions for leisure travellers. 
			Indulge in a multifaceted experience in cuisine, entertainment and relaxation at Paradise Executive and 
			Yogi Metropolitan. Discover a home away from home, and enjoy luxurious amenities which ensures guests 
			enjoy a comfortable and unforgettable stay.
		</p>
	</div>

	<div class="container row  ml-5">
		<div class="room col-sm-6 col-md-7">
			<a href="<?php echo base_url('public/image/exec_room.png'); ?>" class="fancybox" data-fancybox-group="hotel">
				<img src="<?php echo base_url('public/image/exec_room.png'); ?>" class="img-responsive" alt="Rooms in Yogi Executive" title="Rooms in Yogi Executive">
			</a>
		</div>

		<div class="room col-sm-6 col-md-5"><h4>PARADISE EXECUTIVE</h4>		
			<p align="justify" class="bookp text-muted">
				Paradise Hotels, Navi Mumbai Rooms offer you luxury &amp; comfort. The rooms offer views of the locale and with excellent in-room amenities making your stay comfortable and a memorable one. Luxury as a unique, memorable and personal experience is core to Yogi tradition &amp; philosophy, since it's inception in 1973.
			</p>

			<p class="custom-center-align-btn">
				<a href="" class="btn btn-primary custom-book-btn" target="_blank" id="button">Book Now</a>
			</p>
		</div>
	</div>
	
</body>

<?php $this->load->view('common/footer');?>

