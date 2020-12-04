<?php
defined('BASEPATH') OR exit('No direct script access allowed');

    class frontRoomModel extends CI_Model{

        public function num_rows() { 
            $q = $this->db->select()
                      ->from('room')
                      ->where('isactive', 1)
                      ->get();
            return $q->num_rows();
        }

        public function getAllRoom($limit, $offset) {
            // $this->db->order_by('id', 'DESC');
            // $room = $this->db->get('room')->result_array();
            $sql = " select r.id as id, r.roomnumber as roomnumber, r.roomtype as roomtype, r.beds as beds, r.capacity as capacity, r.price as price,
                     r.roomdetails as roomdetails, r.isactive as isactive, r.adult as adult, r.child as child, r.area as area,
                     ri.imagepath as roomimage, ri.imagename as imagename
                     from room as r 
                     left join room_image as ri ON r.id = ri.fkroomimgid 
                     where r.isactive = ? 
                     and r.roomBook = ?
                     ORDER BY r.id Desc
                     limit ? 
                     offset ? ";
           
            $room = $this->db->query($sql, array(ISACTIVE, 0, $limit, $offset))->result_array(); 
            return $room;
        }

        public function getRoomById($id) {
            $this->db->select('r.id as id, r.roomnumber as roomnumber, r.roomtype as roomtype, r.beds as beds, r.capacity as capacity, r.price as price,
                                r.roomdetails as roomdetails, r.isactive as isactive, r.adult as adult, r.child as child, r.area as area,
                                ri.imagepath as roomimage, ri.imagename as imagename,
                                r.fkroomtypeid as fkroomtypeid, r.fkroomnumberid as fkroomnumberid, r.fkroomarea as roomareaid');
            
            $this->db->from('room as r');
            $this->db->join('room_image as ri', 'r.id = ri.fkroomimgid', 'left');
            $this->db->where('r.id', $id);
            $room = $this->db->get()->row_array();
            return $room;
        }

        public function create($room){
            $this->db->insert('room_booking_info',$room);
        }

        public function getLastRoomId() {
            $this->db->select('id');
            $this->db->order_by("id", "desc");
            $lastRoomId = $this->db->get('room_booking_info', 1)->row_array(); 
            return $lastRoomId;
        }   

        public function getCheckMailId($emailId) {
            $this->db->select('*');
            $this->db->from('room_booking_info');
            $this->db->like('column', $emailId);
            $email = $this->db->get()->result_array();
            return $email;
        }

        public function setRoomBook($id) {
            $this->db->set('roomBook', 1);
            $this->db->where('id', $id);
            $this->db->update('room');
        }
        public function checkRoomBooked($id) {
            $sql = "SELECT * FROM room where id = ? 
                    and roomBook = ? ";
           
            $room = $this->db->query($sql, array($id, 1 ))->result_array(); 
            return $room;
        }

    }

?>