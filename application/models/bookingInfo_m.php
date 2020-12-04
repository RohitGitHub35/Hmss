<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

	class bookingInfo_m extends CI_Model{

        public function num_rows() {
            $q = $this->db->select()
                      ->from('room_booking_info')
                      //->where('isactive', 1)
                      ->get();
            return $q->num_rows();
        }

        public function getAllBookedRoom($params){
            if($params['queryString'] != null || $params['queryString'] != '') {
                $this->db->like('id',$params['queryString']);
            }
            
            // $result = $this->db->get_where('room_booking_info',  LIMIT, OFFSET)->result_array();
            // return $result;
            $this->db->select('*');
            $this->db->from('room_booking_info');
            $this->db->order_by("id", "desc");
            $this->db->limit(LIMIT, OFFSET);
            $result = $this->db->get()->result_array();;
            return $result;
            
        }

    }
    
 ?>   