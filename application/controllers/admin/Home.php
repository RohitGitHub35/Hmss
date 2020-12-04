<?php
defined('BASEPATH') OR exit('No direct script access allowed');

	class Home extends CI_Controller{
		
		function __construct() {
			parent::__construct();
			$admin = $this->session->userdata('admin');
			if (!$this->session->userdata('admin')) {
				$this->session->set_flashdata('msg', 'Your session has been expired');
				redirect(base_url().'admin/login/index');
			}
		}

		public function index(){
			$this->load->view('admin/dashboard');
		}


	}

?>