<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

    class contactUs extends CI_Controller {

        public function index(){
            parent::__construct();
            $this->load->model('frontModel/frontRoomModel');
            
            $this->load->helper('url');
            $this->load->library('email');
        }

        public function saveContactUs() {
            $this->load->model('frontModel/contactUs_M');
            $userDetail = array();
            $userDetail = $this->input->post('data');
            if(empty($userDetail))
            {
                $return['error'] = true;
                $return['msg'] = "Please Try After Sometime";

                echo json_encode($return);
                return false;
            }
            $userDetail['isactive'] = 1;
            $userDetail['cd'] = date('Y-m-d H:i:s');
            $this->contactUs_M->saveUser($userDetail);

            $return['success'] = true;
            $return['msg'] = "Thanku For Registrations";

            echo json_encode($return);
        }


    }

?>    