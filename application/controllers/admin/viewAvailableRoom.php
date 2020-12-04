<?php
defined('BASEPATH') OR exit('No direct script access allowed');

	class viewAvailableRoom extends CI_Controller{
		
		function __construct() {
			parent::__construct();
			$admin = $this->session->userdata('admin');
			if (!$this->session->userdata('admin')) {
				$this->session->set_flashdata('msg', 'Your session has been expired');
				redirect(base_url().'admin/login/index');
            }
            $this->load->model('availableRoom_m');
		}

		public function index(){
            $queryString = $this->input->get('q');
            $params['queryString'] = $queryString;
            $availableRoom = $this->availableRoom_m->getAllAvailableRoom($params);
            $data['room'] = $availableRoom;
			$this->load->view('admin/room/availableRoom', $data);
		}
        public function availableRoom(){
			$this->load->view('admin/room/availableRoom');
		}


	}

?>