<?php
defined('BASEPATH') OR exit('No direct script access allowed');

	class bookinginfo extends CI_Controller {

        function _construct() {
            parent::_construct();
                $admin = $this->session->userdata('admin');
                if (!$this->session->userdata('admin')) {
                    $this->session->set_flashdata('msg', 'Your session has been expired');
                    redirect(base_url().'admin/login/index');
                
                }
                $this->load->model('bookingInfo_m');
        }
        public function index() {
            $this->load->model('bookingInfo_m');

            $this->load->library('pagination');
            $config = [
                'base_url' => base_url('admin/bookinginfo/index'),
                'per_page' => 3,
                'total_rows' => $this->bookingInfo_m->num_rows(),
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

            $queryString = $this->input->get('q');
            $params['queryString'] = $queryString;
            $availableRoom = $this->bookingInfo_m->getAllBookedRoom($params);
            $data['room'] = $availableRoom;
			$this->load->view('admin/room/bookingInfo', $data);
        }
        public function bookingInfoView(){
			$this->load->view('admin/room/bookingInfo');
		}

    }    

 ?>   