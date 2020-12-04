<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

	class availableRoom_m extends CI_Model{

		public function getAllAvailableRoom($params){
			    if($params['queryString'] != null || $params['queryString'] != '') {
                    $this->db->like('id',$params['queryString']);
                }
                $ROOMBOOK = 0;
                $result = $this->db->get_where('room', array('isactive' => ISACTIVE, 'roomBook' => $ROOMBOOK), LIMIT, OFFSET)->result_array();
                return $result;
                
		}


	}

?>