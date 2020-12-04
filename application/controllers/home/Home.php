<?php
defined('BASEPATH') OR exit('No direct script access allowed');

	class Home extends CI_Controller{
		
		function __construct() {
			parent::__construct();
			$this->load->model('frontModel/frontRoomModel');
			$this->load->helper('url');
		}

		public function index(){
			$this->load->view('home/home');
		}
		public function aboutUs(){
			$this->load->view('home/aboutUs');
		}
		public function contactUs(){
			$this->load->view('home/contactUs');
		}
		public function deluxRoom(){
			$this->load->view('home/deluxRoom');
		}
		public function superDeluxRoom(){
			$this->load->view('home/superDeluxRoom');
		}
		public function bookRoom(){
			$this->load->library('pagination');
            $config = [
                'base_url' => base_url('home/home/bookRoom'),
                'per_page' => 3,
                'total_rows' => $this->frontRoomModel->num_rows(),
                'full_tag_open' => '<ul class="pagination">',
                'full_tag_close' => '</ul>',
                'next_tag_open' => '<li class="page-item">',
                'next_tag_close' => '</li>',
                'prev_tag_open' => '<li class="page-item">',
                'prev_tag_close' => '</li>',
                'num_tag_open' => '<li class="page-item">',
                'num_tag_close' => '</li>',
                'cur_tag_open' => '<li class="page-item"><a class="active">',
                'cur_tag_close' => '</a></li>',

			];
			$this->pagination->initialize($config);
            if ($this->uri->segment(4) === FALSE) {
                $room_id = 0;
            } else {
                $room = $this->uri->segment(4);
                $room_id = (double)$room;
            }
            if ($room_id == null) {
                $room_id = 0;  
            } 
            
            $rooms = $this->frontRoomModel->getAllRoom($config['per_page'], $room_id);
            $data = [];
            $data['rooms'] = $rooms;

            $this->load->view('home/bookRoom', $data);
		}

		public function roomBookDetails($id){
			$rooms = $this->frontRoomModel->getRoomById($id);
            $data = [];
            $data['rooms'] = $rooms;

			$this->load->view('home/roomBookDetails',$data);
		}

	}

?>