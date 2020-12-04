<?php
defined('BASEPATH') OR exit('No direct script access allowed');

    class contactUs_M extends CI_Model {

        public function saveUser($userDetail) {
            $this->db->insert('contactus',$userDetail);
        }

    }


?>    