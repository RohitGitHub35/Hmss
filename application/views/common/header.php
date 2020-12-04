<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="<?php echo base_url('public/js/jquery-3.5.1.slim.min.js');?>"></script>
	<script src="<?php echo base_url('public/js/jquery-3.5.1.min.js');?>"></script>

	<link rel="stylesheet" href="<?php echo base_url('public/css/css_min/bootstrap.min.css');?>">
	<link rel="stylesheet" href="<?php echo base_url('public/css/home/style.css');?>">
	<link rel="stylesheet" href="<?php echo base_url('public/css/home/custome.css');?>">

	<script src="<?php echo base_url('public/js/js_min/bootstrap.min.js');?>"></script>
	<script src="<?php echo base_url('public/js/js_min/jquery.fancybox.min.js');?>"></script>
	<script src="<?php echo base_url('public/js/room.js');?>"></script>

    <title>Paradise</title>
</head>
<body>
<header class="bg-light">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light pt-3 pb-3">
				<a class="navbar-brand" href="#">PARADISE</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse right-align" id="navbarSupportedContent">
					<ul class="navbar-nav headerLink ml-auto">
						<li class="nav-item active">
							<a class="nav-link" href="<?php echo base_url().'home/home/index'?>">HOME </a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url().'home/home/aboutUs'?>">ABOUT US</a>
						</li>
						 <!-- <li class="nav-item">
							<a class="nav-link" href="#">ROOMS</a>
                        </li>  -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            ROOM
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="<?php echo base_url().'home/home/deluxRoom'?>">Delux Room</a>
                                <a class="dropdown-item" href="<?php echo base_url().'home/home/superDeluxRoom'?>">Super Delux Room</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<?php echo base_url().'home/home/bookRoom'?>">Book Room</a>
                            </div>
                        </li>
    
						<!-- <li class="nav-item">
							<a class="nav-link" href="#">SERVICES</a>
						</li> -->
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url().'home/home/contactUs'?>">CONTACT US</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</header>
