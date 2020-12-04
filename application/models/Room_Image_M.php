<?php
defined('BASEPATH') OR exit('No direct script access allowed');

    class Room_Image_M extends CI_Model{

      
        public function create($imageArray) {
            $this->db->insert('room_image',$imageArray);
        }

        public function getRoomImageId($id) {
            $sql = "SELECT ri.id FROM room_image AS ri WHERE ri.fkroomimgid = ?";
            $roomImageId = $this->db->query($sql, array($id))->row_array(); 
            return  $roomImageId;
        }
       
        public function update($roomImageId, $imageArray) {

            $this->db->where('id', $roomImageId);
            $this->db->update('room_image', $imageArray);
        }
        
        public function delete($id) {
            $this->db->where('id', $id);
            $this->db->delete('room_image');
        }


    }

?>