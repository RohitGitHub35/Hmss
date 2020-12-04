<?php
defined('BASEPATH') OR exit('No direct script access allowed');

    class Room_Area_M extends CI_Model{

      
        public function getRoomAreaById($roomAreaId) {
            try{
                //$roomType = [];
                $this->db->select('id, area');
                $array = array('id' => $roomAreaId, 'isactive' => ISACTIVE);
                $this->db->where($array);
                $roomArea = $this->db->get('room_area')->row_array();
            }catch(PDOException $e){
                http_response_code(500);
                exit;
            }
            return $roomArea;
        }

        
       

        


    }

?>