<?php
defined('BASEPATH') OR exit('No direct script access allowed');

    class Room_Type_M extends CI_Model{

      
        public function getRoomTypeById($fkroomtypeid) {
            try{
                //$roomType = [];
                $this->db->select('id, roomtype');
                $array = array('id' => $fkroomtypeid, 'isactive' => ISACTIVE);
                $this->db->where($array);
                $roomType = $this->db->get('roomtype')->row_array();
            }catch(PDOException $e){
                http_response_code(500);
                exit;
            }
            return $roomType;
        }

        
       

        


    }

?>